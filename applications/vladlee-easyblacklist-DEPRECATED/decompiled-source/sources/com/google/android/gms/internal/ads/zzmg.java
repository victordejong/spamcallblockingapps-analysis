package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzmg.class */
public final class zzmg implements zzmb {

    /* renamed from: a */
    private final zzmb[] f15126a;

    /* renamed from: b */
    private final ArrayList<zzmb> f15127b;

    /* renamed from: d */
    private zzme f15129d;

    /* renamed from: e */
    private zzhg f15130e;

    /* renamed from: f */
    private Object f15131f;

    /* renamed from: h */
    private zzmi f15133h;

    /* renamed from: c */
    private final zzhl f15128c = new zzhl();

    /* renamed from: g */
    private int f15132g = -1;

    public zzmg(zzmb... zzmbVarArr) {
        this.f15126a = zzmbVarArr;
        this.f15127b = new ArrayList<>(Arrays.asList(zzmbVarArr));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public static /* synthetic */ void m3186a(zzmg zzmgVar, int i, zzhg zzhgVar, Object obj) {
        zzmi zzmiVar;
        if (zzmgVar.f15133h == null) {
            int zzev = zzhgVar.zzev();
            int i2 = 0;
            while (true) {
                if (i2 >= zzev) {
                    if (zzmgVar.f15132g == -1) {
                        zzmgVar.f15132g = zzhgVar.zzew();
                    } else if (zzhgVar.zzew() != zzmgVar.f15132g) {
                        zzmiVar = new zzmi(1);
                    }
                    zzmiVar = null;
                } else if (zzhgVar.zza(i2, zzmgVar.f15128c, false).zzagv) {
                    zzmiVar = new zzmi(0);
                    break;
                } else {
                    i2++;
                }
            }
            zzmgVar.f15133h = zzmiVar;
        }
        if (zzmgVar.f15133h == null) {
            zzmgVar.f15127b.remove(zzmgVar.f15126a[i]);
            if (i == 0) {
                zzmgVar.f15130e = zzhgVar;
                zzmgVar.f15131f = obj;
            }
            if (zzmgVar.f15127b.isEmpty()) {
                zzmgVar.f15129d.zzb(zzmgVar.f15130e, zzmgVar.f15131f);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final zzlz zza(int i, zznj zznjVar) {
        zzlz[] zzlzVarArr = new zzlz[this.f15126a.length];
        for (int i2 = 0; i2 < zzlzVarArr.length; i2++) {
            zzlzVarArr[i2] = this.f15126a[i2].zza(i, zznjVar);
        }
        return new aot(zzlzVarArr);
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zza(zzgk zzgkVar, boolean z, zzme zzmeVar) {
        this.f15129d = zzmeVar;
        int i = 0;
        while (true) {
            zzmb[] zzmbVarArr = this.f15126a;
            if (i < zzmbVarArr.length) {
                zzmbVarArr[i].zza(zzgkVar, false, new aou(this, i));
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zzb(zzlz zzlzVar) {
        aot aotVar = (aot) zzlzVar;
        int i = 0;
        while (true) {
            zzmb[] zzmbVarArr = this.f15126a;
            if (i < zzmbVarArr.length) {
                zzmbVarArr[i].zzb(aotVar.f8048a[i]);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zzhr() {
        zzmi zzmiVar = this.f15133h;
        if (zzmiVar == null) {
            for (zzmb zzmbVar : this.f15126a) {
                zzmbVar.zzhr();
            }
            return;
        }
        throw zzmiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzmb
    public final void zzhs() {
        for (zzmb zzmbVar : this.f15126a) {
            zzmbVar.zzhs();
        }
    }
}
