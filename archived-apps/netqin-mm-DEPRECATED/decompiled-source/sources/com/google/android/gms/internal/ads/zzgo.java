package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzgo.class */
public enum zzgo implements zzeke {
    UNSUPPORTED(0),
    ARM7(2),
    X86(4),
    ARM64(5),
    X86_64(6);
    
    public static final zzekd<zzgo> zzes = new zzekd<zzgo>() { // from class: c.d.b.d.g.a.ob0
    };
    public final int value;

    zzgo(int i) {
        this.value = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return "<" + zzgo.class.getName() + '@' + Integer.toHexString(System.identityHashCode(this)) + " number=" + this.value + " name=" + name() + '>';
    }

    @Override // com.google.android.gms.internal.ads.zzeke
    public final int zzv() {
        return this.value;
    }
}
