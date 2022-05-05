package com.google.android.gms.internal.ads;

import java.util.Iterator;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aiz.class */
final class aiz<T> implements ajo<T> {

    /* renamed from: a */
    private final zzdte f7455a;

    /* renamed from: b */
    private final ake<?, ?> f7456b;

    /* renamed from: c */
    private final boolean f7457c;

    /* renamed from: d */
    private final ahw<?> f7458d;

    private aiz(ake<?, ?> akeVar, ahw<?> ahwVar, zzdte zzdteVar) {
        this.f7456b = akeVar;
        this.f7457c = ahwVar.mo5361a(zzdteVar);
        this.f7458d = ahwVar;
        this.f7455a = zzdteVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static <T> aiz<T> m5253a(ake<?, ?> akeVar, ahw<?> ahwVar, zzdte zzdteVar) {
        return new aiz<>(akeVar, ahwVar, zzdteVar);
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    public final int mo5183a(T t) {
        int hashCode = this.f7456b.mo5080b(t).hashCode();
        int i = hashCode;
        if (this.f7457c) {
            i = (hashCode * 53) + this.f7458d.mo5360a(t).hashCode();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    public final T mo5184a() {
        return (T) this.f7455a.zzazy().zzbae();
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    public final void mo5182a(T t, aji ajiVar, zzdrg zzdrgVar) {
        boolean z;
        ake<?, ?> akeVar = this.f7456b;
        ahw<?> ahwVar = this.f7458d;
        Object c = akeVar.mo5076c(t);
        ahwVar.mo5357b(t);
        do {
            try {
                if (ajiVar.mo5235a() != Integer.MAX_VALUE) {
                    int b = ajiVar.mo5230b();
                    if (b == 11) {
                        int i = 0;
                        Object obj = null;
                        zzdqk zzdqkVar = null;
                        while (ajiVar.mo5235a() != Integer.MAX_VALUE) {
                            int b2 = ajiVar.mo5230b();
                            if (b2 == 16) {
                                i = ajiVar.mo5202o();
                                obj = ahwVar.mo5362a(zzdrgVar, this.f7455a, i);
                            } else if (b2 == 26) {
                                if (obj != null) {
                                    ahwVar.mo5358b();
                                } else {
                                    zzdqkVar = ajiVar.mo5204n();
                                }
                            } else if (!ajiVar.mo5226c()) {
                                break;
                            }
                        }
                        if (ajiVar.mo5230b() != 12) {
                            throw zzdse.m3343e();
                        } else if (zzdqkVar != null) {
                            if (obj != null) {
                                ahwVar.mo5355c();
                            } else {
                                akeVar.mo5085a((ake<?, ?>) c, i, zzdqkVar);
                            }
                        }
                    } else if ((b & 7) != 2) {
                        z = ajiVar.mo5226c();
                    } else if (ahwVar.mo5362a(zzdrgVar, this.f7455a, b >>> 3) != null) {
                        ahwVar.mo5358b();
                    } else {
                        z = akeVar.m5090a((ake<?, ?>) c, ajiVar);
                    }
                    z = true;
                } else {
                    return;
                }
            } finally {
                akeVar.mo5077b((Object) t, (T) c);
            }
        } while (z);
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    public final void mo5181a(T t, aku akuVar) {
        Iterator<Map.Entry<?, Object>> d = this.f7458d.mo5360a(t).m5338d();
        while (d.hasNext()) {
            Map.Entry<?, Object> next = d.next();
            zzdro zzdroVar = (zzdro) next.getKey();
            if (zzdroVar.zzazp() != zzdvm.MESSAGE || zzdroVar.zzazq() || zzdroVar.zzazr()) {
                throw new IllegalStateException("Found invalid MessageSet item.");
            }
            akuVar.mo4982a(zzdroVar.zzae(), next instanceof aih ? ((aih) next).m5324a().zzaxk() : next.getValue());
        }
        ake<?, ?> akeVar = this.f7456b;
        akeVar.mo5078b((ake<?, ?>) akeVar.mo5080b(t), akuVar);
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x0138  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x0147 A[EDGE_INSN: B:65:0x0147->B:38:0x0147 ?: BREAK  , SYNTHETIC] */
    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void mo5179a(T r8, byte[] r9, int r10, int r11, com.google.android.gms.internal.ads.ahc r12) {
        /*
            Method dump skipped, instructions count: 362
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.aiz.mo5179a(java.lang.Object, byte[], int, int, com.google.android.gms.internal.ads.ahc):void");
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: a */
    public final boolean mo5180a(T t, T t2) {
        if (!this.f7456b.mo5080b(t).equals(this.f7456b.mo5080b(t2))) {
            return false;
        }
        if (this.f7457c) {
            return this.f7458d.mo5360a(t).equals(this.f7458d.mo5360a(t2));
        }
        return true;
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: b */
    public final int mo5178b(T t) {
        ake<?, ?> akeVar = this.f7456b;
        int e = akeVar.mo5073e(akeVar.mo5080b(t)) + 0;
        int i = e;
        if (this.f7457c) {
            i = e + this.f7458d.mo5360a(t).m5335g();
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: b */
    public final void mo5177b(T t, T t2) {
        ajq.m5147a(this.f7456b, t, t2);
        if (this.f7457c) {
            ajq.m5149a(this.f7458d, t, t2);
        }
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: c */
    public final void mo5176c(T t) {
        this.f7456b.mo5074d(t);
        this.f7458d.mo5354c(t);
    }

    @Override // com.google.android.gms.internal.ads.ajo
    /* renamed from: d */
    public final boolean mo5175d(T t) {
        return this.f7458d.mo5360a(t).m5336f();
    }
}
