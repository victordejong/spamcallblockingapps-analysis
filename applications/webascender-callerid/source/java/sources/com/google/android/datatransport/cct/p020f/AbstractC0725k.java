package com.google.android.datatransport.cct.p020f;

import com.google.android.datatransport.cct.f.e;
/* renamed from: com.google.android.datatransport.cct.f.k */
/* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/k.class */
public abstract class AbstractC0725k {

    /* renamed from: com.google.android.datatransport.cct.f.k$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/k$a.class */
    public static abstract class AbstractC0726a {
        /* renamed from: a */
        public abstract AbstractC0725k m3898a();

        /* renamed from: b */
        public abstract AbstractC0726a m3897b(AbstractC0722a abstractC0722a);

        /* renamed from: c */
        public abstract AbstractC0726a m3896c(EnumC0727b enumC0727b);
    }

    /* renamed from: com.google.android.datatransport.cct.f.k$b */
    /* loaded from: classes-dex2jar.jar:com/google/android/datatransport/cct/f/k$b.class */
    public enum EnumC0727b {
        UNKNOWN(0),
        ANDROID_FIREBASE(23);
        
        private final int value;

        EnumC0727b(int i) {
            this.value = i;
        }
    }

    /* renamed from: a */
    public static AbstractC0726a m3901a() {
        return new e.b();
    }

    /* renamed from: b */
    public abstract AbstractC0722a m3900b();

    /* renamed from: c */
    public abstract EnumC0727b m3899c();
}
