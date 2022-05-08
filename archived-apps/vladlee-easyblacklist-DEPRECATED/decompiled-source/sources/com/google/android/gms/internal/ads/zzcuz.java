package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.Callable;
import org.json.JSONObject;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzcuz.class */
public final class zzcuz implements zzcub<zzcuw> {

    /* renamed from: a */
    private final zzaqr f13935a;

    /* renamed from: b */
    private final Context f13936b;

    /* renamed from: c */
    private final String f13937c;

    /* renamed from: d */
    private final zzdhd f13938d;

    public zzcuz(zzaqr zzaqrVar, Context context, String str, zzdhd zzdhdVar) {
        this.f13935a = zzaqrVar;
        this.f13936b = context;
        this.f13937c = str;
        this.f13938d = zzdhdVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ zzcuw m3685a() {
        JSONObject jSONObject = new JSONObject();
        zzaqr zzaqrVar = this.f13935a;
        if (zzaqrVar != null) {
            zzaqrVar.zza(this.f13936b, this.f13937c, jSONObject);
        }
        return new zzcuw(jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzcub
    public final zzdhe<zzcuw> zzanc() {
        return this.f13938d.zzd(new Callable(this) { // from class: com.google.android.gms.internal.ads.xj

            /* renamed from: a */
            private final zzcuz f10688a;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10688a = this;
            }

            @Override // java.util.concurrent.Callable
            public final Object call() {
                return this.f10688a.m3685a();
            }
        });
    }
}
