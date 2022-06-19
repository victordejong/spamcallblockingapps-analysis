package p193e.p194a.p773g.p780e;

import com.truecaller.ads.AdLayoutTypeX;
import com.truecaller.data.entity.Contact;
import com.truecaller.data.entity.HistoryEvent;
import java.util.LinkedHashMap;
import java.util.Map;
import javax.inject.Inject;
import javax.inject.Named;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p682e.C12864a2;
import p193e.p194a.p773g.C14233b;
import p193e.p194a.p852i.AbstractC15191g;
import p193e.p194a.p852i.AbstractC15211m;
import p193e.p194a.p852i.AbstractC15212n;
import p193e.p194a.p852i.C15222s;
import p193e.p194a.p852i.p862c.p863a.AbstractC15003c;
import p193e.p194a.p852i.p862c.p863a.AbstractC15006u;
import p193e.p194a.p852i.p896f0.p897j.AbstractC15166a;
import p193e.p194a.p852i.p896f0.p901m.AbstractC15183d;
import s1.g;
import s1.z.c.l;
/* renamed from: e.a.g.e.d */
/* loaded from: classes4-dex2jar.jar:e/a/g/e/d.class */
public final class C14240d implements AbstractC14237a, AbstractC15211m {

    /* renamed from: a */
    public AbstractC15212n f41139a;

    /* renamed from: c */
    public boolean f41141c;

    /* renamed from: e */
    public AbstractC15003c f41143e;

    /* renamed from: f */
    public Boolean f41144f;

    /* renamed from: g */
    public HistoryEvent f41145g;

    /* renamed from: h */
    public final AbstractC14241e f41146h;

    /* renamed from: i */
    public final C20592g f41147i;

    /* renamed from: j */
    public final C14242f f41148j;

    /* renamed from: k */
    public final AbstractC15166a f41149k;

    /* renamed from: b */
    public final Map<String, AbstractC15183d> f41140b = new LinkedHashMap();

    /* renamed from: d */
    public final g f41142d = C25225a.m3978P1(new C14239c(this));

    @Inject
    public C14240d(AbstractC14241e abstractC14241e, @Named("features_registry") C20592g c20592g, C14242f c14242f, AbstractC15166a abstractC15166a) {
        l.e(abstractC14241e, "adsProvider");
        l.e(c20592g, "featuresRegistry");
        l.e(c14242f, "acsAdsUnitConfig");
        l.e(abstractC15166a, "acsAdRequestIdGenerator");
        this.f41146h = abstractC14241e;
        this.f41147i = c20592g;
        this.f41148j = c14242f;
        this.f41149k = abstractC15166a;
    }

    /* renamed from: a */
    public AbstractC15191g m20330a() {
        AdLayoutTypeX adLayoutTypeX;
        AbstractC14241e abstractC14241e = this.f41146h;
        HistoryEvent historyEvent = this.f41145g;
        boolean m22540r = C12864a2.m22540r(historyEvent != null ? Boolean.valueOf(m20326e(historyEvent)) : null);
        C14233b c14233b = (C14233b) abstractC14241e;
        if (!(c14233b.m20340a(c14233b.f41122a) && c14233b.f41128g.m10991N().isEnabled() && m22540r)) {
            if (!(c14233b.m20340a(c14233b.f41122a) && c14233b.f41128g.m10994K().isEnabled() && !m22540r)) {
                adLayoutTypeX = AdLayoutTypeX.ACS;
                return adLayoutTypeX;
            }
        }
        adLayoutTypeX = AdLayoutTypeX.ACS_LARGE;
        return adLayoutTypeX;
    }

    /* renamed from: b */
    public String m20329b() {
        return ((C14233b) this.f41146h).f41122a;
    }

    /* renamed from: c */
    public final C15222s m20328c() {
        return (C15222s) this.f41142d.getValue();
    }

    /* renamed from: d */
    public void m20327d() {
        for (Map.Entry<String, AbstractC15183d> entry : this.f41140b.entrySet()) {
            entry.getValue().destroy();
        }
        this.f41140b.clear();
    }

    /* renamed from: e */
    public final boolean m20326e(HistoryEvent historyEvent) {
        return historyEvent.f11550q == 3;
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: ed */
    public void mo10117ed(int i) {
        this.f41144f = Boolean.TRUE;
        AbstractC15212n abstractC15212n = this.f41139a;
        if (abstractC15212n != null) {
            abstractC15212n.mo10117ed(i);
        }
        m20325f();
    }

    /* renamed from: f */
    public final void m20325f() {
        AbstractC15003c abstractC15003c;
        if (!this.f41147i.m10983V().isEnabled() || this.f41141c || (abstractC15003c = this.f41143e) == null) {
            return;
        }
        if (!l.a(abstractC15003c.m19292a(), "Roadblock") && !C12864a2.m22540r(this.f41144f)) {
            return;
        }
        AbstractC15212n abstractC15212n = this.f41139a;
        if (abstractC15212n != null) {
            abstractC15212n.mo10600a(abstractC15003c);
        }
        if (!l.a(abstractC15003c.m19291b(), AbstractC15006u.d.b)) {
            ((C14233b) this.f41146h).m20338c().mo19267c("AFTERCALL");
        }
        this.f41143e = null;
    }

    /* renamed from: g */
    public void m20324g(boolean z) {
        AbstractC15212n abstractC15212n;
        boolean z2 = this.f41141c;
        this.f41141c = z;
        if (z2 != z && !z) {
            if (((C14233b) this.f41146h).m20336e(m20328c()) && (abstractC15212n = this.f41139a) != null) {
                abstractC15212n.onAdLoaded();
            }
        }
        if (z) {
            this.f41149k.reset();
        }
    }

    /* renamed from: h */
    public boolean m20323h() {
        C20592g c20592g = this.f41147i;
        if (!c20592g.f57701A4.m10941a(c20592g, C20592g.f57695p6[290]).isEnabled()) {
            return false;
        }
        HistoryEvent historyEvent = this.f41145g;
        boolean z = false;
        if (historyEvent != null) {
            Contact contact = historyEvent.f11539f;
            z = false;
            if (contact != null) {
                l.d(contact, "it");
                z = false;
                if (!contact.m35495t0()) {
                    z = false;
                    if (C17891a1.C17902k.m15668J0(contact)) {
                        z = true;
                    }
                }
            }
        }
        return z;
    }

    /* JADX WARN: Removed duplicated region for block: B:59:0x010c  */
    /* renamed from: i */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public boolean m20322i(com.truecaller.data.entity.HistoryEvent r4) {
        /*
            Method dump skipped, instructions count: 295
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p773g.p780e.C14240d.m20322i(com.truecaller.data.entity.HistoryEvent):boolean");
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    public void onAdLoaded() {
        AbstractC15212n abstractC15212n;
        this.f41144f = Boolean.FALSE;
        if (!this.f41141c) {
            if (!((C14233b) this.f41146h).m20336e(m20328c()) || (abstractC15212n = this.f41139a) == null) {
                return;
            }
            abstractC15212n.onAdLoaded();
        }
    }

    @Override // p193e.p194a.p852i.AbstractC15211m
    /* renamed from: xe */
    public void mo10116xe(AbstractC15183d abstractC15183d, int i) {
        l.e(abstractC15183d, "ad");
        AbstractC15212n abstractC15212n = this.f41139a;
        if (abstractC15212n != null) {
            abstractC15212n.mo10116xe(abstractC15183d, i);
        }
    }
}
