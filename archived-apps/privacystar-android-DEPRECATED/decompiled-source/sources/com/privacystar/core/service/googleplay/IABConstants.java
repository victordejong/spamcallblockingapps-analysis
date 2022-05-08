package com.privacystar.core.service.googleplay;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/googleplay/IABConstants.class */
public class IABConstants {
    public static final String ACTION_CONFIRM_NOTIFICATION = "com.example.subscriptions.CONFIRM_NOTIFICATION";
    public static final String ACTION_GET_PURCHASE_INFORMATION = "com.example.subscriptions.GET_PURCHASE_INFORMATION";
    public static final String ACTION_NOTIFY = "com.android.vending.billing.IN_APP_NOTIFY";
    public static final String ACTION_PURCHASE_STATE_CHANGED = "com.android.vending.billing.PURCHASE_STATE_CHANGED";
    public static final String ACTION_RESPONSE_CODE = "com.android.vending.billing.RESPONSE_CODE";
    public static final String ACTION_RESTORE_TRANSACTIONS = "com.example.subscriptions.RESTORE_TRANSACTIONS";
    public static final String BILLING_REQUEST_API_VERSION = "API_VERSION";
    public static final String BILLING_REQUEST_DEVELOPER_PAYLOAD = "DEVELOPER_PAYLOAD";
    public static final String BILLING_REQUEST_ITEM_ID = "ITEM_ID";
    public static final String BILLING_REQUEST_ITEM_TYPE = "ITEM_TYPE";
    public static final String BILLING_REQUEST_METHOD = "BILLING_REQUEST";
    public static final String BILLING_REQUEST_NONCE = "NONCE";
    public static final String BILLING_REQUEST_NOTIFY_IDS = "NOTIFY_IDS";
    public static final String BILLING_REQUEST_PACKAGE_NAME = "PACKAGE_NAME";
    public static final String BILLING_RESPONSE_PURCHASE_INTENT = "PURCHASE_INTENT";
    public static final String BILLING_RESPONSE_REQUEST_ID = "REQUEST_ID";
    public static final String BILLING_RESPONSE_RESPONSE_CODE = "RESPONSE_CODE";
    public static final String EXTRA_ACTION = "iab_intent_action";
    public static final String EXTRA_ERROR = "error";
    public static final String EXTRA_PAYLOAD = "payload";
    public static final String EXTRA_PURCHASE_JSON = "purchase_json";
    public static final String EXTRA_SIGNATURE = "signature";
    public static final String EXTRA_SKU = "product_sku";
    public static final String EXTRA_TYPE = "type";
    public static final String INAPP_REQUEST_ID = "request_id";
    public static final String INAPP_RESPONSE_CODE = "response_code";
    public static final String INAPP_SIGNATURE = "inapp_signature";
    public static final String INAPP_SIGNED_DATA = "inapp_signed_data";
    public static final String ITEM_TYPE_INAPP = "inapp";
    public static final String ITEM_TYPE_SUBSCRIPTION = "subs";
    public static final String JSON_CODE = "error_code";
    public static final String JSON_PAYLOAD = "payload";
    public static final String JSON_RESULT = "result";
    public static final String MARKET_BILLING_SERVICE_ACTION = "com.android.vending.billing.MarketBillingService.BIND";
    public static final String NOTIFICATION_ID = "notification_id";
    private static final String APP_PACKAGE = IABConstants.class.getPackage().getName();
    public static final String ACTION = APP_PACKAGE + ".iab_action";
    public static final String ACTION_PURCHASE = APP_PACKAGE + ".iab_purchase";
    public static final String ACTION_CHECK = APP_PACKAGE + ".iab_check";
    public static final String ACTION_CANCEL = APP_PACKAGE + ".iab_cancel";
    public static final String ACTION_CONSUME = APP_PACKAGE + ".iab_consume";
    public static final String ACTION_RESTORE = APP_PACKAGE + ".iab_restore";
    public static final String ACTION_CHANGE = APP_PACKAGE + ".iab_purchase_change";
    public static final String ACTION_ERROR = APP_PACKAGE + ".iab_error";
    public static final String ACTION_LIST_AVAILABLE = APP_PACKAGE + ".iab_list_available";

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/googleplay/IABConstants$PurchaseState.class */
    public enum PurchaseState {
        PURCHASED(0),
        CANCELED(1),
        REFUNDED(2);
        
        private int value;

        PurchaseState(int i) {
            this.value = i;
        }

        public static PurchaseState valueOf(int i) {
            PurchaseState[] values;
            for (PurchaseState purchaseState : values()) {
                if (purchaseState.value == i) {
                    return purchaseState;
                }
            }
            return null;
        }

        public int getValue() {
            return this.value;
        }
    }

    /* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/googleplay/IABConstants$ResponseCode.class */
    public enum ResponseCode {
        RESULT_OK,
        RESULT_USER_CANCELED,
        RESULT_SERVICE_UNAVAILABLE,
        RESULT_BILLING_UNAVAILABLE,
        RESULT_ITEM_UNAVAILABLE,
        RESULT_DEVELOPER_ERROR,
        RESULT_ERROR,
        BILLING_NOT_SUPPORTED,
        SUBSCRIPTIONS_NOT_SUPPORTED,
        SERVICE_DISCONNECTED;

        public static ResponseCode valueOf(int i) {
            ResponseCode[] values = values();
            return (i < 0 || i >= values.length) ? RESULT_ERROR : values[i];
        }
    }
}
