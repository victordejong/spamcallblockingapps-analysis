package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzip.class */
public class zzip {

    /* renamed from: a */
    private int f14942a;

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: a */
    public final boolean m3228a(int i) {
        return (this.f14942a & i) == i;
    }

    public void clear() {
        this.f14942a = 0;
    }

    public final void setFlags(int i) {
        this.f14942a = i;
    }

    public final boolean zzga() {
        return m3228a(Integer.MIN_VALUE);
    }

    public final boolean zzgb() {
        return m3228a(4);
    }

    public final boolean zzgc() {
        return m3228a(1);
    }

    public final void zzw(int i) {
        this.f14942a |= Integer.MIN_VALUE;
    }
}
