package com.google.firebase.crashlytics.internal.common;

import p131c.p161d.p282e.p289l.p290d.p304p.p305h.C5436b;
/* loaded from: classes2-dex2jar.jar:com/google/firebase/crashlytics/internal/common/DataTransportState.class */
public enum DataTransportState {
    NONE,
    JAVA_ONLY,
    ALL;
    
    public static final int REPORT_UPLOAD_VARIANT_DATATRANSPORT = 2;
    public static final int REPORT_UPLOAD_VARIANT_LEGACY = 1;

    public static DataTransportState getState(C5436b bVar) {
        boolean z = true;
        boolean z2 = bVar.f18403g == 2;
        if (bVar.f18404h != 2) {
            z = false;
        }
        return getState(z2, z);
    }

    public static DataTransportState getState(boolean z, boolean z2) {
        return !z ? NONE : !z2 ? JAVA_ONLY : ALL;
    }
}
