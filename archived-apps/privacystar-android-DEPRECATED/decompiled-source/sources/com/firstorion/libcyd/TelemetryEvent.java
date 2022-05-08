package com.firstorion.libcyd;

import org.json.JSONException;
import org.json.JSONObject;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes-dex2jar.jar:com/firstorion/libcyd/TelemetryEvent.class */
public final class TelemetryEvent {
    static final int CODE_CYD_CLEAN = 59;
    static final int CODE_CYD_CLEAN_BAD_BUNDLE = 6;
    static final int CODE_CYD_CLEAN_CONTACT_CALL_ENDED_DELETED_OK = 63;
    static final int CODE_CYD_CLEAN_CONTACT_CALL_ENDED_NOT_DELETED_NONEXISTENT = 65;
    static final int CODE_CYD_CLEAN_CONTACT_CALL_ENDED_NOT_DELETED_NO_PERMISSION = 64;
    static final int CODE_CYD_CLEAN_CONTACT_CALL_ENDED_NOT_DELETED_UNKNOWN = 66;
    static final int CODE_CYD_CLEAN_CONTACT_KILL_DELETED_OK = 59;
    static final int CODE_CYD_CLEAN_CONTACT_KILL_NOT_DELETED_NONEXISTENT = 61;
    static final int CODE_CYD_CLEAN_CONTACT_KILL_NOT_DELETED_NO_PERMISSION = 60;
    static final int CODE_CYD_CLEAN_CONTACT_KILL_NOT_DELETED_UNKNOWN = 62;
    static final int CODE_CYD_CLEAN_CONTACT_RING_STOP_DELETED_OK = 51;
    static final int CODE_CYD_CLEAN_CONTACT_RING_STOP_NOT_DELETED_NONEXISTENT = 53;
    static final int CODE_CYD_CLEAN_CONTACT_RING_STOP_NOT_DELETED_NO_PERMISSION = 52;
    static final int CODE_CYD_CLEAN_CONTACT_RING_STOP_NOT_DELETED_UNKNOWN = 54;
    static final int CODE_CYD_CLEAN_CONTACT_TTL_DELETED_OK = 55;
    static final int CODE_CYD_CLEAN_CONTACT_TTL_NOT_DELETED_NONEXISTENT = 57;
    static final int CODE_CYD_CLEAN_CONTACT_TTL_NOT_DELETED_NO_PERMISSION = 56;
    static final int CODE_CYD_CLEAN_CONTACT_TTL_NOT_DELETED_UNKNOWN = 58;
    static final int CODE_CYD_CLEAN_CONTACT_UNKNOWN = 50;
    static final int CODE_CYD_CLEAN_CORRUPT_MD = 9;
    static final int CODE_CYD_CLEAN_MD_EXCEPTION = 7;
    static final int CODE_CYD_CLEAN_NETWORK_ERROR = 12;
    static final int CODE_CYD_CLEAN_OK_CALL_ENDED = 16;
    static final int CODE_CYD_CLEAN_OK_KILL = 3;
    static final int CODE_CYD_CLEAN_OK_KILL_ALL = 15;
    static final int CODE_CYD_CLEAN_OK_KILL_CVID = 11;
    static final int CODE_CYD_CLEAN_OK_KILL_SPID = 10;
    static final int CODE_CYD_CLEAN_OK_NO_A_NUMBERS = 14;
    static final int CODE_CYD_CLEAN_OK_NO_PRE_REQS = 5;
    static final int CODE_CYD_CLEAN_OK_PUSH_MESSAGE_ERROR = 4;
    static final int CODE_CYD_CLEAN_OK_RING_STOP = 0;
    static final int CODE_CYD_CLEAN_OK_SQUASH = 2;
    static final int CODE_CYD_CLEAN_OK_TTL = 1;
    static final int CODE_CYD_CLEAN_OK_UNKNOWN_REASON = 13;
    static final int CODE_CYD_CLEAN_OVERALL_EXCEPTION = 8;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE = 56;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE_CLEANING_OK = 8;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE_ERROR = 5;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE_ERROR_CLEANING = 7;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE_EXCEPTION = 6;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE_STATUS_DONE_URL_MISSING = 4;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE_STATUS_ID_MISSING = 2;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE_STATUS_JWT_MISSING = 3;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE_STATUS_OK = 0;
    static final int CODE_CYD_CLEAN_PUSH_MESSAGE_TIMEOUT = 9;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE = 52;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_BUNDLE_DONE_COMPLETE = 9;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_BUNDLE_DONE_EXCEPTION = 11;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_BUNDLE_DONE_FAILED = 10;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_BUNDLE_DONE_TIMEOUT = 14;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_BUNDLE_DOWNLOADED = 6;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_BUNDLE_DOWNLOAD_EXCEPTION = 8;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_BUNDLE_DOWNLOAD_FAILED = 7;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_BUNDLE_DOWNLOAD_TIMEOUT = 13;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_CONTACT_CREATED_OK = 15;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_CONTACT_NOT_CREATED_ALREADY_EXISTS = 17;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_CONTACT_NOT_CREATED_ERROR = 18;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_CONTACT_NOT_CREATED_NO_PERMISSION = 16;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_START = 12;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_STATUS_ANUMBER_MISSING = 5;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_STATUS_DONE_URL_MISSING = 3;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_STATUS_GET_URL_MISSING = 4;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_STATUS_ID_MISSING = 2;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_STATUS_JWT_MISSING = 1;
    static final int CODE_CYD_CONTENT_PUSH_MESSAGE_STATUS_OK = 0;
    static final int CODE_CYD_ID_CORRELATION = 61;
    static final int CODE_CYD_ID_CORRELATION_STATUS_CORRELATION = 0;
    static final int CODE_CYD_INCOMING_CALL = 50;
    static final int CODE_CYD_INCOMING_CALL_BAD_VARIABLE = 3;
    static final int CODE_CYD_INCOMING_CALL_CONTACT_SHOWN = 23;
    static final int CODE_CYD_INCOMING_CALL_DISABLED = 6;
    static final int CODE_CYD_INCOMING_CALL_IN_CALL = 13;
    static final int CODE_CYD_INCOMING_CALL_NBF = 14;
    static final int CODE_CYD_INCOMING_CALL_NO_OVERLAY_PERMISSION = 7;
    static final int CODE_CYD_INCOMING_CALL_PHONE_NOT_LOCKED = 1;
    static final int CODE_CYD_INCOMING_CALL_SCREEN_LOCKED = 10;
    static final int CODE_CYD_INCOMING_CALL_SCREEN_SHOWN = 0;
    static final int CODE_CYD_INCOMING_CALL_SCREEN_UNLOCKED = 11;
    static final int CODE_CYD_INCOMING_CALL_START = 9;
    static final int CODE_CYD_INCOMING_CALL_TEMPLATE_PARSE_EXCEPTION = 5;
    static final int CODE_CYD_INCOMING_CALL_TTL_EXPIRED = 12;
    static final int CODE_CYD_INCOMING_CALL_VARIABLE_EXCEPTION = 4;
    static final int CODE_CYD_INCOMING_CALL_VARS_FILE_EXCEPTION = 2;
    static final int CODE_CYD_NO_METADATA_FILE = 8;
    static final int CODE_CYD_PUSH_MESSAGE = 55;
    static final int CODE_CYD_PUSH_MESSAGE_STATUS_OK = 0;
    static final int CODE_CYD_PUSH_MESSAGE_UNKNOWN_TYPE = 1;
    static final int CODE_CYD_REFRESH_API_KEY = 60;
    static final int CODE_CYD_REFRESH_API_KEY_ERROR = 2;
    static final int CODE_CYD_REFRESH_API_KEY_EXCEPTION = 3;
    static final int CODE_CYD_REFRESH_API_KEY_OK = 0;
    static final int CODE_CYD_REFRESH_API_KEY_START = 1;
    static final int CODE_CYD_RINGING_STOP = 58;
    static final int CODE_CYD_RINGING_STOP_STATUS_ANSWER = 0;
    static final int CODE_CYD_RINGING_STOP_STATUS_IGNORE = 1;
    static final int CODE_CYD_RINGING_STOP_STATUS_MULTICALL = 3;
    static final int CODE_CYD_RINGING_STOP_STATUS_UNKNOWN = 2;
    static final int CODE_CYD_SCREEN_INTERACTION = 57;
    static final int CODE_CYD_SCREEN_INTERACTION_CLOSE = 1;
    static final int CODE_CYD_SMS_SEND = 54;
    static final int CODE_CYD_SMS_SEND_STATUS_BEGIN = 1;
    static final int CODE_CYD_SMS_SEND_STATUS_EXCEPTION = 3;
    static final int CODE_CYD_SMS_SEND_STATUS_FAILURE = 2;
    static final int CODE_CYD_SMS_SEND_STATUS_OK = 0;
    static final int CODE_CYD_SMS_VERIFY = 53;
    static final int CODE_CYD_SMS_VERIFY_STATUS_BEGIN = 1;
    static final int CODE_CYD_SMS_VERIFY_STATUS_EXCEPTION = 3;
    static final int CODE_CYD_SMS_VERIFY_STATUS_FAILURE = 2;
    static final int CODE_CYD_SMS_VERIFY_STATUS_OK = 0;
    static final int CODE_CYD_TOKEN = 51;
    static final int CODE_CYD_TOKEN_STATUS_EXCEPTION = 4;
    static final int CODE_CYD_TOKEN_STATUS_FAILURE = 3;
    static final int CODE_CYD_TOKEN_STATUS_NO_API_KEY = 1;
    static final int CODE_CYD_TOKEN_STATUS_NO_CHANGE = 2;
    static final int CODE_CYD_TOKEN_STATUS_OK = 0;
    private static final String CODE_JSON_FIELD = "code";
    private static final String CUSTOM_ID_JSON_FIELD = "cid";
    private static final String ID_JSON_FIELD = "id";
    private static final String MESSAGE_JSON_FIELD = "message";
    private static final String STATUS_JSON_FIELD = "status";
    private static final String TIMESTAMP_JSON_FIELD = "timestamp";
    private static final String VERSION_JSON_FIELD = "version";
    private final int code;
    private final String ctid;
    private final String message;
    private final int status;
    private final String tid;
    private final long timestamp;

    /* JADX INFO: Access modifiers changed from: package-private */
    public TelemetryEvent(String str, String str2, int i, int i2) {
        this(str, str2, i, i2, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TelemetryEvent(String str, String str2, int i, int i2, String str3) {
        this.tid = str;
        this.ctid = str2;
        this.code = i;
        this.status = i2;
        this.message = str3;
        this.timestamp = System.currentTimeMillis();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public JSONObject encode() throws JSONException {
        return new JSONObject().put("id", this.tid).put(CUSTOM_ID_JSON_FIELD, this.ctid).put(CODE_JSON_FIELD, this.code).put("status", this.status).put("message", this.message).put("timestamp", this.timestamp).put("version", 2);
    }
}
