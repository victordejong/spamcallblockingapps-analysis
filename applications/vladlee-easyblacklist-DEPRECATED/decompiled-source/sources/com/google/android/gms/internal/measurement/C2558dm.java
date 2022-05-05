package com.google.android.gms.internal.measurement;

import java.util.Iterator;
import java.util.Map;
/* renamed from: com.google.android.gms.internal.measurement.dm */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/measurement/dm.class */
final class C2558dm<T> implements AbstractC2566du<T> {

    /* renamed from: a */
    private final zzgo f15994a;

    /* renamed from: b */
    private final AbstractC2585em<?, ?> f15995b;

    /* renamed from: c */
    private final boolean f15996c;

    /* renamed from: d */
    private final AbstractC2528cj<?> f15997d;

    private C2558dm(AbstractC2585em<?, ?> emVar, AbstractC2528cj<?> cjVar, zzgo zzgoVar) {
        this.f15995b = emVar;
        this.f15996c = cjVar.mo2862a(zzgoVar);
        this.f15997d = cjVar;
        this.f15994a = zzgoVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> C2558dm<T> m2754a(AbstractC2585em<?, ?> emVar, AbstractC2528cj<?> cjVar, zzgo zzgoVar) {
        return new C2558dm<>(emVar, cjVar, zzgoVar);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    public final int mo2740a(T t) {
        int hashCode = this.f15995b.mo2594b(t).hashCode();
        int i = hashCode;
        if (this.f15996c) {
            i = (hashCode * 53) + this.f15997d.mo2861a(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    public final T mo2741a() {
        return (T) this.f15994a.zzbs().zzt();
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    public final void mo2739a(T t, AbstractC2567dv dvVar, zzeq zzeqVar) {
        boolean z;
        AbstractC2585em<?, ?> emVar = this.f15995b;
        AbstractC2528cj<?> cjVar = this.f15997d;
        Object c = emVar.mo2590c(t);
        cjVar.mo2858b(t);
        do {
            try {
                if (dvVar.mo2731a() != Integer.MAX_VALUE) {
                    int b = dvVar.mo2726b();
                    if (b == 11) {
                        int i = 0;
                        Object obj = null;
                        zzdu zzduVar = null;
                        while (dvVar.mo2731a() != Integer.MAX_VALUE) {
                            int b2 = dvVar.mo2726b();
                            if (b2 == 16) {
                                i = dvVar.mo2698o();
                                obj = cjVar.mo2863a(zzeqVar, this.f15994a, i);
                            } else if (b2 == 26) {
                                if (obj != null) {
                                    cjVar.mo2859b();
                                } else {
                                    zzduVar = dvVar.mo2700n();
                                }
                            } else if (!dvVar.mo2722c()) {
                                break;
                            }
                        }
                        if (dvVar.mo2726b() != 12) {
                            throw zzfo.m2263e();
                        } else if (zzduVar != null) {
                            if (obj != null) {
                                cjVar.mo2856c();
                            } else {
                                emVar.mo2599a((AbstractC2585em<?, ?>) c, i, zzduVar);
                            }
                        }
                    } else if ((b & 7) != 2) {
                        z = dvVar.mo2722c();
                    } else if (cjVar.mo2863a(zzeqVar, this.f15994a, b >>> 3) != null) {
                        cjVar.mo2859b();
                    } else {
                        z = emVar.m2604a((AbstractC2585em<?, ?>) c, dvVar);
                    }
                    z = true;
                } else {
                    return;
                }
            } finally {
                emVar.mo2591b((Object) t, (T) c);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    public final void mo2738a(T t, AbstractC2606fc fcVar) {
        Iterator<Map.Entry<?, Object>> d = this.f15997d.mo2861a(t).m2839d();
        while (d.hasNext()) {
            Map.Entry<?, Object> next = d.next();
            zzey zzeyVar = (zzey) next.getKey();
            if (zzeyVar.zzc() != zzip.MESSAGE || zzeyVar.zzd() || zzeyVar.zze()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            fcVar.mo2505a(zzeyVar.zza(), next instanceof C2539cu ? ((C2539cu) next).m2824a().zzc() : next.getValue());
        }
        AbstractC2585em<?, ?> emVar = this.f15995b;
        emVar.mo2592b((AbstractC2585em<?, ?>) emVar.mo2594b(t), fcVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147 A[EDGE_INSN: B:65:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo2736a(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.measurement.C2511bt r12) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.measurement.C2558dm.mo2736a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.measurement.bt):void");
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: a */
    public final boolean mo2737a(T t, T t2) {
        if (!this.f15995b.mo2594b(t).equals(this.f15995b.mo2594b(t2))) {
            return false;
        }
        if (this.f15996c) {
            return this.f15997d.mo2861a(t).equals(this.f15997d.mo2861a(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: b */
    public final int mo2735b(T t) {
        AbstractC2585em<?, ?> emVar = this.f15995b;
        int e = emVar.mo2587e(emVar.mo2594b(t)) + 0;
        int i = e;
        if (this.f15996c) {
            i = e + this.f15997d.mo2861a(t).m2836g();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: b */
    public final void mo2734b(T t, T t2) {
        C2568dw.m2678a(this.f15995b, t, t2);
        if (this.f15996c) {
            C2568dw.m2680a(this.f15997d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: c */
    public final void mo2733c(T t) {
        this.f15995b.mo2588d(t);
        this.f15997d.mo2855c(t);
    }

    @Override // com.google.android.gms.internal.measurement.AbstractC2566du
    /* renamed from: d */
    public final boolean mo2732d(T t) {
        return this.f15997d.mo2861a(t).m2837f();
    }
}
