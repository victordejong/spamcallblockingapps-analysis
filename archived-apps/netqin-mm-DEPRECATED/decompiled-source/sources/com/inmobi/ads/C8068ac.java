package com.inmobi.ads;

import android.content.Context;
import android.content.Intent;
import android.os.Looper;
import com.inmobi.ads.AbstractC8252i;
import com.inmobi.ads.AdContainer;
import com.inmobi.ads.InMobiAdRequest;
import com.inmobi.ads.InMobiAdRequestStatus;
import com.inmobi.ads.p500a.C8049a;
import com.inmobi.ads.p500a.C8053d;
import com.inmobi.commons.core.p509a.C8328a;
import com.inmobi.commons.core.p513e.C8365a;
import com.inmobi.commons.core.utilities.Logger;
import com.inmobi.commons.core.utilities.p516b.C8401e;
import com.inmobi.commons.p508a.C8326a;
import com.inmobi.rendering.InMobiAdActivity;
import com.inmobi.rendering.RenderView;
import com.mopub.common.AdType;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
/* renamed from: com.inmobi.ads.ac */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ac.class */
public class C8068ac extends AbstractC8252i {

    /* renamed from: A */
    public static final String f31568A = "ac";

    /* renamed from: B */
    public static final String f31569B = InMobiInterstitial.class.getSimpleName();

    /* renamed from: C */
    public int f31570C;

    /* renamed from: D */
    public ArrayList<WeakReference<AbstractC8252i.AbstractC8282b>> f31571D;

    /* renamed from: z */
    public boolean f31572z;

    /* renamed from: com.inmobi.ads.ac$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ac$a.class */
    public static final class C8075a {

        /* renamed from: a */
        public static final Map<C8175bj, C8068ac> f31584a = new HashMap();

        /* renamed from: a */
        public static C8068ac m6528a(Context context, C8175bj bjVar, AbstractC8252i.AbstractC8282b bVar) {
            long j = bjVar.f31894a;
            C8068ac acVar = f31584a.get(bjVar);
            if (acVar != null) {
                if (acVar.m6043h()) {
                    String unused = C8068ac.f31568A;
                    StringBuilder sb = new StringBuilder("Found expired adUnit for placement(");
                    sb.append(j);
                    sb.append("), thus clearing it.");
                    acVar.mo6027t();
                }
                acVar.mo5978a(context);
                if (bVar != null) {
                    acVar.m6082a(bVar);
                }
                return acVar;
            }
            C8068ac acVar2 = new C8068ac(context, j, bVar, (byte) 0);
            f31584a.put(bjVar, acVar2);
            return acVar2;
        }

        /* renamed from: b */
        public static C8068ac m6527b(Context context, C8175bj bjVar, AbstractC8252i.AbstractC8282b bVar) {
            return new C8068ac(context, bjVar.f31894a, bVar, (byte) 0);
        }
    }

    /* renamed from: com.inmobi.ads.ac$b */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ac$b.class */
    public final class C8076b extends Exception {
        public C8076b(String str) {
            super(str);
        }
    }

    /* renamed from: com.inmobi.ads.ac$c */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ac$c.class */
    public final class C8077c extends Exception {
        public C8077c(String str) {
            super(str);
        }
    }

    public C8068ac(Context context, long j, AbstractC8252i.AbstractC8282b bVar) {
        super(context, j, bVar);
        this.f31570C = 0;
        this.f31572z = false;
        this.f31571D = new ArrayList<>(1);
        super.mo6086a(InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY);
    }

    public /* synthetic */ C8068ac(Context context, long j, AbstractC8252i.AbstractC8282b bVar, byte b) {
        this(context, j, bVar);
    }

    /* renamed from: P */
    private boolean m6543P() {
        try {
            if (AdType.HTML.equals(this.f32205m)) {
                if (m6043h()) {
                    super.mo6027t();
                    return true;
                }
                m6542Q();
                return false;
            } else if (!m6535c(true)) {
                return true;
            } else {
                m6542Q();
                return false;
            }
        } catch (C8076b | C8077c e) {
            return true;
        }
    }

    /* renamed from: Q */
    private void m6542Q() {
        this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.ac.1
            @Override // java.lang.Runnable
            public final void run() {
                for (int i = 0; i < C8068ac.this.f31571D.size(); i++) {
                    AbstractC8252i.AbstractC8282b bVar = (AbstractC8252i.AbstractC8282b) ((WeakReference) C8068ac.this.f31571D.get(i)).get();
                    if (bVar == null) {
                        C8068ac.this.m6045g();
                    } else {
                        C8068ac.this.m6080a(bVar, "VAR", "");
                        C8068ac.this.m6080a(bVar, "ARF", "");
                        bVar.mo6008a(true);
                        bVar.mo6012a();
                        bVar.mo6010a(C8068ac.this);
                    }
                }
                C8068ac.this.f31571D.clear();
            }
        });
    }

    /* renamed from: R */
    private boolean m6541R() {
        try {
            StringBuilder sb = new StringBuilder(">>> Starting ");
            sb.append(InMobiAdActivity.class.getSimpleName());
            sb.append(" to display interstitial ad ...");
            AdContainer j = m6039j();
            if (j != null && !"unknown".equals(j.getMarkupType())) {
                int a = InMobiAdActivity.m5615a(j);
                Intent intent = new Intent(m6092a(), InMobiAdActivity.class);
                intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_INDEX", a);
                intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_TYPE", 102);
                intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_CONTAINER_TYPE", AdType.HTML.equals(this.f32205m) ? 200 : 201);
                intent.putExtra("com.inmobi.rendering.InMobiAdActivity.EXTRA_AD_ACTIVITY_IS_FULL_SCREEN", true);
                C8326a.m5896a(m6092a(), intent);
                return true;
            }
            return false;
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.class.getSimpleName(), "Cannot show ad; SDK encountered an unexpected error");
            new StringBuilder("Encountered unexpected error while showing ad: ").append(e.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e));
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: c */
    public boolean m6535c(boolean z) throws C8076b, C8077c {
        C8047a aVar;
        String str = this.f32203k;
        if (str == null) {
            return false;
        }
        if (z) {
            m6041i();
            C8141b.m6344b();
            aVar = C8223d.m6154c(str);
        } else {
            C8247h i = m6041i();
            C8247h.m6107c();
            C8223d dVar = i.f32163b;
            aVar = C8223d.m6154c(str);
            if (aVar != null) {
                C8223d.m6164a(str);
            }
            i.m6121a(i.f32164c);
        }
        if (aVar == null) {
            throw new C8076b("No Cached Ad found for AdUnit");
        } else if (mo6083a(aVar)) {
            return true;
        } else {
            throw new C8077c("No Cached Asset for AdUnit");
        }
    }

    /* renamed from: g */
    private int m6531g(AbstractC8252i.AbstractC8282b bVar) {
        int i = -1;
        for (int i2 = 0; i2 < this.f31571D.size(); i2++) {
            WeakReference<AbstractC8252i.AbstractC8282b> weakReference = this.f31571D.get(i2);
            i = i;
            if (weakReference != null) {
                AbstractC8252i.AbstractC8282b bVar2 = weakReference.get();
                i = i;
                if (bVar2 != null) {
                    i = i;
                    if (bVar2.equals(bVar)) {
                        i = i2;
                    }
                }
            }
        }
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: h */
    public void m6530h(AbstractC8252i.AbstractC8282b bVar) {
        m6050d("ShowInt");
        boolean R = m6541R();
        if (bVar == null) {
            m6045g();
        } else if (!R) {
            this.f32193a = 3;
            m6080a(bVar, "AVRR", "");
            bVar.mo6006b();
        } else {
            bVar.mo6002c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: i */
    public void m6529i(final AbstractC8252i.AbstractC8282b bVar) {
        m6080a(bVar, "AVFB", "");
        this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.ac.4
            @Override // java.lang.Runnable
            public final void run() {
                C8068ac acVar = C8068ac.this;
                acVar.f32193a = 0;
                AbstractC8252i.AbstractC8282b bVar2 = bVar;
                if (bVar2 != null) {
                    bVar2.mo6006b();
                } else {
                    acVar.m6045g();
                }
            }
        });
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: C */
    public final void mo6101C() {
        m6058b("RenderTimeOut");
        if (this.f32203k != null) {
            m6041i().m6116a(this.f32203k);
        }
        int i = this.f32193a;
        if (4 == i || 2 == i) {
            this.f32193a = 3;
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
            String str = f31568A;
            Logger.m5724a(internalLogLevel, str, "Failed to load the Interstitial markup in the webview due to time out for placement id: " + this.f32196d);
            mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), false);
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: F */
    public final void mo5984F() {
        if (1 == this.f32193a) {
            this.f32193a = 9;
            AbstractC8252i.AbstractC8285e eVar = this.f32209q;
            if (eVar != null) {
                eVar.mo5991a(this);
            }
            Iterator<WeakReference<AbstractC8252i.AbstractC8282b>> it = this.f31571D.iterator();
            while (it.hasNext()) {
                AbstractC8252i.AbstractC8282b bVar = it.next().get();
                if (bVar != null) {
                    m6533e(bVar);
                    return;
                }
                m6045g();
            }
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: I */
    public final void mo6097I() {
        m6100D();
        this.f32193a = 5;
        for (int i = 0; i < this.f31571D.size(); i++) {
            AbstractC8252i.AbstractC8282b bVar = this.f31571D.get(i).get();
            if (bVar == null) {
                m6045g();
            } else {
                if (i < this.f31571D.size() - 1) {
                    m6080a(bVar, "VAR", "");
                    m6080a(bVar, "ARF", "");
                }
                bVar.mo6010a(this);
            }
        }
        this.f31571D.clear();
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: J */
    public final void mo6096J() {
        Iterator<WeakReference<AbstractC8252i.AbstractC8282b>> it = this.f31571D.iterator();
        while (it.hasNext()) {
            AbstractC8252i.AbstractC8282b bVar = it.next().get();
            if (bVar != null) {
                bVar.mo6008a(true);
            } else {
                m6045g();
            }
        }
    }

    /* renamed from: M */
    public final boolean m6546M() {
        return this.f32193a == 5;
    }

    @Override // com.inmobi.ads.AbstractC8252i, com.inmobi.ads.C8247h.AbstractC8251a
    /* renamed from: a */
    public final void mo6090a(final long j, final InMobiAdRequestStatus inMobiAdRequestStatus) {
        this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.ac.3
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    if (j == C8068ac.this.f32196d) {
                        Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
                        String str = C8068ac.f31569B;
                        Logger.m5724a(internalLogLevel, str, "Failed to fetch ad for placement id: " + j + ", reason phrase available in onAdLoadFailed callback.");
                        for (int i = 0; i < C8068ac.this.f31571D.size(); i++) {
                            AbstractC8252i.AbstractC8282b bVar = (AbstractC8252i.AbstractC8282b) ((WeakReference) C8068ac.this.f31571D.get(i)).get();
                            if (bVar == null) {
                                C8068ac.this.m6045g();
                            } else {
                                if (i < C8068ac.this.f31571D.size() - 1) {
                                    C8068ac.this.m6080a(bVar, "VAR", "");
                                }
                                C8068ac.this.m6080a(bVar, "ARN", "");
                            }
                        }
                        C8068ac.this.mo6084a(inMobiAdRequestStatus, true);
                    }
                } catch (Exception e) {
                    Logger.m5724a(Logger.InternalLogLevel.ERROR, "[InMobi]", "Unable to load Ad; SDK encountered an unexpected error");
                    String unused = C8068ac.f31568A;
                    new StringBuilder("onAdFetchFailed with error: ").append(e.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
        });
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: a */
    public final void mo6087a(long j, boolean z, C8047a aVar) {
        try {
            super.mo6087a(j, z, aVar);
            if (j != this.f32196d) {
                return;
            }
            if (1 == this.f32193a && z) {
                this.f32193a = 2;
                if (super.mo6083a(aVar)) {
                    m6080a(m6047f(), "ARF", "");
                    m6056c(aVar);
                    if (aVar.f31482j) {
                        this.f32212t = true;
                        m6099G();
                        return;
                    }
                    Iterator<WeakReference<AbstractC8252i.AbstractC8282b>> it = this.f31571D.iterator();
                    while (it.hasNext()) {
                        AbstractC8252i.AbstractC8282b bVar = it.next().get();
                        if (bVar != null) {
                            bVar.mo6008a(true);
                        } else {
                            m6045g();
                        }
                    }
                    return;
                }
                Iterator<WeakReference<AbstractC8252i.AbstractC8282b>> it2 = this.f31571D.iterator();
                while (it2.hasNext()) {
                    AbstractC8252i.AbstractC8282b bVar2 = it2.next().get();
                    if (bVar2 != null) {
                        bVar2.mo6008a(false);
                    } else {
                        m6045g();
                    }
                }
            } else if (4 == this.f32193a || 5 == this.f32193a || 2 == this.f32193a) {
                this.f32193a = 0;
                Iterator<WeakReference<AbstractC8252i.AbstractC8282b>> it3 = this.f31571D.iterator();
                while (it3.hasNext()) {
                    AbstractC8252i.AbstractC8282b bVar3 = it3.next().get();
                    if (bVar3 != null) {
                        bVar3.mo6011a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE));
                    } else {
                        m6045g();
                    }
                    this.f31571D.clear();
                }
            }
        } catch (Exception e) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.class.getSimpleName(), "Unable to load ad; SDK encountered an internal error");
            new StringBuilder("Handling ad availability change event encountered an unexpected error: ").append(e.getMessage());
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: a */
    public final void mo6086a(InMobiAdRequest.MonetizationContext monetizationContext) {
        super.mo6086a(InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY);
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: a */
    public final void mo6084a(InMobiAdRequestStatus inMobiAdRequestStatus, boolean z) {
        if (this.f32193a == 1 && z) {
            this.f32193a = 3;
        }
        Iterator<WeakReference<AbstractC8252i.AbstractC8282b>> it = this.f31571D.iterator();
        while (it.hasNext()) {
            AbstractC8252i.AbstractC8282b bVar = it.next().get();
            if (bVar != null) {
                bVar.mo6011a(inMobiAdRequestStatus);
            } else {
                m6045g();
            }
        }
        this.f31571D.clear();
        m6085a(inMobiAdRequestStatus);
        super.mo6027t();
    }

    @Override // com.inmobi.ads.AbstractC8252i, com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: a */
    public final void mo5550a(RenderView renderView) {
        super.mo5550a(renderView);
        if (this.f32193a == 2) {
            this.f32193a = 4;
            mo6096J();
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: a */
    public final boolean mo6083a(C8047a aVar) {
        if (!super.mo6083a(aVar)) {
            mo5973b(aVar);
            return false;
        } else if (!(aVar instanceof C8147bc)) {
            return true;
        } else {
            C8147bc bcVar = (C8147bc) aVar;
            C8053d.m6605a();
            C8049a b = C8053d.m6599b(bcVar.f31831l);
            if (b == null || !b.m6623a()) {
                return false;
            }
            this.f32202j = new C8195by(b.f31493e, bcVar.f31832m, bcVar.f31833n, bcVar.m6340h(), bcVar.m6339i(), this.f32199g.f31994m);
            return true;
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final String mo5975b() {
        return "int";
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final void mo6061b(long j, boolean z) {
        super.mo6061b(j, z);
        if (!z) {
            if (j == this.f32196d) {
                int i = this.f32193a;
                if (2 == i || 5 == i) {
                    this.f32193a = 0;
                    mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.AD_NO_LONGER_AVAILABLE), false);
                }
            }
        } else if (j != this.f32196d || 2 != this.f32193a) {
        } else {
            if (this.f32212t) {
                this.f32214v = true;
                m6098H();
                return;
            }
            mo6097I();
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: b */
    public final void mo5974b(InMobiAdRequestStatus inMobiAdRequestStatus) {
        if (1 == this.f32193a) {
            this.f32193a = 3;
            AbstractC8252i.AbstractC8285e eVar = this.f32209q;
            if (eVar != null) {
                eVar.mo5990a(this, inMobiAdRequestStatus);
            }
            if (this.f31571D.size() > 0) {
                mo6084a(inMobiAdRequestStatus, false);
            }
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
        if (i == 7) {
            int i2 = this.f31570C + 1;
            this.f31570C = i2;
            if (i2 == 1) {
                m6050d("AdRendered");
                Logger.m5724a(Logger.InternalLogLevel.DEBUG, f31569B, "Successfully displayed Interstitial for placement id: " + this.f32196d);
                if (bVar != null) {
                    bVar.mo6001d();
                } else {
                    m6045g();
                }
            } else {
                this.f32193a = 8;
            }
        } else if (i == 8) {
            this.f31570C++;
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
        try {
            super.mo5971c(j, aVar);
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
            String str = f31569B;
            Logger.m5724a(internalLogLevel, str, "Interstitial ad successfully fetched for placement id: " + this.f32196d);
            if (j == this.f32196d && this.f32193a == 2) {
                m6065a(true, mo5967k());
                try {
                    m6081a(null, this.f32200h, null, null);
                } catch (Exception e) {
                    m6103A();
                    mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), false);
                    Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.class.getSimpleName(), "Unable to load ad; SDK encountered an internal error");
                    new StringBuilder("Loading ad markup into container encountered an unexpected error: ").append(e.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
        } catch (Exception e2) {
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31569B, "Unable to load ad; SDK encountered an internal error");
            new StringBuilder("Handling ad fetch successful encountered an unexpected error: ").append(e2.getMessage());
            C8328a.m5878a().m5875a(new C8365a(e2));
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: c */
    public final void mo6055c(AbstractC8252i.AbstractC8282b bVar) {
        int i = this.f32193a;
        if (i == 8) {
            int i2 = this.f31570C - 1;
            this.f31570C = i2;
            if (i2 == 1) {
                this.f32193a = 7;
            }
        } else if (i == 7) {
            this.f31570C--;
            m6050d("IntClosed");
            super.mo6027t();
            Logger.m5724a(Logger.InternalLogLevel.DEBUG, f31569B, "Interstitial ad dismissed for placement id: " + this.f32196d);
            if (bVar != null) {
                bVar.mo6000e();
            } else {
                m6045g();
            }
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i, com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: c */
    public final void mo5545c(RenderView renderView) {
        synchronized (this) {
            super.mo5545c(renderView);
            mo6060b(m6047f());
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: d */
    public final AdContainer.RenderingProperties.PlacementType mo5969d() {
        return AdContainer.RenderingProperties.PlacementType.PLACEMENT_TYPE_FULLSCREEN;
    }

    @Override // com.inmobi.ads.AbstractC8252i, com.inmobi.rendering.RenderView.AbstractC8440a
    /* renamed from: d */
    public final void mo5544d(RenderView renderView) {
        synchronized (this) {
            super.mo5544d(renderView);
            mo6055c(m6047f());
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:46:0x015b  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x0164 A[RETURN] */
    /* renamed from: d */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean m6534d(com.inmobi.ads.AbstractC8252i.AbstractC8282b r6) {
        /*
            Method dump skipped, instructions count: 371
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.inmobi.ads.C8068ac.m6534d(com.inmobi.ads.i$b):boolean");
    }

    /* renamed from: e */
    public final void m6533e(AbstractC8252i.AbstractC8282b bVar) {
        if (m6534d(bVar)) {
            super.mo6032n();
        }
    }

    /* renamed from: f */
    public final void m6532f(AbstractC8252i.AbstractC8282b bVar) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            m6080a(bVar, "AVRR", "");
            mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.CALLED_FROM_WRONG_THREAD), false);
            Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.class.getSimpleName(), "Please ensure that you call show() on the UI thread");
        } else if (bVar == null) {
            m6045g();
        } else if (!m6546M()) {
            m6080a(bVar, "AVRR", "");
            Logger.m5724a(Logger.InternalLogLevel.ERROR, f31568A, "Ad Load is not complete. Please wait for the Ad to be in a ready state before calling show.");
            HashMap hashMap = new HashMap();
            hashMap.put("errorCode", "ShowIntBeforeReady");
            m6052c("AdShowFailed", hashMap);
            bVar.mo6006b();
        } else if (!C8401e.m5675e()) {
            super.mo6027t();
            bVar.mo6006b();
        } else {
            m6082a(bVar);
            this.f32193a = 7;
            if (AdType.HTML.equals(this.f32205m)) {
                AdContainer j = m6039j();
                if (m6043h()) {
                    m6529i(bVar);
                    if (j != null) {
                        j.destroy();
                        return;
                    }
                    return;
                }
                m6530h(bVar);
                return;
            }
            final WeakReference weakReference = new WeakReference(bVar);
            this.f32208p.execute(new Runnable() { // from class: com.inmobi.ads.ac.2
                @Override // java.lang.Runnable
                public final void run() {
                    final AbstractC8252i.AbstractC8282b bVar2 = (AbstractC8252i.AbstractC8282b) weakReference.get();
                    if (bVar2 != null) {
                        try {
                            if (C8068ac.this.m6535c(false)) {
                                C8068ac.this.m6081a(bVar2, C8068ac.this.f32200h, new Runnable() { // from class: com.inmobi.ads.ac.2.1
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        AdContainer j2 = C8068ac.this.m6039j();
                                        C8068ac acVar = C8068ac.this;
                                        RenderView renderView = acVar.f32213u;
                                        if (renderView != null) {
                                            if (j2 instanceof C8083ah) {
                                                C8083ah ahVar = (C8083ah) j2;
                                                ahVar.f31642w = renderView;
                                                ahVar.f31644y = acVar.f32210r;
                                            } else {
                                                acVar.m6529i(bVar2);
                                            }
                                        }
                                        C8068ac.this.m6530h(bVar2);
                                    }
                                }, Looper.getMainLooper());
                                return;
                            }
                            Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.class.getSimpleName(), "Unable to Show Ad, canShowAd Failed");
                            C8068ac.this.m6529i(bVar2);
                        } catch (C8076b e) {
                            Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.class.getSimpleName(), e.getMessage());
                            C8068ac.this.m6529i(bVar2);
                        } catch (C8077c e2) {
                            Logger.m5724a(Logger.InternalLogLevel.ERROR, InMobiInterstitial.class.getSimpleName(), e2.getMessage());
                            C8068ac.this.m6529i(bVar2);
                        }
                    }
                }
            });
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: k */
    public final RenderView mo5967k() {
        RenderView k = super.mo5967k();
        if (this.f31572z && k != null) {
            k.mo5607a();
        }
        return k;
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: l */
    public final InMobiAdRequest.MonetizationContext mo6036l() {
        return InMobiAdRequest.MonetizationContext.MONETIZATION_CONTEXT_ACTIVITY;
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: n */
    public final void mo6032n() {
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: q */
    public final void mo5966q() {
        this.f32211s.post(new Runnable() { // from class: com.inmobi.ads.ac.5
            @Override // java.lang.Runnable
            public final void run() {
                try {
                    C8068ac.this.f32215w = false;
                    if (C8068ac.this.m6029p()) {
                        C8068ac.this.m6053c("IllegalState");
                    } else {
                        C8068ac.super.mo5966q();
                    }
                } catch (Exception e) {
                    Logger.m5724a(Logger.InternalLogLevel.ERROR, C8068ac.f31569B, "Unable to Prefetch ad; SDK encountered an unexpected error");
                    String unused = C8068ac.f31568A;
                    new StringBuilder("Prefetch failed with unexpected error: ").append(e.getMessage());
                    C8328a.m5878a().m5875a(new C8365a(e));
                }
            }
        });
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: r */
    public final int mo5965r() {
        int i = this.f32193a;
        if (1 == i) {
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.ERROR;
            String str = f31569B;
            Logger.m5724a(internalLogLevel, str, "An ad load is already in progress. Please wait for the load to complete before requesting for another ad for placement id: " + this.f32196d);
            return 2;
        } else if (5 != i || m6543P()) {
            return super.mo5965r();
        } else {
            return 1;
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: t */
    public final void mo6027t() {
        super.mo6027t();
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: v */
    public final void mo6026v() {
        super.mo6026v();
        if (this.f32193a == 4) {
            m6103A();
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
            String str = f31569B;
            Logger.m5724a(internalLogLevel, str, "Successfully loaded Interstitial ad markup in the WebView for placement id: " + this.f32196d);
            m6028s();
            mo6097I();
        }
    }

    @Override // com.inmobi.ads.AbstractC8252i
    /* renamed from: x */
    public final void mo6025x() {
        super.mo6025x();
        if (this.f32193a == 4) {
            m6103A();
            this.f32193a = 3;
            Logger.InternalLogLevel internalLogLevel = Logger.InternalLogLevel.DEBUG;
            String str = f31569B;
            Logger.m5724a(internalLogLevel, str, "Failed to load the Interstitial markup in the WebView for placement id: " + this.f32196d);
            mo6084a(new InMobiAdRequestStatus(InMobiAdRequestStatus.StatusCode.INTERNAL_ERROR), false);
        }
    }
}
