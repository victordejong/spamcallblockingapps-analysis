package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.internal.ads.zzby;
import com.google.android.gms.internal.ads.zzcf;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzed.class */
public final class zzed extends zzdy {
    public zzed(Context context, String str, boolean z, int i) {
        super(context, str, z, i);
    }

    /* renamed from: a */
    public static zzed m12873a(String str, Context context, boolean z) {
        return m12872b(str, context, false, zzcw.f26613a);
    }

    /* renamed from: b */
    public static zzed m12872b(String str, Context context, boolean z, int i) {
        zzdy.m13020a(context, z);
        zzdy.m13015a(str, context, z, i);
        return new zzed(context, str, z, i);
    }

    @Override // com.google.android.gms.internal.ads.zzdy
    /* renamed from: a */
    public final List<Callable<Void>> mo12874a(zzex zzexVar, Context context, zzcf.zza.C10493zza zzaVar, zzby.zza zzaVar2) {
        if (zzexVar.m12160e() == null || !this.f27952u) {
            return super.mo12874a(zzexVar, context, zzaVar, zzaVar2);
        }
        int c = zzexVar.m12162c();
        ArrayList arrayList = new ArrayList();
        arrayList.addAll(super.mo12874a(zzexVar, context, zzaVar, zzaVar2));
        arrayList.add(new zzfr(zzexVar, "mLW4WfBtN0b1ZboDT/Xcg0iQ140V7G6lHXVBVeBNgLy2jqsT86h2d5npN9bwHugA", "7PTXHfesCwrygeE6a5SpFPYapA+6N5AjzCxH/Yeev9s=", zzaVar, c, 24));
        return arrayList;
    }
}
