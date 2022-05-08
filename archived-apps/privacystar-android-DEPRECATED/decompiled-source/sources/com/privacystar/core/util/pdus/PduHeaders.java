package com.privacystar.core.util.pdus;

import com.privacystar.core.util.exception.FieldMissingException;
import java.util.ArrayList;
import java.util.HashMap;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/util/pdus/PduHeaders.class */
public class PduHeaders {
    public static final int ADAPTATION_ALLOWED = 188;
    public static final int ADDITIONAL_HEADERS = 176;
    public static final int APPLIC_ID = 183;
    public static final int ATTRIBUTES = 168;
    public static final int AUX_APPLIC_ID = 185;
    public static final int BCC = 129;
    public static final int CANCEL_ID = 190;
    public static final int CANCEL_STATUS = 191;
    public static final int CANCEL_STATUS_REQUEST_CORRUPTED = 129;
    public static final int CANCEL_STATUS_REQUEST_SUCCESSFULLY_RECEIVED = 128;

    /* renamed from: CC */
    public static final int f303CC = 130;
    public static final int CONTENT = 174;
    public static final int CONTENT_CLASS = 186;
    public static final int CONTENT_CLASS_CONTENT_BASIC = 134;
    public static final int CONTENT_CLASS_CONTENT_RICH = 135;
    public static final int CONTENT_CLASS_IMAGE_BASIC = 129;
    public static final int CONTENT_CLASS_IMAGE_RICH = 130;
    public static final int CONTENT_CLASS_MEGAPIXEL = 133;
    public static final int CONTENT_CLASS_TEXT = 128;
    public static final int CONTENT_CLASS_VIDEO_BASIC = 131;
    public static final int CONTENT_CLASS_VIDEO_RICH = 132;
    public static final int CONTENT_LOCATION = 131;
    public static final int CONTENT_TYPE = 132;
    public static final int CURRENT_MMS_VERSION = 18;
    public static final int DATE = 133;
    public static final int DELIVERY_REPORT = 134;
    public static final int DELIVERY_TIME = 135;
    public static final int DISTRIBUTION_INDICATOR = 177;
    public static final int DRM_CONTENT = 187;
    public static final int ELEMENT_DESCRIPTOR = 178;
    public static final int EXPIRY = 136;
    public static final int FROM = 137;
    public static final int FROM_ADDRESS_PRESENT_TOKEN = 128;
    public static final String FROM_ADDRESS_PRESENT_TOKEN_STR = "address-present-token";
    public static final int FROM_INSERT_ADDRESS_TOKEN = 129;
    public static final String FROM_INSERT_ADDRESS_TOKEN_STR = "insert-address-token";
    public static final int LIMIT = 179;
    public static final int MBOX_QUOTAS = 172;
    public static final int MBOX_TOTALS = 170;
    public static final int MESSAGE_CLASS = 138;
    public static final int MESSAGE_CLASS_ADVERTISEMENT = 129;
    public static final String MESSAGE_CLASS_ADVERTISEMENT_STR = "advertisement";
    public static final int MESSAGE_CLASS_AUTO = 131;
    public static final String MESSAGE_CLASS_AUTO_STR = "auto";
    public static final int MESSAGE_CLASS_INFORMATIONAL = 130;
    public static final String MESSAGE_CLASS_INFORMATIONAL_STR = "informational";
    public static final int MESSAGE_CLASS_PERSONAL = 128;
    public static final String MESSAGE_CLASS_PERSONAL_STR = "personal";
    public static final int MESSAGE_COUNT = 173;
    public static final int MESSAGE_ID = 139;
    public static final int MESSAGE_SIZE = 142;
    public static final int MESSAGE_TYPE = 140;
    public static final int MESSAGE_TYPE_ACKNOWLEDGE_IND = 133;
    public static final int MESSAGE_TYPE_CANCEL_CONF = 151;
    public static final int MESSAGE_TYPE_CANCEL_REQ = 150;
    public static final int MESSAGE_TYPE_DELETE_CONF = 149;
    public static final int MESSAGE_TYPE_DELETE_REQ = 148;
    public static final int MESSAGE_TYPE_DELIVERY_IND = 134;
    public static final int MESSAGE_TYPE_FORWARD_CONF = 138;
    public static final int MESSAGE_TYPE_FORWARD_REQ = 137;
    public static final int MESSAGE_TYPE_MBOX_DELETE_CONF = 146;
    public static final int MESSAGE_TYPE_MBOX_DELETE_REQ = 145;
    public static final int MESSAGE_TYPE_MBOX_DESCR = 147;
    public static final int MESSAGE_TYPE_MBOX_STORE_CONF = 140;
    public static final int MESSAGE_TYPE_MBOX_STORE_REQ = 139;
    public static final int MESSAGE_TYPE_MBOX_UPLOAD_CONF = 144;
    public static final int MESSAGE_TYPE_MBOX_UPLOAD_REQ = 143;
    public static final int MESSAGE_TYPE_MBOX_VIEW_CONF = 142;
    public static final int MESSAGE_TYPE_MBOX_VIEW_REQ = 141;
    public static final int MESSAGE_TYPE_NOTIFICATION_IND = 130;
    public static final int MESSAGE_TYPE_NOTIFYRESP_IND = 131;
    public static final int MESSAGE_TYPE_READ_ORIG_IND = 136;
    public static final int MESSAGE_TYPE_READ_REC_IND = 135;
    public static final int MESSAGE_TYPE_RETRIEVE_CONF = 132;
    public static final int MESSAGE_TYPE_SEND_CONF = 129;
    public static final int MESSAGE_TYPE_SEND_REQ = 128;
    public static final int MMS_VERSION = 141;
    public static final int MMS_VERSION_1_0 = 16;
    public static final int MMS_VERSION_1_1 = 17;
    public static final int MMS_VERSION_1_2 = 18;
    public static final int MMS_VERSION_1_3 = 19;
    public static final int MM_FLAGS = 164;
    public static final int MM_FLAGS_ADD_TOKEN = 128;
    public static final int MM_FLAGS_FILTER_TOKEN = 130;
    public static final int MM_FLAGS_REMOVE_TOKEN = 129;
    public static final int MM_STATE = 163;
    public static final int MM_STATE_DRAFT = 128;
    public static final int MM_STATE_FORWARDED = 132;
    public static final int MM_STATE_NEW = 130;
    public static final int MM_STATE_RETRIEVED = 131;
    public static final int MM_STATE_SENT = 129;
    public static final int PREVIOUSLY_SENT_BY = 160;
    public static final int PREVIOUSLY_SENT_DATE = 161;
    public static final int PRIORITY = 143;
    public static final int PRIORITY_HIGH = 130;
    public static final int PRIORITY_LOW = 128;
    public static final int PRIORITY_NORMAL = 129;
    public static final int QUOTAS = 171;
    public static final int READ_REPLY = 144;
    public static final int READ_REPORT = 144;
    public static final int READ_STATUS = 155;
    public static final int READ_STATUS_READ = 128;
    public static final int READ_STATUS__DELETED_WITHOUT_BEING_READ = 129;
    public static final int RECOMMENDED_RETRIEVAL_MODE = 180;
    public static final int RECOMMENDED_RETRIEVAL_MODE_MANUAL = 128;
    public static final int RECOMMENDED_RETRIEVAL_MODE_TEXT = 181;
    public static final int REPLACE_ID = 189;
    public static final int REPLY_APPLIC_ID = 184;
    public static final int REPLY_CHARGING = 156;
    public static final int REPLY_CHARGING_ACCEPTED = 130;
    public static final int REPLY_CHARGING_ACCEPTED_TEXT_ONLY = 131;
    public static final int REPLY_CHARGING_DEADLINE = 157;
    public static final int REPLY_CHARGING_ID = 158;
    public static final int REPLY_CHARGING_REQUESTED = 128;
    public static final int REPLY_CHARGING_REQUESTED_TEXT_ONLY = 129;
    public static final int REPLY_CHARGING_SIZE = 159;
    public static final int REPORT_ALLOWED = 145;
    public static final int RESPONSE_STATUS = 146;
    public static final int RESPONSE_STATUS_ERROR_CONTENT_NOT_ACCEPTED = 135;
    public static final int RESPONSE_STATUS_ERROR_MESSAGE_FORMAT_CORRUPT = 131;
    public static final int RESPONSE_STATUS_ERROR_MESSAGE_NOT_FOUND = 133;
    public static final int RESPONSE_STATUS_ERROR_NETWORK_PROBLEM = 134;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_ADDRESS_HIDING_NOT_SUPPORTED = 234;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_CONTENT_NOT_ACCEPTED = 229;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_END = 255;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_FAILURE = 224;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_LACK_OF_PREPAID = 235;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_MESSAGE_FORMAT_CORRUPT = 226;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_MESSAGE_NOT_FOUND = 228;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_FORWARDING_DENIED = 232;

    /* renamed from: RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_LIMITATIONS_NOT_MET */
    public static final int f304x8d697b28 = 230;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_NOT_SUPPORTED = 233;

    /* renamed from: RESPONSE_STATUS_ERROR_PERMANENT_REPLY_CHARGING_REQUEST_NOT_ACCEPTED */
    public static final int f305x6c1c9f85 = 230;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_SENDING_ADDRESS_UNRESOLVED = 227;
    public static final int RESPONSE_STATUS_ERROR_PERMANENT_SERVICE_DENIED = 225;
    public static final int RESPONSE_STATUS_ERROR_SENDING_ADDRESS_UNRESOLVED = 132;
    public static final int RESPONSE_STATUS_ERROR_SERVICE_DENIED = 130;
    public static final int RESPONSE_STATUS_ERROR_TRANSIENT_FAILURE = 192;
    public static final int RESPONSE_STATUS_ERROR_TRANSIENT_MESSAGE_NOT_FOUND = 194;
    public static final int RESPONSE_STATUS_ERROR_TRANSIENT_NETWORK_PROBLEM = 195;
    public static final int RESPONSE_STATUS_ERROR_TRANSIENT_PARTIAL_SUCCESS = 196;
    public static final int RESPONSE_STATUS_ERROR_TRANSIENT_SENDNG_ADDRESS_UNRESOLVED = 193;
    public static final int RESPONSE_STATUS_ERROR_UNSPECIFIED = 129;
    public static final int RESPONSE_STATUS_ERROR_UNSUPPORTED_MESSAGE = 136;
    public static final int RESPONSE_STATUS_OK = 128;
    public static final int RESPONSE_TEXT = 147;
    public static final int RETRIEVE_STATUS = 153;
    public static final int RETRIEVE_STATUS_ERROR_END = 255;
    public static final int RETRIEVE_STATUS_ERROR_PERMANENT_CONTENT_UNSUPPORTED = 227;
    public static final int RETRIEVE_STATUS_ERROR_PERMANENT_FAILURE = 224;
    public static final int RETRIEVE_STATUS_ERROR_PERMANENT_MESSAGE_NOT_FOUND = 226;
    public static final int RETRIEVE_STATUS_ERROR_PERMANENT_SERVICE_DENIED = 225;
    public static final int RETRIEVE_STATUS_ERROR_TRANSIENT_FAILURE = 192;
    public static final int RETRIEVE_STATUS_ERROR_TRANSIENT_MESSAGE_NOT_FOUND = 193;
    public static final int RETRIEVE_STATUS_ERROR_TRANSIENT_NETWORK_PROBLEM = 194;
    public static final int RETRIEVE_STATUS_OK = 128;
    public static final int RETRIEVE_TEXT = 154;
    public static final int SENDER_VISIBILITY = 148;
    public static final int SENDER_VISIBILITY_HIDE = 128;
    public static final int SENDER_VISIBILITY_SHOW = 129;
    public static final int START = 175;
    public static final int STATUS = 149;
    public static final int STATUS_DEFERRED = 131;
    public static final int STATUS_EXPIRED = 128;
    public static final int STATUS_FORWARDED = 134;
    public static final int STATUS_INDETERMINATE = 133;
    public static final int STATUS_REJECTED = 130;
    public static final int STATUS_RETRIEVED = 129;
    public static final int STATUS_TEXT = 182;
    public static final int STATUS_UNREACHABLE = 135;
    public static final int STATUS_UNRECOGNIZED = 132;
    public static final int STORE = 162;
    public static final int STORED = 167;
    public static final int STORE_STATUS = 165;
    public static final int STORE_STATUS_ERROR_END = 255;
    public static final int STORE_STATUS_ERROR_PERMANENT_FAILURE = 224;
    public static final int STORE_STATUS_ERROR_PERMANENT_MESSAGE_FORMAT_CORRUPT = 226;
    public static final int STORE_STATUS_ERROR_PERMANENT_MESSAGE_NOT_FOUND = 227;
    public static final int STORE_STATUS_ERROR_PERMANENT_MMBOX_FULL = 228;
    public static final int STORE_STATUS_ERROR_PERMANENT_SERVICE_DENIED = 225;
    public static final int STORE_STATUS_ERROR_TRANSIENT_FAILURE = 192;
    public static final int STORE_STATUS_ERROR_TRANSIENT_NETWORK_PROBLEM = 193;
    public static final int STORE_STATUS_SUCCESS = 128;
    public static final int STORE_STATUS_TEXT = 166;
    public static final int SUBJECT = 150;

    /* renamed from: TO */
    public static final int f306TO = 151;
    public static final int TOTALS = 169;
    public static final int TRANSACTION_ID = 152;
    public static final int VALUE_ABSOLUTE_TOKEN = 128;
    public static final int VALUE_NO = 129;
    public static final int VALUE_RELATIVE_TOKEN = 129;
    public static final int VALUE_YES = 128;
    private HashMap<Integer, Object> headerMap;

    public PduHeaders() {
        this.headerMap = null;
        this.headerMap = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void appendEncodedStringValue(EncodedStringValue encodedStringValue, int i) {
        if (encodedStringValue == null) {
            throw new NullPointerException();
        }
        if (i != 151) {
            switch (i) {
                case 129:
                case 130:
                    break;
                default:
                    throw new FieldMissingException("Invalid header field!");
            }
        }
        ArrayList arrayList = (ArrayList) this.headerMap.get(Integer.valueOf(i));
        ArrayList arrayList2 = arrayList;
        if (arrayList == null) {
            arrayList2 = new ArrayList();
        }
        arrayList2.add(encodedStringValue);
        this.headerMap.put(Integer.valueOf(i), arrayList2);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EncodedStringValue getEncodedStringValue(int i) {
        return (EncodedStringValue) this.headerMap.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public EncodedStringValue[] getEncodedStringValues(int i) {
        ArrayList arrayList = (ArrayList) this.headerMap.get(Integer.valueOf(i));
        if (arrayList == null) {
            return null;
        }
        return (EncodedStringValue[]) arrayList.toArray(new EncodedStringValue[arrayList.size()]);
    }

    public EncodedStringValue getFrom() {
        return getEncodedStringValue(137);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public long getLongInteger(int i) {
        Long l = (Long) this.headerMap.get(Integer.valueOf(i));
        if (l == null) {
            return -1L;
        }
        return l.longValue();
    }

    public int getMessageType() {
        return getOctet(140);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int getOctet(int i) {
        Integer num = (Integer) this.headerMap.get(Integer.valueOf(i));
        if (num == null) {
            return 0;
        }
        return num.intValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public byte[] getTextString(int i) {
        return (byte[]) this.headerMap.get(Integer.valueOf(i));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setEncodedStringValue(EncodedStringValue encodedStringValue, int i) {
        if (encodedStringValue == null) {
            throw new NullPointerException();
        }
        if (!(i == 137 || i == 147 || i == 150 || i == 154 || i == 160 || i == 164 || i == 166)) {
            switch (i) {
                case 181:
                case 182:
                    break;
                default:
                    throw new FieldMissingException("Invalid header field!");
            }
        }
        this.headerMap.put(Integer.valueOf(i), encodedStringValue);
    }

    protected void setEncodedStringValues(EncodedStringValue[] encodedStringValueArr, int i) {
        if (encodedStringValueArr == null) {
            throw new NullPointerException();
        }
        if (i != 151) {
            switch (i) {
                case 129:
                case 130:
                    break;
                default:
                    throw new FieldMissingException("Invalid header field!");
            }
        }
        ArrayList arrayList = new ArrayList();
        for (EncodedStringValue encodedStringValue : encodedStringValueArr) {
            arrayList.add(encodedStringValue);
        }
        this.headerMap.put(Integer.valueOf(i), arrayList);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setLongInteger(long j, int i) {
        if (!(i == 133 || i == 142 || i == 157 || i == 159 || i == 161 || i == 173 || i == 175 || i == 179)) {
            switch (i) {
                case 135:
                case 136:
                    break;
                default:
                    throw new FieldMissingException("Invalid header field!");
            }
        }
        this.headerMap.put(Integer.valueOf(i), Long.valueOf(j));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x015c, code lost:
        if (r5 >= 192) goto L_0x015f;
     */
    /* JADX WARN: Code restructure failed: missing block: B:72:0x01f4, code lost:
        if (r5 >= 192) goto L_0x01f7;
     */
    /* JADX WARN: Code restructure failed: missing block: B:90:0x0241, code lost:
        if (r5 > 255) goto L_0x0244;
     */
    /* JADX WARN: Code restructure failed: missing block: B:96:0x025c, code lost:
        if (r5 >= 192) goto L_0x025f;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public void setOctet(int r5, int r6) throws java.lang.IllegalArgumentException {
        /*
            Method dump skipped, instructions count: 735
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.util.pdus.PduHeaders.setOctet(int, int):void");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setTextString(byte[] bArr, int i) {
        if (bArr == null) {
            throw new NullPointerException();
        }
        switch (i) {
            case 131:
            case 132:
            case 138:
            case 139:
            case 152:
            case 158:
            case 183:
            case 184:
            case 185:
            case 189:
            case 190:
                this.headerMap.put(Integer.valueOf(i), bArr);
                return;
            default:
                throw new FieldMissingException("Invalid header field!");
        }
    }
}
