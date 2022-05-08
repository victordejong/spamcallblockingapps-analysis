package com.google.android.gms.internal.ads;

import android.net.Uri;
import java.io.EOFException;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/aoq.class */
final class aoq {

    /* renamed from: a */
    private final zzjd[] f8033a;

    /* renamed from: b */
    private final zzjf f8034b;

    /* renamed from: c */
    private zzjd f8035c;

    public aoq(zzjd[] zzjdVarArr, zzjf zzjfVar) {
        this.f8033a = zzjdVarArr;
        this.f8034b = zzjfVar;
    }

    /* renamed from: a */
    public final zzjd m4795a(zzjg zzjgVar, Uri uri) {
        zzjd zzjdVar = this.f8035c;
        if (zzjdVar != null) {
            return zzjdVar;
        }
        zzjd[] zzjdVarArr = this.f8033a;
        int length = zzjdVarArr.length;
        int i = 0;
        while (true) {
            if (i >= length) {
                break;
            }
            zzjd zzjdVar2 = zzjdVarArr[i];
            try {
            } catch (EOFException e) {
            } catch (Throwable th) {
                zzjgVar.zzgi();
                throw th;
            }
            if (zzjdVar2.zza(zzjgVar)) {
                this.f8035c = zzjdVar2;
                zzjgVar.zzgi();
                break;
            }
            continue;
            zzjgVar.zzgi();
            i++;
        }
        zzjd zzjdVar3 = this.f8035c;
        if (zzjdVar3 != null) {
            zzjdVar3.zza(this.f8034b);
            return this.f8035c;
        }
        String zza = zzoq.zza(this.f8033a);
        StringBuilder sb = new StringBuilder(String.valueOf(zza).length() + 58);
        sb.append("None of the available extractors (");
        sb.append(zza);
        sb.append(") could read the stream.");
        throw new zzmu(sb.toString(), uri);
    }

    /* renamed from: a */
    public final void m4796a() {
        zzjd zzjdVar = this.f8035c;
        if (zzjdVar != null) {
            zzjdVar.release();
            this.f8035c = null;
        }
    }
}
