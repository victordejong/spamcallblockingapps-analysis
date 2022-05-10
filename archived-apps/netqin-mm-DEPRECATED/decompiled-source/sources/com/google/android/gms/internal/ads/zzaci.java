package com.google.android.gms.internal.ads;

import p131c.p161d.p170b.p224d.p252g.p253a.C4012s;
import p131c.p161d.p170b.p224d.p252g.p253a.C4049t;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaci.class */
public class zzaci<T> {

    /* renamed from: a */
    public final String f23956a;

    /* renamed from: b */
    public final T f23957b;

    /* renamed from: c */
    public final int f23958c;

    /* JADX WARN: Incorrect types in method signature: (Ljava/lang/String;TT;Ljava/lang/Integer;)V */
    /* JADX WARN: Multi-variable type inference failed */
    public zzaci(String str, Object obj, int i) {
        this.f23956a = str;
        this.f23957b = obj;
        this.f23958c = i;
    }

    /* renamed from: a */
    public static zzaci<Double> m16866a(String str, double d) {
        return new zzaci<>(str, Double.valueOf(d), C4049t.f15334c);
    }

    /* renamed from: a */
    public static zzaci<Long> m16865a(String str, long j) {
        return new zzaci<>(str, Long.valueOf(j), C4049t.f15333b);
    }

    /* renamed from: a */
    public static zzaci<String> m16864a(String str, String str2) {
        return new zzaci<>(str, str2, C4049t.f15335d);
    }

    /* renamed from: a */
    public static zzaci<Boolean> m16863a(String str, boolean z) {
        return new zzaci<>(str, Boolean.valueOf(z), C4049t.f15332a);
    }

    /* renamed from: a */
    public T mo16862a() {
        zzadk a = zzadj.m16859a();
        if (a != null) {
            int i = C4012s.f15053a[this.f23958c - 1];
            if (i == 1) {
                return (T) a.mo16854a(this.f23956a, ((Boolean) this.f23957b).booleanValue());
            }
            if (i == 2) {
                return (T) a.mo16856a(this.f23956a, ((Long) this.f23957b).longValue());
            }
            if (i == 3) {
                return (T) a.mo16857a(this.f23956a, ((Double) this.f23957b).doubleValue());
            }
            if (i == 4) {
                return (T) a.mo16855a(this.f23956a, (String) this.f23957b);
            }
            throw new IllegalStateException();
        }
        throw new IllegalStateException("Flag is not initialized.");
    }
}
