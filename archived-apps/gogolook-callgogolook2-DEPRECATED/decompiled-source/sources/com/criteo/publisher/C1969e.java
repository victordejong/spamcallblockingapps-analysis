package com.criteo.publisher;

import android.app.Application;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.criteo.publisher.model.AdUnit;
import com.criteo.publisher.model.C2042p;
import com.criteo.publisher.model.C2043q;
import com.criteo.publisher.model.C2046r;
import com.criteo.publisher.model.C2052w;
import com.criteo.publisher.p020a0.C1912e;
import com.criteo.publisher.p020a0.EnumC1908a;
import com.criteo.publisher.p028u.C2153b;
import com.criteo.publisher.p029v.C2157a;
import com.criteo.publisher.p032y.C2167a;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;
/* renamed from: com.criteo.publisher.e */
/* loaded from: classes-dex2jar.jar:com/criteo/publisher/e.class */
public final class C1969e extends Criteo {

    /* renamed from: k */
    public static final String f2125k = "e";
    @NonNull

    /* renamed from: c */
    public final C1974i f2126c;
    @NonNull

    /* renamed from: d */
    public final C1963b f2127d;
    @NonNull

    /* renamed from: e */
    public final C2043q f2128e;
    @NonNull

    /* renamed from: f */
    public final C2042p f2129f;
    @NonNull

    /* renamed from: g */
    public final C2167a f2130g;
    @NonNull

    /* renamed from: h */
    public final C2019l f2131h;
    @NonNull

    /* renamed from: i */
    public final C2153b f2132i;
    @NonNull

    /* renamed from: j */
    public final C2157a f2133j;

    /* renamed from: com.criteo.publisher.e$a */
    /* loaded from: classes-dex2jar.jar:com/criteo/publisher/e$a.class */
    public class C1970a extends AbstractRunnableC2020m {

        /* renamed from: c */
        public final /* synthetic */ List f2134c;

        public C1970a(List list) {
            this.f2134c = list;
        }

        @Override // com.criteo.publisher.AbstractRunnableC2020m
        /* renamed from: a */
        public void mo35563a() {
            C1969e.this.f2127d.m35955a(this.f2134c);
        }
    }

    public C1969e(Application application, List<AdUnit> list, @Nullable Boolean bool, @Nullable String str, C1974i iVar) {
        List<AdUnit> arrayList = list == null ? new ArrayList<>() : list;
        this.f2126c = iVar;
        iVar.m35890s().m36016a();
        C2043q r = iVar.m35891r();
        this.f2128e = r;
        r.mo35828b();
        this.f2129f = iVar.m35895n();
        this.f2127d = iVar.m35901h();
        this.f2131h = iVar.m35886w();
        this.f2132i = iVar.m35888u();
        this.f2133j = iVar.m35885x();
        C2167a Q = iVar.m35916Q();
        this.f2130g = Q;
        if (bool != null) {
            Q.m35545a(bool.booleanValue());
        }
        if (str != null) {
            this.f2130g.m35546a(str);
        }
        application.registerActivityLifecycleCallbacks(new C1912e(iVar.m35904e(), this.f2127d));
        iVar.m35918O().m35714a(application);
        iVar.m35902g().mo35694a();
        m35940a(iVar.m35920M(), arrayList);
    }

    /* renamed from: a */
    private void m35941a(Object obj, AdUnit adUnit) {
        this.f2132i.m35591a(obj, adUnit);
    }

    /* renamed from: a */
    private void m35940a(Executor executor, List<AdUnit> list) {
        executor.execute(new C1970a(list));
    }

    /* renamed from: b */
    private BidResponse m35939b(@Nullable AdUnit adUnit) {
        return this.f2131h.m35874a(adUnit);
    }

    @Override // com.criteo.publisher.Criteo
    @NonNull
    /* renamed from: a */
    public C2042p mo35882a() {
        return this.f2129f;
    }

    @Override // com.criteo.publisher.Criteo
    @Nullable
    /* renamed from: a */
    public C2046r mo35881a(@Nullable BidToken bidToken, @NonNull EnumC1908a aVar) {
        return this.f2131h.m35875a(bidToken, aVar);
    }

    @Override // com.criteo.publisher.Criteo
    @Nullable
    /* renamed from: a */
    public C2052w mo35880a(AdUnit adUnit) {
        return this.f2127d.m35957a(adUnit);
    }

    @Override // com.criteo.publisher.Criteo
    @NonNull
    /* renamed from: b */
    public C2043q mo35879b() {
        return this.f2128e;
    }

    @Override // com.criteo.publisher.Criteo
    @NonNull
    /* renamed from: c */
    public C2157a mo35878c() {
        return this.f2133j;
    }

    @Override // com.criteo.publisher.Criteo
    @NonNull
    public C1967d createBannerController(CriteoBannerView criteoBannerView) {
        return new C1967d(criteoBannerView, this, this.f2126c.m35918O(), this.f2126c.m35920M());
    }

    @Override // com.criteo.publisher.Criteo
    public BidResponse getBidResponse(AdUnit adUnit) {
        BidResponse bidResponse;
        try {
            bidResponse = m35939b(adUnit);
        } catch (Throwable th) {
            bidResponse = new BidResponse();
            Log.e(f2125k, "Internal error while getting Bid Response.", th);
        }
        return bidResponse;
    }

    @Override // com.criteo.publisher.Criteo
    public void setBidsForAdUnit(Object obj, AdUnit adUnit) {
        try {
            m35941a(obj, adUnit);
        } catch (Throwable th) {
            Log.e(f2125k, "Internal error while setting bids for adUnit.", th);
        }
    }

    @Override // com.criteo.publisher.Criteo
    public void setMopubConsent(@Nullable String str) {
        this.f2130g.m35546a(str);
    }

    @Override // com.criteo.publisher.Criteo
    public void setUsPrivacyOptOut(boolean z) {
        this.f2130g.m35545a(z);
    }
}
