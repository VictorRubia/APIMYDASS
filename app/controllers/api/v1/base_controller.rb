class Api::V1::BaseController < ApplicationController
    rescue_from ActiveRecord::RecordNotFound, with: :handle_not_found
  
    before_action :authenticate
  
    private
  
    def authenticate
      authenticate_user_with_token || handle_bad_authentication
    end
  
    def authenticate_user_with_token
      authenticate_with_http_token do |token, options|
        "mydasse3FcrbXgGybRgdDZky0D7V9xziqHdUHd/c8excl-lG/rgzpC/ELC2AOtXgR?0X0/g??1RhfpB?OoV4C5HCHrkHc?5basw33C0irKBPoZ?ENncv!9sxMi9=yxOOwoe6mnnY/t0kJL5/t!mdIb7TW?/iz/6kLpA8CJgUcVgsc-GFUQzRexyb3GuSaJNUWoI-7nmFjGDb2nzGumd?eE56xLI=8FFwp09U1PvKhkxpwxT4WJq59AubUVl8092CxTdj4NnHUO4!EJlpWO/DV0/B/LZx8c8mpzpmf=f2l/Ro5hSjj-47FL7ksOsOEM=ojlOMQox3!iFgK41lXpOQcM30RI7qj!aP14UPsJ6nekTe=U0UT9Pl91ezaan8rqlxPxH4CdEwwF5?kW?qFlRzZir/XqLeEsBLcocexp8?12Ae=P3kBpsoprRBeIbEEO3!ZLFQEhJIfdSH3k8aWbgFA034RKEvhx2mKF2AoP?kF2-4JZsceal?m-M2V7p3pZD-4N?fGPVhasS5KH1!4!nKhv0JOM2fN6CnxutjzPXo0YYj-TZLvcLTCeirI9Rg1/T=p/QZZY2LLkrccK--=Ua9y96w?R-HWTZbhEXxvdgc2sSrrkh5h-va?1pEdS/2?UFC8AJqmj04mzzh0NV/NdR?prx4zNJQ!NwJUAvoTL0kCayyyD=rdAwnVCj7nCc1OLc8bLSf3d3R2P=dH/7Soaultx69I?A8YHXJSH=2CwEEHXibSaqQpsOZrLhpUCEIvFQarsW2ge-qAv0EdAV2m3nrdx4tTe9awTe0-J6vc-7T6KWUU-pbllmjQnX!k9odwThhwW7FZXKkki0VThZ1CqrPYjiKlcqBhuJMfK1pb71DJ=VNPrDRyhWFALCva?MuKrkL6I6vKr=9dDvbl4PlvsHqob?lv!nl!fNe3waQco3-?KJzODKMTw24z?zCN?sONzdcx5Q12sliCMLZH8-T0UA8/9GW60WAtI1!C?jdQS=-iPAZs8o6/HCRPj26mqLuRLBT9yhmPqrxLzcd2di/qzUHk70p24LhP-m1?VAqum3Ps-Uw/JNh2i2F!aRcx5VpZdvJH-ZCoO-BADfqO86V-EYcZzD=LYXOzQk3spItQ?WWysXLDISby8tckw5F=0em4jGlODNzYx7=oOu=Qb-VDyfxLdGqC7ZRiLm9vhWY6YJVHogBUmcKgd5-I0OQqdPPJevDMwev1ARK670BAh6DUzFSHMH?06Aj?rbfSqiLm4nXu6Kk05bsqaJ7YTVe8M-hn4UBD4ZK71VR9j4GDv48Sw5GkjXlMZF9bql6shEzl?kcgGl9padIgH17gjdnrY=9h-GcuSvw6IexDlWTBw8moiuRC!/Xx64hVdWzlq90dMie//DvT9s!8d9j7-HU17hLUjbbUquk70oGBGVJJVVj6jSv403llo7Q6OOOoNbVWRhQCyIWr?pjnob1zsLw2R26p5Q99kWjvjqUVuV!0qoy7HDe1uG5BRS5fZ/FTSebCXyL-qc2rK=y4CxNfRkcuQRDhbjSdBsUtT6phiH/8?2dd=5mqWbxC8gifOsNp3kVmul61O3tiaVFuNk2tbltbouQBm6-/fa6EnD==RHFEVr0TiSVR7ACkCnG3x=xIjcAMYDCgzRjf0N/WfHwHD!C6nlXMbeP/BCCBUv-UKeyOLrQB=D!8yN-!fgWPmQpb6=SuWgAdIhV2oY0QKGNEW/ugLcRaYr49d-GvfHmxKQlYa1RfGZJ30dT=fSTq!TbLfaH2BVe/vV0Gan35VEXGxH16Jj8p?jIacUhxHDuSTev5r!-4Mzm2yv1Na3oPRjxOt427oOEoT?DmSQYgB5c1=RUfuk17sugw/=ezn6t6lL48czw6MI7AeJ38eIo7NP3rMTy9Vanpep?tV8WK6hZ7h4wAki11cjGzbNbJhhf?eOD/KvCHFLMTkdxQPpy/bfF!Ty!br6aAoOFHvhlZ/TtSbgsms66Ce8dCRdo-hutq4o?V7F7Syf74!khJ9kZnxUA6v!6vZ?uIaSCHGCTq58OFb9c6tmB?N8N" == token
      end
    end
  
    def handle_bad_authentication
      render json: { message: "Acceso NO autorizado: Clave API no válida." }, status: :unauthorized
    end  
  
  end