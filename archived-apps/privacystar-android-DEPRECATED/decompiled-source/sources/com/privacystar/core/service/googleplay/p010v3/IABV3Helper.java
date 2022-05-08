package com.privacystar.core.service.googleplay.p010v3;

import android.support.annotation.NonNull;
import com.privacystar.core.service.googleplay.IABConstants;
import com.privacystar.core.util.Text;
/* renamed from: com.privacystar.core.service.googleplay.v3.IABV3Helper */
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/googleplay/v3/IABV3Helper.class */
public class IABV3Helper {
    public static final String BUY_INTENT = "BUY_INTENT";
    public static final String DESCRIPTION = "description";
    public static final String DEVELOPER_PAYLOAD = "developerPayload";
    public static final String INAPP_CONTINUATION_TOKEN = "INAPP_CONTINUATION_TOKEN";
    public static final String INAPP_DATA_SIGNATURE = "INAPP_DATA_SIGNATURE";
    public static final String INAPP_DATA_SIGNATURE_LIST = "INAPP_DATA_SIGNATURE_LIST";
    public static final String INAPP_PURCHASE_DATA = "INAPP_PURCHASE_DATA";
    public static final String INAPP_PURCHASE_DATA_LIST = "INAPP_PURCHASE_DATA_LIST";
    public static final String INAPP_PURCHASE_ITEM_LIST = "INAPP_PURCHASE_ITEM_LIST";
    public static final String ORDER_ID = "orderId";
    public static final String PACKAGE_NAME = "packageName";
    public static final String PRICE = "price";
    public static final String PRODUCT_ID = "productId";
    public static final String PURCHASE_STATE = "purchaseState";
    public static final String PURCHASE_TIME = "purchaseTime";
    public static final String PURCHASE_TOKEN = "purchaseToken";
    public static final String RESPONSE_CODE = "RESPONSE_CODE";
    public static final String TITLE = "title";
    public static final String TYPE = "type";

    /* renamed from: com.privacystar.core.service.googleplay.v3.IABV3Helper$Result */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/googleplay/v3/IABV3Helper$Result.class */
    public enum Result {
        OK(0, "OK"),
        USER_CANCELED(1, "CANCELED"),
        SERVICE_UNAVAILABLE(2, "FAILED"),
        BILLING_UNAVAILABLE(3, "FAILED"),
        ITEM_UNAVAILABLE(4, "FAILED"),
        DEVELOPER_ERROR(5, "FAILED"),
        ERROR(6, "FAILED"),
        ITEM_ALREADY_OWNED(7, "FAILED"),
        ITEM_NOT_OWNED(8, "FAILED"),
        SERVICE_DISCONNECTED(9, "FAILED");
        
        private final String description;
        private final int value;

        Result(int i, String str) {
            this.value = i;
            this.description = str;
        }

        public static Result get(int i) {
            Result[] values;
            for (Result result : values()) {
                if (result.value == i) {
                    return result;
                }
            }
            return ERROR;
        }

        public String description() {
            return this.description;
        }

        public int value() {
            return this.value;
        }
    }

    /* renamed from: com.privacystar.core.service.googleplay.v3.IABV3Helper$SkuType */
    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/googleplay/v3/IABV3Helper$SkuType.class */
    public enum SkuType {
        SUBSCRIPTION("subs"),
        CONSUMABLE(IABConstants.ITEM_TYPE_INAPP),
        INVALID("invalid");
        
        private final String value;

        SkuType(String str) {
            this.value = str;
        }

        @NonNull
        public static SkuType skuTypeFromValue(String str) {
            SkuType[] values;
            for (SkuType skuType : values()) {
                if (Text.equals(skuType.getValue(), str)) {
                    return skuType;
                }
            }
            return INVALID;
        }

        public String getValue() {
            return this.value;
        }
    }
}
