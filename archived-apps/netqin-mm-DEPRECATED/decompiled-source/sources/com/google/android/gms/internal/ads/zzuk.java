package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.ch0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzuk.class */
public enum zzuk implements zzeke {
    ENUM_FALSE(0),
    ENUM_TRUE(1),
    ENUM_UNKNOWN(1000);
    
    public static final zzekd<zzuk> zzes = new zzekd<zzuk>() { // from class: c.d.b.d.g.a.dh0
    };
    public final int value;

    zzuk(int i) {
        this.value = i;
    }

    public static zzuk zzcg(int i) {
        if (i == 0) {
            return ENUM_FALSE;
        }
        if (i == 1) {
            return ENUM_TRUE;
        }
        if (i != 1000) {
            return null;
        }
        return ENUM_UNKNOWN;
    }

    public static zzekg zzw() {
        return ch0.f12560a;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzuk.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzeke
    public final int zzv() {
        return this.value;
    }
}
