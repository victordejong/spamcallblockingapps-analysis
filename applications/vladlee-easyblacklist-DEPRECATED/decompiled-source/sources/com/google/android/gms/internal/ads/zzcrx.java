package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcrx.class */
public final class zzcrx implements zzcub<zzcru> {

    /* renamed from: a */
    private final Context f13801a;

    /* renamed from: b */
    private final zzdhd f13802b;

    public zzcrx(Context context, zzdhd zzdhdVar) {
        this.f13801a = context;
        this.f13802b = zzdhdVar;
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcru> zzanc() {
        return this.f13802b.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.we

            /* renamed from: a */
            private final zzcrx f10649a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10649a = this;
            }

            /* JADX WARN: Code restructure failed: missing block: B:9:0x0039, code lost:
                if (com.google.android.gms.ads.internal.zzq.zzku().zzvf().zzvw() == false) goto L_0x003c;
             */
            @Override // java.util.concurrent.Callable
            /*
                Code decompiled incorrectly, please refer to instructions dump.
                To view partially-correct add '--show-bad-code' argument
            */
            public final java.lang.Object call() {
                /*
                    Method dump skipped, instructions count: 300
                    To view this dump add '--comments-level debug' option
                */
                throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.CallableC2326we.call():java.lang.Object");
            }
        });
    }
}
