package p193e.p194a.p739f0;

import com.amazon.device.ads.DTBMetricsConfiguration;
import com.truecaller.social_media.domain.data.TCNewsLinksConfig;
import com.truecaller.social_media.domain.data.TCNewsLinksForRegion;
import com.truecaller.social_media.domain.data.TCNewsTikTokBlockedRegions;
import com.truecaller.social_media.presentation.entities.SocialMediaItemId;
import e.m.e.k;
import java.util.List;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p1146q2.AbstractC19462a;
import p193e.p194a.p1272u3.AbstractC20597i;
import p193e.p194a.p1272u3.C20592g;
import p193e.p194a.p372b0.p406e.AbstractC8432l;
import p193e.p194a.p372b0.p406e.p409r.AbstractC8438a;
import p193e.p194a.p739f0.p743g.AbstractC13885a;
import s1.f0.v;
import s1.g;
import s1.u.i;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.f0.a */
/* loaded from: classes13-dex2jar.jar:e/a/f0/a.class */
public final class C13866a implements AbstractC13874c {

    /* renamed from: a */
    public final g f40223a = C25225a.m3978P1(new C13867b());

    /* renamed from: b */
    public final g f40224b = C25225a.m3978P1(C13869d.f40236b);

    /* renamed from: c */
    public final g f40225c = C25225a.m3978P1(new C13868c());

    /* renamed from: d */
    public final g f40226d = C25225a.m3978P1(new a(1, this));

    /* renamed from: e */
    public final g f40227e = C25225a.m3978P1(new a(0, this));

    /* renamed from: f */
    public final g f40228f = C25225a.m3978P1(new C13870e());

    /* renamed from: g */
    public final AbstractC13885a f40229g;

    /* renamed from: h */
    public final AbstractC19462a f40230h;

    /* renamed from: i */
    public final a<AbstractC8438a> f40231i;

    /* renamed from: j */
    public final a<AbstractC8432l> f40232j;

    /* renamed from: k */
    public final C20592g f40233k;

    /* renamed from: e.a.f0.a$b */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/a$b.class */
    public static final class C13867b extends m implements s1.z.b.a<String> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13867b() {
            super(0);
            C13866a.this = r4;
        }

        public Object invoke() {
            String mo28578f = ((AbstractC8432l) C13866a.this.f40232j.get()).mo28578f();
            if (mo28578f == null) {
                mo28578f = ((AbstractC8438a) C13866a.this.f40231i.get()).getString("profileCountryIso");
            }
            return mo28578f;
        }
    }

    /* renamed from: e.a.f0.a$c */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/a$c.class */
    public static final class C13868c extends m implements s1.z.b.a<TCNewsLinksConfig> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13868c() {
            super(0);
            C13866a.this = r4;
        }

        public Object invoke() {
            TCNewsLinksConfig tCNewsLinksConfig;
            C20592g c20592g = C13866a.this.f40233k;
            try {
                tCNewsLinksConfig = (TCNewsLinksConfig) new k().f(((AbstractC20597i) c20592g.f57772K5.m10941a(c20592g, C20592g.f57695p6[354])).mo10938g(), TCNewsLinksConfig.class);
                if (tCNewsLinksConfig == null) {
                    tCNewsLinksConfig = C17422k.m16049v();
                }
            } catch (Exception e) {
                tCNewsLinksConfig = C17422k.m16049v();
            }
            return tCNewsLinksConfig;
        }
    }

    /* renamed from: e.a.f0.a$d */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/a$d.class */
    public static final class C13869d extends m implements s1.z.b.a<TCNewsLinksForRegion> {

        /* renamed from: b */
        public static final C13869d f40236b = new C13869d();

        public C13869d() {
            super(0);
        }

        public Object invoke() {
            return (TCNewsLinksForRegion) i.B(C17422k.m16049v().getConfig());
        }
    }

    /* renamed from: e.a.f0.a$e */
    /* loaded from: classes13-dex2jar.jar:e/a/f0/a$e.class */
    public static final class C13870e extends m implements s1.z.b.a<List<? extends String>> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13870e() {
            super(0);
            C13866a.this = r4;
        }

        public Object invoke() {
            TCNewsTikTokBlockedRegions tCNewsTikTokBlockedRegions;
            C20592g c20592g = C13866a.this.f40233k;
            try {
                tCNewsTikTokBlockedRegions = (TCNewsTikTokBlockedRegions) new k().f(((AbstractC20597i) c20592g.f57779L5.m10941a(c20592g, C20592g.f57695p6[355])).mo10938g(), TCNewsTikTokBlockedRegions.class);
                if (tCNewsTikTokBlockedRegions == null) {
                    tCNewsTikTokBlockedRegions = new TCNewsTikTokBlockedRegions(null, 1, null);
                }
            } catch (Exception e) {
                tCNewsTikTokBlockedRegions = new TCNewsTikTokBlockedRegions(null, 1, null);
            }
            return v.U(tCNewsTikTokBlockedRegions.getRegions(), new String[]{","}, false, 0, 6);
        }
    }

    @Inject
    public C13866a(AbstractC13885a abstractC13885a, AbstractC19462a abstractC19462a, a<AbstractC8438a> aVar, a<AbstractC8432l> aVar2, @Named("features_registry") C20592g c20592g) {
        l.e(abstractC13885a, "socialMediaPrefs");
        l.e(abstractC19462a, DTBMetricsConfiguration.ANALYTICS_KEY_NAME);
        l.e(aVar, "accountSettings");
        l.e(aVar2, "truecallerAccountManager");
        l.e(c20592g, "featuresRegistry");
        this.f40229g = abstractC13885a;
        this.f40230h = abstractC19462a;
        this.f40231i = aVar;
        this.f40232j = aVar2;
        this.f40233k = c20592g;
    }

    /* renamed from: a */
    public final TCNewsLinksForRegion m20982a() {
        return (TCNewsLinksForRegion) this.f40227e.getValue();
    }

    /* renamed from: b */
    public final TCNewsLinksForRegion m20981b() {
        return (TCNewsLinksForRegion) this.f40226d.getValue();
    }

    /* renamed from: c */
    public final String m20980c(SocialMediaItemId socialMediaItemId) {
        String str;
        int ordinal = socialMediaItemId.ordinal();
        if (ordinal == 0) {
            StringBuilder m8728C = C22128a.m8728C("https://twitter.com/");
            m8728C.append(m20981b().getTwitterPage());
            str = m8728C.toString();
        } else if (ordinal == 1) {
            StringBuilder m8728C2 = C22128a.m8728C("https://www.facebook.com/");
            m8728C2.append(m20981b().getFacebookPage());
            str = m8728C2.toString();
        } else if (ordinal == 2) {
            StringBuilder m8728C3 = C22128a.m8728C("https://www.instagram.com/");
            m8728C3.append(m20981b().getInstagramPage());
            str = m8728C3.toString();
        } else if (ordinal == 3) {
            StringBuilder m8728C4 = C22128a.m8728C("https://www.youtube.com/channel/");
            m8728C4.append(m20981b().getYoutubePage());
            str = m8728C4.toString();
        } else if (ordinal != 4) {
            throw new s1.i();
        } else {
            StringBuilder m8728C5 = C22128a.m8728C("https://www.tiktok.com/");
            m8728C5.append(m20981b().getTiktokPage());
            str = m8728C5.toString();
        }
        return str;
    }

    /* renamed from: d */
    public final String m20979d(SocialMediaItemId socialMediaItemId) {
        String str;
        int ordinal = socialMediaItemId.ordinal();
        if (ordinal == 0) {
            StringBuilder m8728C = C22128a.m8728C("twitter://user?screen_name=");
            m8728C.append(m20981b().getTwitterPage());
            str = m8728C.toString();
        } else if (ordinal == 1) {
            StringBuilder m8728C2 = C22128a.m8728C("fb://page/");
            m8728C2.append(m20981b().getFacebookPageId());
            str = m8728C2.toString();
        } else if (ordinal == 2) {
            StringBuilder m8728C3 = C22128a.m8728C("instagram://user?username=");
            m8728C3.append(m20981b().getInstagramPage());
            str = m8728C3.toString();
        } else if (ordinal == 3) {
            StringBuilder m8728C4 = C22128a.m8728C("vnd.youtube://channel/");
            m8728C4.append(m20981b().getYoutubePage());
            str = m8728C4.toString();
        } else if (ordinal != 4) {
            throw new s1.i();
        } else {
            StringBuilder m8728C5 = C22128a.m8728C("https://www.tiktok.com/");
            m8728C5.append(m20981b().getTiktokPage());
            str = m8728C5.toString();
        }
        return str;
    }
}
