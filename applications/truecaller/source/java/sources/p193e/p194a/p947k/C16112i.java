package p193e.p194a.p947k;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import androidx.fragment.app.FragmentManager;
import com.amazon.device.ads.DTBMetricsConfiguration;
import com.huawei.hms.api.FailedBinderCallBack;
import com.razorpay.AnalyticsConstants;
import com.truecaller.data.entity.Number;
import com.truecaller.videocallerid.C4718R;
import com.truecaller.videocallerid.data.OutgoingVideoDetails;
import com.truecaller.videocallerid.p187ui.preview.PreviewModes;
import com.truecaller.videocallerid.p187ui.recording.RecordingScreenModes;
import com.truecaller.videocallerid.utils.OnboardingType;
import com.truecaller.videocallerid.utils.UpdateVideoCallerIdPromoConfig;
import com.truecaller.videocallerid.utils.analytics.OnboardingContext;
import com.truecaller.videocallerid.utils.analytics.OnboardingData;
import java.util.List;
import java.util.Objects;
import javax.inject.Inject;
import javax.inject.Named;
import o3.a;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1577m.p1578a.p1596c.p1620l1.AbstractC24531p;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.AbstractC19223c0;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p947k.p948a.p958f.C15696g;
import p193e.p194a.p947k.p948a.p961h.C15785b;
import p193e.p194a.p947k.p948a.p964k.AbstractC15836l;
import p193e.p194a.p947k.p968b.C15918a;
import p193e.p194a.p947k.p968b.C15924b;
import p193e.p194a.p947k.p969c.AbstractC15950a1;
import p193e.p194a.p947k.p969c.AbstractC15951a2;
import p193e.p194a.p947k.p969c.AbstractC15955b0;
import p193e.p194a.p947k.p969c.AbstractC15963c1;
import p193e.p194a.p947k.p969c.AbstractC15964c2;
import p193e.p194a.p947k.p969c.AbstractC15966d0;
import p193e.p194a.p947k.p969c.AbstractC15980e1;
import p193e.p194a.p947k.p969c.AbstractC15992h0;
import p193e.p194a.p947k.p969c.AbstractC16015i1;
import p193e.p194a.p947k.p969c.AbstractC16039p;
import p193e.p194a.p947k.p969c.AbstractC16043p1;
import p193e.p194a.p947k.p969c.AbstractC16044q;
import p193e.p194a.p947k.p969c.AbstractC16067r0;
import p193e.p194a.p947k.p969c.AbstractC16083t0;
import p193e.p194a.p947k.p969c.AbstractC16090u0;
import p193e.p194a.p947k.p969c.AbstractC16102y0;
import p193e.p194a.p947k.p969c.C15987g0;
import p193e.p194a.p947k.p969c.C15993h1;
import p193e.p194a.p947k.p969c.C16028m0;
import p193e.p194a.p947k.p969c.p970h2.AbstractC15997d;
import p193e.p194a.p947k.p971l.C16120b;
import p193e.p194a.p947k.p973n.AbstractC16153b;
import q3.a.i0;
import q3.a.j0;
import q3.a.w2.h;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.d0;
import s1.z.c.l;
/* renamed from: e.a.k.i */
/* loaded from: classes15-dex2jar.jar:e/a/k/i.class */
public final class C16112i implements AbstractC16111h, i0 {

    /* renamed from: a */
    public final f f45384a;

    /* renamed from: b */
    public final a<AbstractC16067r0> f45385b;

    /* renamed from: c */
    public final a<AbstractC15992h0> f45386c;

    /* renamed from: d */
    public final AbstractC15980e1 f45387d;

    /* renamed from: e */
    public final a<AbstractC15964c2> f45388e;

    /* renamed from: f */
    public final a<AbstractC15966d0> f45389f;

    /* renamed from: g */
    public final AbstractC16090u0 f45390g;

    /* renamed from: h */
    public final a<AbstractC15955b0> f45391h;

    /* renamed from: i */
    public final C16028m0 f45392i;

    /* renamed from: j */
    public final a<AbstractC15950a1> f45393j;

    /* renamed from: k */
    public final a<AbstractC15951a2> f45394k;

    /* renamed from: l */
    public final a<AbstractC15997d> f45395l;

    /* renamed from: m */
    public final a<AbstractC15963c1> f45396m;

    /* renamed from: n */
    public final a<AbstractC16043p1> f45397n;

    /* renamed from: o */
    public final a<AbstractC16102y0> f45398o;

    /* renamed from: p */
    public final AbstractC19223c0 f45399p;

    /* renamed from: q */
    public final a<AbstractC16153b> f45400q;

    /* renamed from: r */
    public final a<AbstractC16015i1> f45401r;

    /* renamed from: s */
    public final C15696g f45402s;

    /* renamed from: t */
    public final AbstractC16044q f45403t;

    /* renamed from: u */
    public final a<AbstractC16107d> f45404u;

    @e(c = "com.truecaller.videocallerid.VideoCallerIdImpl$onLogout$1", f = "VideoCallerId.kt", l = {547}, m = "invokeSuspend")
    /* renamed from: e.a.k.i$a */
    /* loaded from: classes15-dex2jar.jar:e/a/k/i$a.class */
    public static final class C16113a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f45405e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16113a(d dVar) {
            super(2, dVar);
            C16112i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17819i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16113a(dVar);
        }

        /* renamed from: k */
        public final Object m17818k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16113a(dVar).m17817s(s.a);
        }

        /* renamed from: s */
        public final Object m17817s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45405e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                ((AbstractC16015i1) C16112i.this.f45401r.get()).reset();
                this.f45405e = 1;
                if (((AbstractC16153b) C16112i.this.f45400q.get()).mo17797a(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.VideoCallerIdImpl$shouldShowHideContactOptionAsync$1", f = "VideoCallerId.kt", l = {423}, m = "invokeSuspend")
    /* renamed from: e.a.k.i$b */
    /* loaded from: classes15-dex2jar.jar:e/a/k/i$b.class */
    public static final class C16114b extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f45407e;

        /* renamed from: g */
        public final /* synthetic */ boolean f45409g;

        /* renamed from: h */
        public final /* synthetic */ List f45410h;

        /* renamed from: i */
        public final /* synthetic */ s1.z.b.l f45411i;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16114b(boolean z, List list, s1.z.b.l lVar, d dVar) {
            super(2, dVar);
            C16112i.this = r5;
            this.f45409g = z;
            this.f45410h = list;
            this.f45411i = lVar;
        }

        /* renamed from: i */
        public final d<s> m17816i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16114b(this.f45409g, this.f45410h, this.f45411i, dVar);
        }

        /* renamed from: k */
        public final Object m17815k(Object obj, Object obj2) {
            return m17816i(obj, (d) obj2).m17814s(s.a);
        }

        /* renamed from: s */
        public final Object m17814s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45407e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                AbstractC15992h0 abstractC15992h0 = (AbstractC15992h0) C16112i.this.f45386c.get();
                boolean z = this.f45409g;
                List<String> list = this.f45410h;
                this.f45407e = 1;
                Object mo17998n = abstractC15992h0.mo17998n(z, list, this);
                obj = mo17998n;
                if (mo17998n == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            this.f45411i.d(Boolean.valueOf(((Boolean) obj).booleanValue()));
            return s.a;
        }
    }

    @e(c = "com.truecaller.videocallerid.VideoCallerIdImpl$updateHiddenContacts$1", f = "VideoCallerId.kt", l = {439}, m = "invokeSuspend")
    /* renamed from: e.a.k.i$c */
    /* loaded from: classes15-dex2jar.jar:e/a/k/i$c.class */
    public static final class C16115c extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f45412e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C16115c(d dVar) {
            super(2, dVar);
            C16112i.this = r5;
        }

        /* renamed from: i */
        public final d<s> m17813i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C16115c(dVar);
        }

        /* renamed from: k */
        public final Object m17812k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            return new C16115c(dVar).m17811s(s.a);
        }

        /* renamed from: s */
        public final Object m17811s(Object obj) {
            s1.w.j.a aVar = s1.w.j.a.a;
            int i = this.f45412e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f45412e = 1;
                if (((AbstractC15992h0) C16112i.this.f45386c.get()).mo18005d(this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            return s.a;
        }
    }

    @Inject
    public C16112i(@Named("UI") f fVar, a<AbstractC16067r0> aVar, a<AbstractC15992h0> aVar2, AbstractC15980e1 abstractC15980e1, a<AbstractC15964c2> aVar3, a<AbstractC15966d0> aVar4, AbstractC16090u0 abstractC16090u0, a<AbstractC15955b0> aVar5, C16028m0 c16028m0, a<AbstractC15950a1> aVar6, a<AbstractC15951a2> aVar7, a<AbstractC15997d> aVar8, a<AbstractC15963c1> aVar9, a<AbstractC16043p1> aVar10, a<AbstractC16102y0> aVar11, AbstractC19223c0 abstractC19223c0, a<AbstractC16153b> aVar12, a<AbstractC16015i1> aVar13, C15696g c15696g, AbstractC16044q abstractC16044q, a<AbstractC16107d> aVar14) {
        l.e(fVar, "coroutineContext");
        l.e(aVar, "videoCallerIdAvailability");
        l.e(aVar2, "hiddenContactManager");
        l.e(abstractC15980e1, "router");
        l.e(aVar3, "videoCallerIdAvatarManager");
        l.e(aVar4, "outgoingVideoProvider");
        l.e(abstractC16090u0, "videoCallerIdDownloadLauncher");
        l.e(aVar5, "incomingVideoProvider");
        l.e(c16028m0, "shareVideoUpdateWorkerLauncher");
        l.e(aVar6, "presenceHandler");
        l.e(aVar7, "videoIdUpdatesReceiver");
        l.e(aVar8, "analyticsUtil");
        l.e(aVar9, "videoCallerIdPromoManager");
        l.e(aVar10, "videoCallerIdUpdatePromoManager");
        l.e(aVar11, "videoCallerIdOnboardingManager");
        l.e(abstractC19223c0, "resourceProvider");
        l.e(aVar12, "databaseUtil");
        l.e(aVar13, "settings");
        l.e(c15696g, "previewConfigGenerator");
        l.e(abstractC16044q, "exoPlayerUtil");
        l.e(aVar14, "businessVideoCallerIDAnalytics");
        this.f45384a = fVar;
        this.f45385b = aVar;
        this.f45386c = aVar2;
        this.f45387d = abstractC15980e1;
        this.f45388e = aVar3;
        this.f45389f = aVar4;
        this.f45390g = abstractC16090u0;
        this.f45391h = aVar5;
        this.f45392i = c16028m0;
        this.f45393j = aVar6;
        this.f45394k = aVar7;
        this.f45395l = aVar8;
        this.f45396m = aVar9;
        this.f45397n = aVar10;
        this.f45398o = aVar11;
        this.f45399p = abstractC19223c0;
        this.f45400q = aVar12;
        this.f45401r = aVar13;
        this.f45402s = c15696g;
        this.f45403t = abstractC16044q;
        this.f45404u = aVar14;
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: A */
    public AbstractC15964c2 mo17867A() {
        Object obj = this.f45388e.get();
        l.d(obj, "videoCallerIdAvatarManager.get()");
        return (AbstractC15964c2) obj;
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: B */
    public void mo17866B(FragmentManager fragmentManager) {
        l.e(fragmentManager, "fragmentManager");
        Objects.requireNonNull(C15924b.f44912d);
        l.e(fragmentManager, "fragmentManager");
        new C15924b().show(fragmentManager, C15924b.class.getSimpleName());
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: C */
    public void mo17865C(FragmentManager fragmentManager) {
        l.e(fragmentManager, "fragmentManager");
        Objects.requireNonNull(C15918a.f44898l);
        l.e(fragmentManager, "fragmentManager");
        new C15918a().show(fragmentManager, C15918a.class.getSimpleName());
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: D */
    public void mo17864D() {
        ((AbstractC16043p1) this.f45397n.get()).mo17966b();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: E */
    public void mo17863E() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16115c(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: F */
    public boolean mo17862F() {
        return ((AbstractC15992h0) this.f45386c.get()).mo18008a();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: G */
    public AbstractC15836l mo17861G() {
        return this.f45402s.m18509b();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: H */
    public void mo17860H(Context context, PreviewModes previewModes, OnboardingContext onboardingContext) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(previewModes, "previewModes");
        l.e(onboardingContext, "onboardingContext");
        C19291g.m13643A1(this.f45387d, context, previewModes, new OnboardingData(null, onboardingContext, 1, null), null, null, 24, null);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: I */
    public void mo17859I(FragmentManager fragmentManager, String str, List<String> list, s1.z.b.l<? super Boolean, s> lVar) {
        l.e(fragmentManager, "fragmentManager");
        l.e(str, "contactName");
        l.e(list, "contactNumbers");
        l.e(lVar, "callback");
        ((AbstractC15992h0) this.f45386c.get()).mo18003f(fragmentManager, str, list, lVar);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: J */
    public void mo17858J() {
        ((AbstractC16015i1) this.f45401r.get()).putBoolean("hasUserDismissedFavoriteContactOnboarding", true);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: K */
    public String mo17857K() {
        return C22128a.m8627e2("UUID.randomUUID().toString()");
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: L */
    public String mo17856L() {
        AbstractC19223c0 abstractC19223c0 = this.f45399p;
        String mo13768b = abstractC19223c0.mo13768b(C4718R.string.vid_call_initiated, abstractC19223c0.mo13768b(C4718R.string.video_caller_id, new Object[0]));
        l.d(mo13768b, "resourceProvider.getStri….string.video_caller_id))");
        return mo13768b;
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: M */
    public Object mo17855M(Number number, d<? super OutgoingVideoDetails> dVar) {
        return ((AbstractC15966d0) this.f45389f.get()).mo18062a(number, dVar);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: N */
    public long mo17854N() {
        return ((AbstractC16015i1) this.f45401r.get()).getLong("onboardingInFavoriteContactShownAt", 0L);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: O */
    public Object mo17853O(boolean z, List<String> list, d<? super Boolean> dVar) {
        return Boolean.TRUE;
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: P */
    public void mo17852P() {
        this.f45392i.m17983a();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: Q */
    public Object mo17851Q(String str, d<? super C16120b> dVar) {
        return ((AbstractC15955b0) this.f45391h.get()).mo18093b(str, dVar);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: R */
    public void mo17850R(boolean z, List<String> list, s1.z.b.l<? super Boolean, s> lVar) {
        l.e(list, "contactNumbers");
        l.e(lVar, "shouldShowListener");
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16114b(z, list, lVar, null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: S */
    public Object mo17849S(C16120b c16120b, d<? super s> dVar) {
        Object mo18094a = ((AbstractC15955b0) this.f45391h.get()).mo18094a(c16120b, dVar);
        return mo18094a == s1.w.j.a.a ? mo18094a : s.a;
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: T */
    public AbstractC16107d mo17848T() {
        Object obj = this.f45404u.get();
        l.d(obj, "businessVideoCallerIDAnalytics.get()");
        return (AbstractC16107d) obj;
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: U */
    public void mo17847U(String str, String str2, String str3, boolean z) {
        C22128a.m8703I0(str, "videoId", str2, "videoUrl", str3, FailedBinderCallBack.CALLER_ID);
        ((AbstractC15997d) this.f45395l.get()).mo18012h(str, str2, str3, z);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: V */
    public void mo17846V(String str) {
        ((AbstractC15951a2) this.f45394k.get()).mo18098a(str);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: a */
    public boolean mo17845a() {
        return ((AbstractC15963c1) this.f45396m.get()).mo18088a();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: b */
    public boolean mo17844b() {
        return ((AbstractC16067r0) this.f45385b.get()).isEnabled();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: c */
    public void mo17843c() {
        ((AbstractC15963c1) this.f45396m.get()).mo18087b();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: d */
    public void mo17842d(Intent intent) {
        l.e(intent, "intent");
        ((AbstractC15950a1) this.f45393j.get()).mo18102a(intent);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: e */
    public boolean mo17841e(OnboardingType onboardingType) {
        l.e(onboardingType, "onboardingType");
        return ((AbstractC16102y0) this.f45398o.get()).mo17881e(onboardingType);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: f */
    public void mo17840f() {
        s1.a.a.a.v0.f.d.w2(this, (f) null, (j0) null, new C16113a(null), 3, (Object) null);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: g */
    public Object mo17839g(d<? super Boolean> dVar) {
        return ((AbstractC15966d0) this.f45389f.get()).mo18057g(dVar);
    }

    public f getCoroutineContext() {
        return this.f45384a;
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: h */
    public Object mo17838h(boolean z, d<? super OutgoingVideoDetails> dVar) {
        return ((AbstractC15966d0) this.f45389f.get()).mo18056h(z, dVar);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: i */
    public UpdateVideoCallerIdPromoConfig mo17837i() {
        return ((AbstractC16043p1) this.f45397n.get()).mo17964i();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: j */
    public h<AbstractC16083t0> mo17836j() {
        return this.f45390g.mo17907j();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: k */
    public boolean mo17835k() {
        return ((AbstractC16067r0) this.f45385b.get()).mo17918k();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: l */
    public boolean mo17834l() {
        return ((AbstractC16043p1) this.f45397n.get()).mo17963l();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: m */
    public C15987g0 mo17833m() {
        return ((AbstractC16067r0) this.f45385b.get()).mo17917m();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: n */
    public Object mo17832n(boolean z, List<String> list, d<? super Boolean> dVar) {
        return ((AbstractC15992h0) this.f45386c.get()).mo17998n(z, list, dVar);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: o */
    public Object mo17831o(String str, d<? super Boolean> dVar) {
        return ((AbstractC15966d0) this.f45389f.get()).mo18055o(str, dVar);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: p */
    public void mo17830p(String str, String str2, String str3) {
        l.e(str2, "videoId");
        l.e(str3, FailedBinderCallBack.CALLER_ID);
        ((AbstractC15997d) this.f45395l.get()).mo18019a(str, str2, str3);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: q */
    public AbstractC24531p mo17829q(String str) {
        l.e(str, "url");
        AbstractC24531p mo4937a = this.f45403t.mo17960c().mo4937a(Uri.parse(str));
        l.d(mo4937a, "exoPlayerUtil.getCachedM…diaSource(Uri.parse(url))");
        return mo4937a;
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: r */
    public Object mo17828r(String str, d<? super s> dVar) {
        Object mo18092c = ((AbstractC15955b0) this.f45391h.get()).mo18092c(str, dVar);
        return mo18092c == s1.w.j.a.a ? mo18092c : s.a;
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: s */
    public String mo17827s() {
        return ((AbstractC15992h0) this.f45386c.get()).mo18004e().name();
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: t */
    public void mo17826t(AbstractC16039p abstractC16039p) {
        l.e(abstractC16039p, DTBMetricsConfiguration.CONFIG_DIR);
        this.f45390g.mo17908a(abstractC16039p);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: u */
    public boolean mo17825u() {
        return C19291g.m13615K((AbstractC16015i1) this.f45401r.get(), "hasUserDismissedFavoriteContactOnboarding", false, 2, null);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: v */
    public void mo17824v(FragmentManager fragmentManager, String str) {
        l.e(fragmentManager, "fragmentManager");
        l.e(str, "contactName");
        Objects.requireNonNull((C15993h1) this.f45387d);
        l.e(fragmentManager, "fragmentManager");
        l.e(str, "contactName");
        Objects.requireNonNull(C15785b.f44543g);
        l.e(str, "contactName");
        l.e(fragmentManager, "fragmentManager");
        C15785b c15785b = new C15785b();
        Bundle bundle = new Bundle();
        bundle.putString("argReportContactName", str);
        c15785b.setArguments(bundle);
        c15785b.show(fragmentManager, d0.a(C15785b.class).c());
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: w */
    public void mo17823w(Context context, RecordingScreenModes recordingScreenModes, OnboardingContext onboardingContext) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(recordingScreenModes, "recordingScreenModes");
        l.e(onboardingContext, "onboardingContext");
        ((C15993h1) this.f45387d).m18020a(context, recordingScreenModes, new OnboardingData(null, onboardingContext, 1, null));
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: x */
    public void mo17822x(Context context, OnboardingContext onboardingContext) {
        l.e(context, AnalyticsConstants.CONTEXT);
        l.e(onboardingContext, "onboardingContext");
        C19291g.m13643A1(this.f45387d, context, PreviewModes.ON_BOARDING, new OnboardingData(null, onboardingContext, 1, null), null, null, 24, null);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: y */
    public void mo17821y(long j) {
        ((AbstractC16015i1) this.f45401r.get()).putLong("onboardingInFavoriteContactShownAt", j);
    }

    @Override // p193e.p194a.p947k.AbstractC16111h
    /* renamed from: z */
    public boolean mo17820z() {
        return ((AbstractC16067r0) this.f45385b.get()).isAvailable();
    }
}
