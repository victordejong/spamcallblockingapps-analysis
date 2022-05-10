package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.content.Context;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.google.android.gms.ads.internal.zzp;
import java.util.Map;
/* loaded from: classes-dex2jar.jar:com/google/android/gms/internal/ads/zzaqo.class */
public final class zzaqo extends zzaqn implements zzahq<zzbgj> {

    /* renamed from: c */
    public final zzbgj f24297c;

    /* renamed from: d */
    public final Context f24298d;

    /* renamed from: e */
    public final WindowManager f24299e;

    /* renamed from: f */
    public final zzaam f24300f;

    /* renamed from: g */
    public DisplayMetrics f24301g;

    /* renamed from: h */
    public float f24302h;

    /* renamed from: k */
    public int f24305k;

    /* renamed from: i */
    public int f24303i = -1;

    /* renamed from: j */
    public int f24304j = -1;

    /* renamed from: l */
    public int f24306l = -1;

    /* renamed from: m */
    public int f24307m = -1;

    /* renamed from: n */
    public int f24308n = -1;

    /* renamed from: o */
    public int f24309o = -1;

    public zzaqo(zzbgj zzbgjVar, Context context, zzaam zzaamVar) {
        super(zzbgjVar);
        this.f24297c = zzbgjVar;
        this.f24298d = context;
        this.f24300f = zzaamVar;
        this.f24299e = (WindowManager) context.getSystemService("window");
    }

    /* renamed from: a */
    public final void m16424a(int i, int i2) {
        int i3 = 0;
        if (this.f24298d instanceof Activity) {
            i3 = zzp.m17969c().m16114b((Activity) this.f24298d)[0];
        }
        if (this.f24297c.mo15517c() == null || !this.f24297c.mo15517c().m15510b()) {
            int width = this.f24297c.getWidth();
            int height = this.f24297c.getHeight();
            int i4 = width;
            int i5 = height;
            if (((Boolean) zzwm.m11166e().m16921a(zzabb.f23688I)).booleanValue()) {
                int i6 = width;
                if (width == 0) {
                    i6 = width;
                    if (this.f24297c.mo15517c() != null) {
                        i6 = this.f24297c.mo15517c().f25003c;
                    }
                }
                i4 = i6;
                i5 = height;
                if (height == 0) {
                    i4 = i6;
                    i5 = height;
                    if (this.f24297c.mo15517c() != null) {
                        i5 = this.f24297c.mo15517c().f25002b;
                        i4 = i6;
                    }
                }
            }
            this.f24308n = zzwm.m11170a().m15910a(this.f24298d, i4);
            this.f24309o = zzwm.m11170a().m15910a(this.f24298d, i5);
        }
        m16427b(i, i2 - i3, this.f24308n, this.f24309o);
        this.f24297c.mo15543z().mo15499a(i, i2);
    }

    @Override // com.google.android.gms.internal.ads.zzahq
    /* renamed from: a */
    public final /* synthetic */ void mo14168a(zzbgj zzbgjVar, Map map) {
        this.f24301g = new DisplayMetrics();
        Display defaultDisplay = this.f24299e.getDefaultDisplay();
        defaultDisplay.getMetrics(this.f24301g);
        this.f24302h = this.f24301g.density;
        this.f24305k = defaultDisplay.getRotation();
        zzwm.m11170a();
        DisplayMetrics displayMetrics = this.f24301g;
        this.f24303i = zzbbg.m15896b(displayMetrics, displayMetrics.widthPixels);
        zzwm.m11170a();
        DisplayMetrics displayMetrics2 = this.f24301g;
        this.f24304j = zzbbg.m15896b(displayMetrics2, displayMetrics2.heightPixels);
        Activity b = this.f24297c.mo15528b();
        if (b == null || b.getWindow() == null) {
            this.f24306l = this.f24303i;
            this.f24307m = this.f24304j;
        } else {
            zzp.m17969c();
            int[] c = zzayu.m16104c(b);
            zzwm.m11170a();
            this.f24306l = zzbbg.m15896b(this.f24301g, c[0]);
            zzwm.m11170a();
            this.f24307m = zzbbg.m15896b(this.f24301g, c[1]);
        }
        if (this.f24297c.mo15517c().m15510b()) {
            this.f24308n = this.f24303i;
            this.f24309o = this.f24304j;
        } else {
            this.f24297c.measure(0, 0);
        }
        m16429a(this.f24303i, this.f24304j, this.f24306l, this.f24307m, this.f24302h, this.f24305k);
        zzaql zzaqlVar = new zzaql();
        zzaqlVar.m16437b(this.f24300f.m16948a());
        zzaqlVar.m16439a(this.f24300f.m16946b());
        zzaqlVar.m16435c(this.f24300f.m16944d());
        zzaqlVar.m16433d(this.f24300f.m16945c());
        zzaqlVar.m16431e(true);
        this.f24297c.mo15576a("onDeviceFeaturesReceived", new zzaqj(zzaqlVar).m16441a());
        int[] iArr = new int[2];
        this.f24297c.getLocationOnScreen(iArr);
        m16424a(zzwm.m11170a().m15910a(this.f24298d, iArr[0]), zzwm.m11170a().m15910a(this.f24298d, iArr[1]));
        if (zzbbq.m15859a(2)) {
            zzbbq.m15854c("Dispatching Ready Event.");
        }
        m16426b(this.f24297c.mo15516a().f24759a);
    }
}
