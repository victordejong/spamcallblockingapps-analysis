package com.google.android.gms.internal.measurement;
/* renamed from: com.google.android.gms.internal.measurement.em */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/em.class */
abstract class AbstractC2585em<T, B> {
    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract B mo2603a();

    /* renamed from: a */
    abstract T mo2602a(B b);

    /* renamed from: a */
    abstract void mo2601a(B b, int i, int i2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo2600a(B b, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo2599a(B b, int i, zzdu zzduVar);

    /* renamed from: a */
    abstract void mo2598a(B b, int i, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo2597a(T t, AbstractC2606fc fcVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public abstract void mo2595a(Object obj, T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final boolean m2604a(B b, AbstractC2567dv dvVar) {
        int b2 = dvVar.mo2726b();
        int i = b2 >>> 3;
        int i2 = b2 & 7;
        if (i2 == 0) {
            mo2600a((AbstractC2585em<T, B>) b, i, dvVar.mo2714g());
            return true;
        } else if (i2 == 1) {
            mo2593b(b, i, dvVar.mo2710i());
            return true;
        } else if (i2 == 2) {
            mo2599a((AbstractC2585em<T, B>) b, i, dvVar.mo2700n());
            return true;
        } else if (i2 == 3) {
            B a = mo2603a();
            while (dvVar.mo2731a() != Integer.MAX_VALUE && m2604a((AbstractC2585em<T, B>) a, dvVar)) {
            }
            if ((4 | (i << 3)) == dvVar.mo2726b()) {
                mo2598a((AbstractC2585em<T, B>) b, i, (int) mo2602a(a));
                return true;
            }
            throw zzfo.m2263e();
        } else if (i2 == 4) {
            return false;
        } else {
            if (i2 == 5) {
                mo2601a((AbstractC2585em<T, B>) b, i, dvVar.mo2708j());
                return true;
            }
            throw zzfo.m2262f();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract T mo2594b(Object obj);

    /* renamed from: b */
    abstract void mo2593b(B b, int i, long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract void mo2592b(T t, AbstractC2606fc fcVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract void mo2591b(Object obj, B b);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract B mo2590c(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract T mo2589c(T t, T t2);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public abstract void mo2588d(Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public abstract int mo2587e(T t);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public abstract int mo2586f(T t);
}
