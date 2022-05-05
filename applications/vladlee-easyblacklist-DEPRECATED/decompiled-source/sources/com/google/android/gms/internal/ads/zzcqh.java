package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.res.Resources;
import android.util.DisplayMetrics;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcqh.class */
public final class zzcqh implements zzcub<zzcqe> {

    /* renamed from: a */
    private final zzcub<zzcue> f13731a;

    /* renamed from: b */
    private final zzczu f13732b;

    /* renamed from: c */
    private final Context f13733c;

    /* renamed from: d */
    private final zzave f13734d;

    public zzcqh(zzcrk<zzcue> zzcrkVar, zzczu zzczuVar, Context context, zzave zzaveVar) {
        this.f13731a = zzcrkVar;
        this.f13732b = zzczuVar;
        this.f13733c = context;
        this.f13734d = zzaveVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcqe m3705a() {
        boolean z;
        String str;
        float f;
        String str2;
        int i;
        int i2;
        zzuj[] zzujVarArr;
        DisplayMetrics displayMetrics;
        zzuj zzujVar = this.f13732b.zzblm;
        if (zzujVar.zzccp != null) {
            zzuj[] zzujVarArr2 = zzujVar.zzccp;
            int length = zzujVarArr2.length;
            String str3 = null;
            int i3 = 0;
            boolean z2 = false;
            boolean z3 = false;
            boolean z4 = false;
            while (true) {
                str = str3;
                z = z4;
                if (i3 >= length) {
                    break;
                }
                zzuj zzujVar2 = zzujVarArr2[i3];
                boolean z5 = z2;
                String str4 = str3;
                if (!zzujVar2.zzccq) {
                    z5 = z2;
                    str4 = str3;
                    if (!z2) {
                        str4 = zzujVar2.zzabg;
                        z5 = true;
                    }
                }
                boolean z6 = z3;
                boolean z7 = z4;
                if (zzujVar2.zzccq) {
                    z6 = z3;
                    z7 = z4;
                    if (!z3) {
                        z6 = true;
                        z7 = true;
                    }
                }
                if (z5) {
                    str = str4;
                    z = z7;
                    if (z6) {
                        break;
                    }
                }
                i3++;
                z2 = z5;
                z3 = z6;
                str3 = str4;
                z4 = z7;
            }
        } else {
            str = zzujVar.zzabg;
            z = zzujVar.zzccq;
        }
        Resources resources = this.f13733c.getResources();
        if (resources == null || (displayMetrics = resources.getDisplayMetrics()) == null) {
            str2 = null;
            f = 0.0f;
            i = 0;
            i2 = 0;
        } else {
            f = displayMetrics.density;
            i = displayMetrics.widthPixels;
            i2 = displayMetrics.heightPixels;
            str2 = this.f13734d.zzvf().zzwg();
        }
        StringBuilder sb = new StringBuilder();
        if (zzujVar.zzccp != null) {
            boolean z8 = false;
            for (zzuj zzujVar3 : zzujVar.zzccp) {
                if (zzujVar3.zzccq) {
                    z8 = true;
                } else {
                    if (sb.length() != 0) {
                        sb.append("|");
                    }
                    sb.append((zzujVar3.width != -1 || f == 0.0f) ? zzujVar3.width : (int) (zzujVar3.widthPixels / f));
                    sb.append("x");
                    sb.append((zzujVar3.height != -2 || f == 0.0f) ? zzujVar3.height : (int) (zzujVar3.heightPixels / f));
                }
            }
            if (z8) {
                if (sb.length() != 0) {
                    sb.insert(0, "|");
                }
                sb.insert(0, "320x50");
            }
        }
        return new zzcqe(zzujVar, str, z, sb.toString(), f, i, i2, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcqe> zzanc() {
        return zzdgs.zzb(this.f13731a.zzanc(), new zzded(this) { // from class: com.google.android.gms.internal.ads.vo

            /* renamed from: a */
            private final zzcqh f10628a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10628a = this;
            }

            @Override // com.google.android.gms.internal.ads.zzded
            public final Object apply(Object obj) {
                return this.f10628a.m3705a();
            }
        }, zzazd.zzdwj);
    }
}
