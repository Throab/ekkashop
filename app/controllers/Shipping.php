<?php
class Shipping extends Controller{
    private $res = null;
    function __construct()
    {
        $this->res = new Response;
    }
    function getProvince(){
        global $config;
        $token = $config['shipping']['ghn']['user_token'];
        // Gọi API để lấy danh sách tỉnh
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://online-gateway.ghn.vn/shiip/public-api/master-data/province");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            "token: $token",
            "Content-Type: application/json"
        ]);
        $response = curl_exec($ch);
        curl_close($ch);
        
        // Xử lý phản hồi JSON
        $data = json_decode($response, true);
        
        // Chuyển dữ liệu thành JSON string để sử dụng trong JavaScript
        $provincesJson = json_encode($data['data']);
        echo $this->res->dataApi('200', 'Tỉnh thành công', [
            "Province_Json" => $provincesJson
        ]);
        return;
    }

    function getDistrict($provinceID){
        global $config;
        $token = $config['shipping']['ghn']['user_token'];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://online-gateway.ghn.vn/shiip/public-api/master-data/district?province={$provinceID}");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            "token: $token",
            "Content-Type: application/json",
        ]);
        $response = curl_exec($ch);
        curl_close($ch);
        
        // Xử lý phản hồi JSON
        $data = json_decode($response, true);
        
        // Chuyển dữ liệu thành JSON string để sử dụng trong JavaScript
        $districtsJson = json_encode($data['data']);
        echo $this->res->dataApi('200', 'Quan huyen', [
            "District_Json" => $districtsJson,
        ]);
        return;
    }

    function getWard($districtId){
        global $config;
        $token = $config['shipping']['ghn']['user_token'];
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://online-gateway.ghn.vn/shiip/public-api/master-data/ward?district_id={$districtId}");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            "token: $token",
            "Content-Type: application/json",
        ]);
        $response = curl_exec($ch);
        curl_close($ch);
        
        // Xử lý phản hồi JSON
        $data = json_decode($response, true);
        
        // Chuyển dữ liệu thành JSON string để sử dụng trong JavaScript
        $wardsJson = json_encode($data['data']);
        echo $this->res->dataApi('200', 'Phuong xa', [
            "Ward_Json" => $wardsJson,
            "District_ID" => $districtId
        ]);
        return;
    }

    function getServiceId($from_district_id, $to_district_id){
        global $config;
        $token = $config['shipping']['ghn']['user_token'];
        $shopId = $config['shipping']['ghn']['shop_id'];
        $data = [
            'shop_id' => intval($shopId),
            'from_district' => intval($from_district_id),
            'to_district' => intval($to_district_id),
        ];
        
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/available-services");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            "Content-Type: application/json",
            "Token: c7c08579-8842-11ef-bfc2-5a1b1be465b4"
        ]);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($data));
        
        // Gửi yêu cầu và nhận phản hồi
        $response = curl_exec($ch);
        curl_close($ch);
        
        if ($response === false) {
            echo 'Error:' . curl_error($ch);
        } else {
            $data = json_decode($response, true);
            $wardsJson = json_encode($data['data']);
            $s = $data['data'];
            $si = 0;
            foreach($s as $a){
                if($a['service_type_id'] == 2){
                    $si = $a['service_id'];
                }
            }
        }
        return $si;
    }

    function getFee($districtId, $totalPrice, $totalWeight){
        global $config;
        $token = $config['shipping']['ghn']['user_token'];
        $fromDis = $config['shipping']['ghn']['from_district_id'];
        $serviceId = self::getServiceId($fromDis, $districtId);
        $requestData = [
            'from_district_id' => intval($fromDis), // Mã quận/huyện nơi gửi hàng
            'service_id' => $serviceId, // ID dịch vụ
            'to_district_id' => intval($districtId), // Mã quận/huyện nơi nhận hàng
            'weight' => intval($totalWeight), // Khối lượng gói hàng (gram)
        ];
        
        // Thiết lập cURL
        $ch = curl_init();
        curl_setopt($ch, CURLOPT_URL, "https://online-gateway.ghn.vn/shiip/public-api/v2/shipping-order/fee");
        curl_setopt($ch, CURLOPT_RETURNTRANSFER, true);
        curl_setopt($ch, CURLOPT_HTTPHEADER, [
            "Content-Type: application/json",
            "Token: $token"
        ]);
        curl_setopt($ch, CURLOPT_POST, true);
        curl_setopt($ch, CURLOPT_POSTFIELDS, json_encode($requestData));
        
        // Gửi yêu cầu và nhận phản hồi
        $response = curl_exec($ch);
        curl_close($ch);
        
        // Xử lý phản hồi
        $data = json_decode($response, true);

        $fee = $data['data']['service_fee'];
        $totalPrice += intval($fee);
        echo $this->res->dataApi('200', 'Fee', [
            "totalPrice" => $totalPrice,
            "Service_Fee" => $fee,
            "Service_id" => $serviceId
        ]);
        return;
    }

    
}