package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.common.util.VisibleForTesting;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzdor.class */
public final class zzdor {

    /* renamed from: a */
    public final zzdnv f27670a;

    /* renamed from: b */
    public final zzdnw f27671b;

    /* renamed from: c */
    public final zzcsp f27672c;

    /* renamed from: d */
    public final zzdst f27673d;

    @VisibleForTesting
    public zzdor(zzcsp zzcspVar, zzdst zzdstVar, zzdnv zzdnvVar, zzdnw zzdnwVar) {
        this.f27670a = zzdnvVar;
        this.f27671b = zzdnwVar;
        this.f27672c = zzcspVar;
        this.f27673d = zzdstVar;
    }

    /* renamed from: a */
    public final void m13400a(String str, int i) {
        if (!this.f27670a.f27589e0) {
            this.f27673d.m13237a(str);
            return;
        }
        this.f27672c.m13870a(new zzcsv(zzp.m17962j().mo17091b(), this.f27671b.f27612b, str, i));
    }

    /* renamed from: a */
    public final void m13399a(List<String> list) {
        for (String str : list) {
            m13400a(str, zzcsq.f26479b);
        }
    }

    /* JADX WARN: Incorrect types in method signature: (Ljava/util/List<Ljava/lang/String;>;Ljava/lang/Integer;)V */
    /* renamed from: a */
    public final void m13398a(List list, int i) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            m13400a((String) it.next(), i);
        }
    }
}
