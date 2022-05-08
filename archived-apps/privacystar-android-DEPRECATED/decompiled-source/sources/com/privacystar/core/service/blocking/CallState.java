package com.privacystar.core.service.blocking;

import android.telephony.TelephonyManager;
/* loaded from: classes2-dex2jar.jar:com/privacystar/core/service/blocking/CallState.class */
public class CallState {
    public static final int ENDED = 3;
    public static final int OFFHOOK = 2;
    public static final int RINGING = 1;
    public static final int UNKNOWN = 0;
    private static int currentState;
    private static int lastState;

    public static int getCurrentState() {
        int i;
        synchronized (CallState.class) {
            try {
                i = currentState;
            } catch (Throwable th) {
                throw th;
            }
        }
        return i;
    }

    public static int getStateFromString(String str) {
        if (str.equals(TelephonyManager.EXTRA_STATE_RINGING)) {
            return 1;
        }
        if (str.equals(TelephonyManager.EXTRA_STATE_OFFHOOK)) {
            return 2;
        }
        return str.equals(TelephonyManager.EXTRA_STATE_IDLE) ? 3 : 0;
    }

    private static boolean isValidStateTransition(int i) {
        boolean z = false;
        boolean z2 = false;
        boolean z3 = false;
        switch (getCurrentState()) {
            case 1:
                if (i == 2 || i == 3) {
                    z2 = true;
                }
                return z2;
            case 2:
                if (i == 3) {
                    z = true;
                }
                return z;
            case 3:
                if (i != 3) {
                    z3 = true;
                }
                return z3;
            default:
                return true;
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0014, code lost:
        if (com.privacystar.core.service.blocking.CallState.lastState == 1) goto L_0x001c;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean looksLikeMissedCall() {
        /*
            java.lang.Class<com.privacystar.core.service.blocking.CallState> r0 = com.privacystar.core.service.blocking.CallState.class
            monitor-enter(r0)
            int r0 = com.privacystar.core.service.blocking.CallState.currentState     // Catch: all -> 0x0021
            r3 = r0
            r0 = 1
            r4 = r0
            r0 = r3
            r1 = 3
            if (r0 != r1) goto L_0x001a
            int r0 = com.privacystar.core.service.blocking.CallState.lastState     // Catch: all -> 0x0021
            r3 = r0
            r0 = r3
            r1 = 1
            if (r0 != r1) goto L_0x001a
            goto L_0x001c
        L_0x001a:
            r0 = 0
            r4 = r0
        L_0x001c:
            java.lang.Class<com.privacystar.core.service.blocking.CallState> r0 = com.privacystar.core.service.blocking.CallState.class
            monitor-exit(r0)
            r0 = r4
            return r0
        L_0x0021:
            r5 = move-exception
            java.lang.Class<com.privacystar.core.service.blocking.CallState> r0 = com.privacystar.core.service.blocking.CallState.class
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.service.blocking.CallState.looksLikeMissedCall():boolean");
    }

    /* JADX WARN: Code restructure failed: missing block: B:10:0x0016, code lost:
        if (com.privacystar.core.service.blocking.CallState.lastState == 3) goto L_0x0019;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean looksLikeOutgoingCall() {
        /*
            java.lang.Class<com.privacystar.core.service.blocking.CallState> r0 = com.privacystar.core.service.blocking.CallState.class
            monitor-enter(r0)
            int r0 = com.privacystar.core.service.blocking.CallState.currentState     // Catch: all -> 0x0025
            r1 = 2
            if (r0 != r1) goto L_0x001e
            int r0 = com.privacystar.core.service.blocking.CallState.lastState     // Catch: all -> 0x0025
            if (r0 == 0) goto L_0x0019
            int r0 = com.privacystar.core.service.blocking.CallState.lastState     // Catch: all -> 0x0025
            r3 = r0
            r0 = r3
            r1 = 3
            if (r0 != r1) goto L_0x001e
        L_0x0019:
            r0 = 1
            r4 = r0
            goto L_0x0020
        L_0x001e:
            r0 = 0
            r4 = r0
        L_0x0020:
            java.lang.Class<com.privacystar.core.service.blocking.CallState> r0 = com.privacystar.core.service.blocking.CallState.class
            monitor-exit(r0)
            r0 = r4
            return r0
        L_0x0025:
            r5 = move-exception
            java.lang.Class<com.privacystar.core.service.blocking.CallState> r0 = com.privacystar.core.service.blocking.CallState.class
            monitor-exit(r0)
            r0 = r5
            throw r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.privacystar.core.service.blocking.CallState.looksLikeOutgoingCall():boolean");
    }

    public static boolean moveToState(int i) {
        boolean isValidStateTransition;
        synchronized (CallState.class) {
            try {
                isValidStateTransition = isValidStateTransition(i);
                if (isValidStateTransition) {
                    setCurrentState(i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return isValidStateTransition;
    }

    public static boolean moveToState(String str) {
        boolean moveToState;
        synchronized (CallState.class) {
            try {
                moveToState = moveToState(getStateFromString(str));
            } catch (Throwable th) {
                throw th;
            }
        }
        return moveToState;
    }

    private static void setCurrentState(int i) {
        synchronized (CallState.class) {
            try {
                lastState = currentState;
                currentState = i;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
