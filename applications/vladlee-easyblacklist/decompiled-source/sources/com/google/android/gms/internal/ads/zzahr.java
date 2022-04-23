package com.google.android.gms.internal.ads;

import android.content.Context;
import com.google.android.gms.ads.internal.zzq;
import java.util.Map;
import javax.annotation.ParametersAreNonnullByDefault;
import org.json.JSONObject;
@ParametersAreNonnullByDefault
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzahr.class */
public final class zzahr extends zzaie<zzajq> implements zzaia, zzaif {

    /* renamed from: a */
    private final zzbfm f10928a;

    /* renamed from: b */
    private zzaii f10929b;

    public zzahr(Context context, zzazb zzazbVar) {
        try {
            this.f10928a = new zzbfm(context, new C1716ab(this, (byte) 0));
            this.f10928a.setWillNotDraw(true);
            this.f10928a.addJavascriptInterface(new C1717ac(this, (byte) 0), "GoogleJsInterface");
            zzq.zzkq().zza(context, zzazbVar.zzbma, this.f10928a.getSettings());
            super.zzg(this);
        } catch (Throwable th) {
            throw new zzbdv("Init failed.", th);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public final /* synthetic */ void m4402a(String str) {
        this.f10928a.zzcy(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public final /* synthetic */ void m4401b(String str) {
        this.f10928a.loadUrl(str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public final /* synthetic */ void m4400c(String str) {
        this.f10928a.loadData(str, "text/html", "UTF-8");
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void destroy() {
        this.f10928a.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final boolean isDestroyed() {
        return this.f10928a.isDestroyed();
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zza(zzaii zzaiiVar) {
        this.f10929b = zzaiiVar;
    }

    @Override // com.google.android.gms.internal.ads.zzahs
    public final void zza(String str, Map map) {
        zzahz.zza(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzaip
    public final void zza(String str, JSONObject jSONObject) {
        zzahz.zza(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaia, com.google.android.gms.internal.ads.zzahs
    public final void zzb(String str, JSONObject jSONObject) {
        zzahz.zzb(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzcv(String str) {
        zzcw(String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>", str));
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzcw(final String str) {
        zzazd.zzdwi.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.z

            /* renamed from: a */
            private final zzahr f10748a;

            /* renamed from: b */
            private final String f10749b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10748a = this;
                this.f10749b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10748a.m4400c(this.f10749b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final void zzcx(final String str) {
        zzazd.zzdwi.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.y

            /* renamed from: a */
            private final zzahr f10707a;

            /* renamed from: b */
            private final String f10708b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f10707a = this;
                this.f10708b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f10707a.m4401b(this.f10708b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaia, com.google.android.gms.internal.ads.zzaip
    public final void zzcy(final String str) {
        zzazd.zzdwi.execute(new Runnable(this, str) { // from class: com.google.android.gms.internal.ads.aa

            /* renamed from: a */
            private final zzahr f7116a;

            /* renamed from: b */
            private final String f7117b;

            /* JADX INFO: Access modifiers changed from: package-private */
            {
                this.f7116a = this;
                this.f7117b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f7116a.m4402a(this.f7117b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaia
    public final void zzj(String str, String str2) {
        zzahz.zza(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzaif
    public final zzajp zzrz() {
        return new zzajs(this);
    }
}
