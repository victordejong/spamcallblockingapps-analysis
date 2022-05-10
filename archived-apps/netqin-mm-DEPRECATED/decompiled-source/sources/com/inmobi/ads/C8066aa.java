package com.inmobi.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.ads.AbstractC8213cb;
import com.inmobi.ads.C8197c;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import java.lang.ref.WeakReference;
/* renamed from: com.inmobi.ads.aa */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/aa.class */
public class C8066aa extends AbstractC8212ca {

    /* renamed from: d */
    public static final String f31558d = "aa";

    /* renamed from: e */
    public final WeakReference<Context> f31559e;

    /* renamed from: f */
    public final AbstractC8213cb f31560f;

    /* renamed from: g */
    public final C8094ai f31561g = new C8094ai(1);

    /* renamed from: h */
    public final C8083ah f31562h;

    public C8066aa(Context context, C8083ah ahVar, AbstractC8213cb cbVar) {
        super(ahVar);
        this.f31559e = new WeakReference<>(context);
        this.f31560f = cbVar;
        this.f31562h = ahVar;
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final View mo5941a(View view, ViewGroup viewGroup, boolean z) {
        View b = this.f31560f.mo5936b();
        if (b != null) {
            this.f31561g.m6465a(this.f31562h.m6492d(), b, this.f31562h);
        }
        return this.f31560f.mo5941a(view, viewGroup, z);
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5944a(int i) {
        this.f31560f.mo5944a(i);
    }

    /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:16:0x0036 -> B:20:0x0027). Please submit an issue!!! */
    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5943a(Context context, int i) {
        try {
            try {
            } catch (Exception e) {
                new StringBuilder("Exception in onActivityStateChanged with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            if (i == 0) {
                C8094ai.m6461b(context);
            } else if (i != 1) {
                if (i == 2) {
                    this.f31561g.m6466a(context);
                }
                this.f31560f.mo5943a(context, i);
            } else {
                C8094ai.m6460c(context);
            }
            this.f31560f.mo5943a(context, i);
        } catch (Throwable th) {
            this.f31560f.mo5943a(context, i);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: a */
    public final void mo5937a(View... viewArr) {
        try {
            try {
                Context context = this.f31559e.get();
                View b = this.f31560f.mo5936b();
                C8197c.C8209l lVar = this.f31560f.mo5935c().f31992k;
                C8083ah ahVar = (C8083ah) this.f32074a;
                if (!(context == null || b == null || ahVar.f31631l)) {
                    this.f31561g.m6463a(context, b, ahVar, lVar);
                    this.f31561g.m6464a(context, b, this.f31562h, this.f31562h.f31606A, lVar);
                }
            } catch (Exception e) {
                new StringBuilder("Exception in startTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31560f.mo5937a(viewArr);
        } catch (Throwable th) {
            this.f31560f.mo5937a(viewArr);
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: b */
    public final View mo5936b() {
        return this.f31560f.mo5936b();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: c */
    public final C8197c mo5935c() {
        return this.f31560f.mo5935c();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: d */
    public final void mo5934d() {
        try {
            try {
                C8083ah ahVar = (C8083ah) this.f32074a;
                if (!ahVar.f31631l) {
                    this.f31561g.m6462a(this.f31559e.get(), ahVar);
                }
            } catch (Exception e) {
                new StringBuilder("Exception in stopTrackingForImpression with message : ").append(e.getMessage());
                C8328a.m5878a().m5875a(new C8365a(e));
            }
            this.f31560f.mo5934d();
        } catch (Throwable th) {
            this.f31560f.mo5934d();
            throw th;
        }
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: e */
    public final void mo5933e() {
        this.f31561g.m6465a(this.f31562h.m6492d(), this.f31560f.mo5936b(), this.f31562h);
        super.mo5933e();
        this.f31559e.clear();
        this.f31560f.mo5933e();
    }

    @Override // com.inmobi.ads.AbstractC8213cb
    /* renamed from: f */
    public final AbstractC8213cb.AbstractC8214a mo5932f() {
        return this.f31560f.mo5932f();
    }
}
