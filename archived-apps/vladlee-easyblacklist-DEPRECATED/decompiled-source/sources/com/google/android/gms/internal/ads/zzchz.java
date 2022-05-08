package com.google.android.gms.internal.ads;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzchz.class */
public final class zzchz {

    /* renamed from: a */
    private int f13160a = 0;

    /* renamed from: b */
    private long f13161b = 0;

    /* renamed from: c */
    private long f13162c = 0;

    /* renamed from: d */
    private long f13163d = 0;

    /* renamed from: e */
    private final Object f13164e = new Object();

    /* renamed from: f */
    private final Object f13165f = new Object();

    /* renamed from: g */
    private final Object f13166g = new Object();

    /* renamed from: h */
    private final Object f13167h = new Object();

    public final int getResponseCode() {
        int i;
        synchronized (this.f13164e) {
            i = this.f13160a;
        }
        return i;
    }

    public final long zzaly() {
        long j;
        synchronized (this.f13165f) {
            j = this.f13161b;
        }
        return j;
    }

    public final long zzalz() {
        long j;
        synchronized (this) {
            synchronized (this.f13166g) {
                j = this.f13162c;
            }
        }
        return j;
    }

    public final long zzama() {
        long j;
        synchronized (this) {
            synchronized (this.f13167h) {
                j = this.f13163d;
            }
        }
        return j;
    }

    public final void zzdk(int i) {
        synchronized (this.f13164e) {
            this.f13160a = i;
        }
    }

    public final void zzeq(long j) {
        synchronized (this.f13165f) {
            this.f13161b = j;
        }
    }

    public final void zzer(long j) {
        synchronized (this) {
            synchronized (this.f13167h) {
                this.f13163d = j;
            }
        }
    }

    public final void zzfe(long j) {
        synchronized (this) {
            synchronized (this.f13166g) {
                this.f13162c = j;
            }
        }
    }
}
