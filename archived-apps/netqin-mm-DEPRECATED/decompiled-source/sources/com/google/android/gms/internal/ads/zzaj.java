package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaj.class */
public final class zzaj<T> {

    /* renamed from: a */
    public final T f24141a;

    /* renamed from: b */
    public final zzn f24142b;

    /* renamed from: c */
    public final zzao f24143c;

    /* renamed from: d */
    public boolean f24144d;

    public zzaj(zzao zzaoVar) {
        this.f24144d = false;
        this.f24141a = null;
        this.f24142b = null;
        this.f24143c = zzaoVar;
    }

    public zzaj(T t, zzn zznVar) {
        this.f24144d = false;
        this.f24141a = t;
        this.f24142b = zznVar;
        this.f24143c = null;
    }

    /* renamed from: a */
    public static <T> zzaj<T> m16731a(zzao zzaoVar) {
        return new zzaj<>(zzaoVar);
    }

    /* renamed from: a */
    public static <T> zzaj<T> m16730a(T t, zzn zznVar) {
        return new zzaj<>(t, zznVar);
    }

    /* renamed from: a */
    public final boolean m16732a() {
        return this.f24143c == null;
    }
}
