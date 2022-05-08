package com.google.firebase.heartbeatinfo;

import androidx.annotation.NonNull;
/* loaded from: classes-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatInfo.class */
public interface HeartBeatInfo {

    /* loaded from: classes-dex2jar.jar:com/google/firebase/heartbeatinfo/HeartBeatInfo$HeartBeat.class */
    public enum HeartBeat {
        NONE(0),
        SDK(1),
        GLOBAL(2),
        COMBINED(3);
        
        private final int code;

        HeartBeat(int i) {
            this.code = i;
        }

        public int getCode() {
            return this.code;
        }
    }

    @NonNull
    HeartBeat getHeartBeatCode(@NonNull String str);
}
