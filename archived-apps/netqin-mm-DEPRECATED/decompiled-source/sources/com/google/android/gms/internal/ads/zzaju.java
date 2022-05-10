package com.google.android.gms.internal.ads;

import android.content.Context;
import com.android.volley.Request;
import com.google.android.gms.ads.internal.zzp;
import com.google.android.gms.internal.ads.zzaju;
import java.util.Map;
import org.json.JSONObject;
import p131c.p161d.p170b.p224d.p252g.p253a.C3339a1;
import p131c.p161d.p170b.p224d.p252g.p253a.C4235y0;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaju.class */
public final class zzaju extends zzakd<zzalp> implements zzajz, zzaki {

    /* renamed from: c */
    public final zzbim f24153c;

    /* renamed from: d */
    public zzakh f24154d;

    public zzaju(Context context, zzbbx zzbbxVar) throws zzbgv {
        try {
            zzbim zzbimVar = new zzbim(context, new C3339a1(this, null));
            this.f24153c = zzbimVar;
            zzbimVar.setWillNotDraw(true);
            this.f24153c.addJavascriptInterface(new C4235y0(this), "GoogleJsInterface");
            zzp.m17969c().m16140a(context, zzbbxVar.f24759a, this.f24153c.getSettings());
            super.m16710a(this);
        } catch (Throwable th) {
            throw new zzbgv("Init failed.", th);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: a */
    public final void mo16701a(zzakh zzakhVar) {
        this.f24154d = zzakhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzajz, com.google.android.gms.internal.ads.zzaks
    /* renamed from: a */
    public final void mo15582a(final String str) {
        zzbbz.f24768e.execute(new Runnable(this, str) { // from class: c.d.b.d.g.a.w0

            /* renamed from: a */
            public final zzaju f15893a;

            /* renamed from: b */
            public final String f15894b;

            {
                this.f15893a = this;
                this.f15894b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15893a.m16719g(this.f15894b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzajz
    /* renamed from: a */
    public final void mo16672a(String str, String str2) {
        zzakc.m16716a(this, str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15577a(String str, Map map) {
        zzakc.m16715a(this, str, map);
    }

    @Override // com.google.android.gms.internal.ads.zzajz, com.google.android.gms.internal.ads.zzajr
    /* renamed from: a */
    public final void mo15576a(String str, JSONObject jSONObject) {
        zzakc.m16713b(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: b */
    public final void mo16698b(final String str) {
        zzbbz.f24768e.execute(new Runnable(this, str) { // from class: c.d.b.d.g.a.x0

            /* renamed from: a */
            public final zzaju f15983a;

            /* renamed from: b */
            public final String f15984b;

            {
                this.f15983a = this;
                this.f15984b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15983a.m16718h(this.f15984b);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzaks
    /* renamed from: b */
    public final void mo15569b(String str, JSONObject jSONObject) {
        zzakc.m16714a(this, str, jSONObject);
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: c */
    public final void mo16697c(String str) {
        mo16696e(String.format("<!DOCTYPE html><html><head><script src=\"%s\"></script></head></html>", str));
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    public final void destroy() {
        this.f24153c.destroy();
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: e */
    public final void mo16696e(final String str) {
        zzbbz.f24768e.execute(new Runnable(this, str) { // from class: c.d.b.d.g.a.v0

            /* renamed from: a */
            public final zzaju f15687a;

            /* renamed from: b */
            public final String f15688b;

            {
                this.f15687a = this;
                this.f15688b = str;
            }

            @Override // java.lang.Runnable
            public final void run() {
                this.f15687a.m16717i(this.f15688b);
            }
        });
    }

    /* renamed from: g */
    public final /* synthetic */ void m16719g(String str) {
        this.f24153c.mo15582a(str);
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: g */
    public final boolean mo16694g() {
        return this.f24153c.m15452g();
    }

    /* renamed from: h */
    public final /* synthetic */ void m16718h(String str) {
        this.f24153c.loadUrl(str);
    }

    /* renamed from: i */
    public final /* synthetic */ void m16717i(String str) {
        this.f24153c.loadData(str, "text/html", Request.DEFAULT_PARAMS_ENCODING);
    }

    @Override // com.google.android.gms.internal.ads.zzaki
    /* renamed from: n */
    public final zzals mo16693n() {
        return new zzalr(this);
    }
}
