package com.google.android.datatransport.cct.internal;

import p131c.p161d.p170b.p173b.p174h.p175f.AbstractC2506a;
import p131c.p161d.p170b.p173b.p174h.p175f.C2519e;
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/ClientInfo.class */
public abstract class ClientInfo {

    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/ClientInfo$ClientType.class */
    public enum ClientType {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);
        
        public final int value;

        ClientType(int i) {
            this.value = i;
        }
    }

    /* renamed from: com.google.android.datatransport.cct.internal.ClientInfo$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/internal/ClientInfo$a.class */
    public static abstract class AbstractC7116a {
        /* renamed from: a */
        public abstract AbstractC7116a mo18750a(AbstractC2506a aVar);

        /* renamed from: a */
        public abstract AbstractC7116a mo18749a(ClientType clientType);

        /* renamed from: a */
        public abstract ClientInfo mo18751a();
    }

    /* renamed from: c */
    public static AbstractC7116a m18752c() {
        return new C2519e.C2521b();
    }

    /* renamed from: a */
    public abstract AbstractC2506a mo18754a();

    /* renamed from: b */
    public abstract ClientType mo18753b();
}
