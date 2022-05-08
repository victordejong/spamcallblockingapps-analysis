package com.amazonaws.mobileconnectors.p016s3.transferutility;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
/* renamed from: com.amazonaws.mobileconnectors.s3.transferutility.TransferState */
/* loaded from: classes-dex2jar.jar:com/amazonaws/mobileconnectors/s3/transferutility/TransferState.class */
public enum TransferState {
    WAITING,
    IN_PROGRESS,
    PAUSED,
    RESUMED_WAITING,
    COMPLETED,
    CANCELED,
    FAILED,
    WAITING_FOR_NETWORK,
    PART_COMPLETED,
    PENDING_CANCEL,
    PENDING_PAUSE,
    PENDING_NETWORK_DISCONNECT,
    UNKNOWN;
    
    public static final Map<String, TransferState> map = new HashMap();

    static {
        TransferState[] values;
        for (TransferState transferState : values()) {
            map.put(transferState.toString(), transferState);
        }
    }

    public static TransferState getState(String str) {
        if (map.containsKey(str)) {
            return map.get(str);
        }
        Log.e("TransferState", "Unknown state " + str + " transfer will be have state set to UNKNOWN.");
        return UNKNOWN;
    }
}
