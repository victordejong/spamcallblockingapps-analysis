package com.inmobi.ads;

import android.content.Context;
import android.os.Looper;
import android.view.View;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.p500a.C8049a;
import com.inmobi.ads.p500a.C8053d;
import com.inmobi.ads.p503d.C8224a;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8399c;
import com.inmobi.rendering.RenderView;
import java.lang.ref.WeakReference;
import java.util.Map;
/* renamed from: com.inmobi.ads.aj */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/aj.class */
public final class C8099aj extends AbstractC8252i {

    /* renamed from: z */
    public static final String f31665z = "aj";

    /* renamed from: A */
    public WeakReference<View> f31666A;

    /* renamed from: C */
    public boolean f31668C;

    /* renamed from: D */
    public C8047a f31669D;

    /* renamed from: B */
    public boolean f31667B = false;

    /* renamed from: E */
    public int f31670E = 0;

    public C8099aj(Context context, long j, AbstractC8252i.AbstractC8282b bVar) {
        super(context, j, bVar);
    }

    /* renamed from: a */
    public static C8099aj m6456a(Context context, C8175bj bjVar, AbstractC8252i.AbstractC8282b bVar) {
        return new C8099aj(context, bjVar.f31894a, bVar);
    }

    /* renamed from: a */
    public static C8099aj m6455a(Context context, C8175bj bjVar, AbstractC8252i.AbstractC8282b bVar, int i) {
        AbstractC8252i iVar = C8224a.f32105a.get(bjVar);
        C8099aj ajVar = iVar instanceof C8099aj ? (C8099aj) iVar : null;
        if (ajVar == null || 1 != i) {
            if (ajVar == null) {
                new StringBuilder("Creating new adUnit for placement-ID : ").append(bjVar.f31894a);
                C8099aj ajVar2 = new C8099aj(context, bjVar.f31894a, bVar);
                ajVar = ajVar2;
                if (i != 0) {
                    C8224a.f32105a.put(bjVar, ajVar2);
                    ajVar = ajVar2;
                }
            } else {
                new StringBuilder("Found pre-fetching adUnit for placement-ID : ").append(bjVar.f31894a);
                ajVar.mo5978a(context);
                C8224a.f32105a.remove(bjVar);
                ajVar.f31668C = true;
            }
            ajVar.m6082a(bVar);
            ajVar.mo6086a(bjVar.f31899f);
            return ajVar;
        }
        throw new IllegalStateException("There's already a pre-loading going on for the same placementID");
    }

    /* renamed from: b */
    private void m6454b(Context context) {
        AdContainer j = m6039j();
        if (j instanceof C8083ah) {
            ((C8083ah) j).m6518a(context);
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: F */
    public final void mo5984F() {
        if (1 == this.f32193a) {
            this.f32193a = 9;
            if (!this.f32206n) {
                this.f31668C = false;
                mo6032n();
                return;
            }
            AbstractC8252i.AbstractC8285e eVar = this.f32209q;
            if (eVar != null) {
                eVar.mo5991a(this);
            }
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: I */
    public final void mo6097I() {
        m6081a(m6047f(), this.f32200h, new Runnable() { // from class: com.inmobi.ads.aj.2
            @Override // java.lang.Runnable
            public final void run() {
                C8099aj ajVar = C8099aj.this;
                if (2 == ajVar.f32193a) {
                    ajVar.f32193a = 5;
                    AdContainer j = ajVar.m6039j();
                    C8099aj ajVar2 = C8099aj.this;
                    RenderView renderView = ajVar2.f32213u;
                    AbstractC8252i.AbstractC8282b f = ajVar2.m6047f();
                    if (j instanceof C8083ah) {
                        C8083ah ahVar = (C8083ah) j;
                        ahVar.f31642w = renderView;
                        C8099aj ajVar3 = C8099aj.this;
                        ahVar.f31644y = ajVar3.f32210r;
                        ajVar3.m6100D();
                        if (f != null) {
                            String unused = C8099aj.f31665z;
                            f.mo6012a();
                        }
                    } else if (f != null) {
                        String unused2 = C8099aj.f31665z;
                        f.mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
                    }
                }
            }
        }, Looper.getMainLooper());
    }

    /* renamed from: M */
    public final void m6459M() {
        try {
            super.mo6027t();
            this.f32200h = null;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Could not destroy native ad; SDK encountered unexpected error");
            new StringBuilder("SDK encountered unexpected error in destroying native ad unit; ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    /* renamed from: N */
    public final boolean m6458N() {
        return this.f32193a == 5;
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: a */
    public final void mo5978a(Context context) {
        super.mo5978a(context);
        m6454b(context);
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: a */
    public final void mo6066a(boolean z) {
        try {
            if (m6029p()) {
                m6053c("IllegalState");
            } else {
                super.mo6066a(z);
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Unable to Prefetch ad; SDK encountered an unexpected error");
            new StringBuilder("Prefetch failed with unexpected error: ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: a */
    public final boolean mo6083a(C8047a aVar) {
        if (super.mo6083a(aVar)) {
            return true;
        }
        mo5973b(aVar);
        return false;
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final String mo5975b() {
        return "native";
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final void mo6061b(long j, boolean z) {
        AbstractC8252i.AbstractC8282b f;
        boolean z2;
        super.mo6061b(j, z);
        if (!z) {
            if (j == this.f32196d) {
                int i = this.f32193a;
                if (2 == i || 5 == i) {
                    this.f32193a = 0;
                    if (m6047f() != null) {
                        m6047f().mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE));
                    }
                }
            }
        } else if (j == this.f32196d && 2 == this.f32193a && (f = m6047f()) != null) {
            C8047a aVar = this.f31669D;
            if (aVar == null) {
                z2 = false;
            } else {
                if (aVar instanceof C8147bc) {
                    C8147bc bcVar = (C8147bc) aVar;
                    C8053d.m6605a();
                    C8049a b = C8053d.m6599b(bcVar.f31831l);
                    z2 = false;
                    if (b != null) {
                        if (!b.m6623a()) {
                            z2 = false;
                        } else {
                            this.f32202j = new C8195by(b.f31493e, bcVar.f31832m, bcVar.f31833n, bcVar.m6340h(), bcVar.m6339i(), this.f32199g.f31994m);
                        }
                    }
                }
                z2 = true;
            }
            if (!z2) {
                f.mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR));
            } else if (m6092a() == null) {
            } else {
                if (this.f32212t) {
                    this.f32214v = true;
                    m6098H();
                    return;
                }
                mo6097I();
            }
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final void mo5974b(InMobiAdRequestStatus inMobiAdRequestStatus) {
        if (1 == this.f32193a) {
            this.f32193a = 3;
            AbstractC8252i.AbstractC8282b f = m6047f();
            if (this.f32206n || f == null) {
                AbstractC8252i.AbstractC8285e eVar = this.f32209q;
                if (eVar != null) {
                    eVar.mo5990a(this, inMobiAdRequestStatus);
                    return;
                }
                return;
            }
            this.f31668C = false;
            m6080a(f, "VAR", "");
            m6080a(f, "ARN", "");
            f.mo6011a(inMobiAdRequestStatus);
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final void mo5973b(C8047a aVar) {
        m6041i().m6122a(aVar);
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final void mo6060b(AbstractC8252i.AbstractC8282b bVar) {
        int i = this.f32193a;
        if (i == 5) {
            this.f32193a = 7;
        } else if (i == 7) {
            this.f31670E++;
        }
        Logger.m5724a(Logger.InternalLogLevel.DEBUG, "InMobi", "Successfully displayed fullscreen for placement id: " + this.f32196d);
        if (this.f31670E != 0) {
            return;
        }
        if (bVar != null) {
            bVar.mo6001d();
        } else {
            m6045g();
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: c */
    public final String mo5972c() {
        return null;
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: c */
    public final void mo5971c(long j, C8047a aVar) {
        super.mo5971c(j, aVar);
        this.f31669D = aVar;
        AbstractC8252i.AbstractC8282b f = m6047f();
        if (mo6083a(aVar)) {
            if (f != null) {
                f.mo6008a(true);
            } else {
                m6045g();
            }
            if (this.f32210r != 0 || aVar.f31482j) {
                m6056c(aVar);
            } else {
                m6065a(true, (RenderView) null);
            }
            if (aVar.f31482j) {
                this.f32212t = true;
                m6099G();
            }
        } else if (f != null) {
            f.mo6008a(false);
        } else {
            m6045g();
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: c */
    public final void mo6055c(AbstractC8252i.AbstractC8282b bVar) {
        if (this.f32193a == 7) {
            int i = this.f31670E;
            if (i > 0) {
                this.f31670E = i - 1;
            } else {
                this.f32193a = 5;
            }
        }
        Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
        Logger.m5724a(internalLogLevel, "InMobi", "Successfully dismissed fullscreen for placement id: " + this.f32196d);
        if (this.f31670E != 0 || this.f32193a != 5) {
            return;
        }
        if (bVar != null) {
            bVar.mo6000e();
        } else {
            m6045g();
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: d */
    public final AdContainer.RenderingProperties.PlacementType mo5969d() {
        return AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_INLINE;
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: e */
    public final Map<String, String> mo5968e() {
        Map<String, String> e = super.mo5968e();
        e.put("a-parentViewWidth", String.valueOf(C8399c.m5687a().f32660a));
        e.put("a-productVersion", "NS-1.0.0-20160411");
        e.put("trackerType", "url_ping");
        return e;
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: n */
    public final void mo6032n() {
        if (!this.f32215w) {
            AbstractC8252i.AbstractC8282b f = m6047f();
            if (AbstractC8252i.m6034m()) {
                m6070a("MissingDependency");
                if (f != null) {
                    f.mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.MISSING_REQUIRED_DEPENDENCIES));
                    return;
                }
                return;
            }
            int i = this.f32193a;
            if (1 == i || 2 == i) {
                Logger.m5724a(Logger.InternalLogLevel.ERROR, f31665z, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad");
                if (!this.f31668C) {
                    mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_PENDING), false);
                    return;
                }
                return;
            }
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
            String str = f31665z;
            Logger.m5724a(internalLogLevel, str, "Fetching a Native ad for placement id: " + this.f32196d);
            if (5 != this.f32193a || m6043h()) {
                super.mo6032n();
                return;
            }
            m6080a(f, "VAR", "");
            m6080a(f, "ARF", "");
            if (f != null) {
                m6454b(m6092a());
                f.mo6008a(true);
                f.mo6012a();
            }
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: q */
    public final void mo5966q() {
        try {
            if (m6029p()) {
                m6053c("IllegalState");
            } else {
                super.mo6066a(false);
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, "InMobi", "Unable to Prefetch ad; SDK encountered an unexpected error");
            new StringBuilder("Prefetch failed with unexpected error: ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: r */
    public final int mo5965r() {
        int i = this.f32193a;
        if (1 != i && 2 != i) {
            return super.mo5965r();
        }
        Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.ERROR;
        Logger.m5724a(internalLogLevel, "InMobi", "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: " + this.f32196d);
        this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.aj.1
            @Override // java.lang.Runnable
            public final void run() {
                C8099aj.this.mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.REQUEST_PENDING), false);
            }
        });
        return 2;
    }
}
