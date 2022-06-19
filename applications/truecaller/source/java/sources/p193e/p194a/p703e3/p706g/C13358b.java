package p193e.p194a.p703e3.p706g;

import android.content.Context;
import android.widget.TextView;
import com.razorpay.AnalyticsConstants;
import com.truecaller.api.services.callerid.p135v1.model.Badge;
import com.truecaller.api.services.callerid.p135v1.model.BusinessCard;
import com.truecaller.api.services.callerid.p135v1.model.SignedBusinessCard;
import com.truecaller.api.services.callerid.p135v1.model.Video;
import java.util.List;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1129p5.p1132s0.C19291g;
import p193e.p194a.p677d3.AbstractC12589h;
import p193e.p194a.p703e3.p705f.C13354a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
import s1.z.c.m;
@e(c = "com.truecaller.call_alert.debug.NotificationDebugDialog$showBusinessCard$1", f = "NotificationDebugDialog.kt", l = {65}, m = "invokeSuspend")
/* renamed from: e.a.e3.g.b */
/* loaded from: classes6-dex2jar.jar:e/a/e3/g/b.class */
public final class C13358b extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public int f38797e;

    /* renamed from: f */
    public final /* synthetic */ C13355a f38798f;

    /* renamed from: e.a.e3.g.b$a */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/g/b$a.class */
    public static final class C13359a extends m implements l<Badge, CharSequence> {

        /* renamed from: b */
        public static final C13359a f38799b = new C13359a();

        public C13359a() {
            super(1);
        }

        /* renamed from: d */
        public Object m21879d(Object obj) {
            return ((Badge) obj).name();
        }
    }

    @e(c = "com.truecaller.call_alert.debug.NotificationDebugDialog$showBusinessCard$1$businessCard$1", f = "NotificationDebugDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e3.g.b$b */
    /* loaded from: classes6-dex2jar.jar:e/a/e3/g/b$b.class */
    public static final class C13360b extends i implements p<i0, d<? super SignedBusinessCard>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13360b(d dVar) {
            super(2, dVar);
            C13358b.this = r5;
        }

        /* renamed from: i */
        public final d<s> m21878i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C13360b(dVar);
        }

        /* renamed from: k */
        public final Object m21877k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            C13358b c13358b = C13358b.this;
            dVar.getContext();
            C25225a.m3932a3(s.a);
            AbstractC12589h abstractC12589h = c13358b.f38798f.f38792a;
            if (abstractC12589h != null) {
                return abstractC12589h.mo22853a();
            }
            s1.z.c.l.l("businessCardRepository");
            throw null;
        }

        /* renamed from: s */
        public final Object m21876s(Object obj) {
            C25225a.m3932a3(obj);
            AbstractC12589h abstractC12589h = C13358b.this.f38798f.f38792a;
            if (abstractC12589h != null) {
                return abstractC12589h.mo22853a();
            }
            s1.z.c.l.l("businessCardRepository");
            throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C13358b(C13355a c13355a, d dVar) {
        super(2, dVar);
        this.f38798f = c13355a;
    }

    /* renamed from: i */
    public final d<s> m21882i(Object obj, d<?> dVar) {
        s1.z.c.l.e(dVar, "completion");
        return new C13358b(this.f38798f, dVar);
    }

    /* renamed from: k */
    public final Object m21881k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        s1.z.c.l.e(dVar, "completion");
        return new C13358b(this.f38798f, dVar).m21880s(s.a);
    }

    /* renamed from: s */
    public final Object m21880s(Object obj) {
        s sVar = s.a;
        a aVar = a.a;
        int i = this.f38797e;
        if (i == 0) {
            C25225a.m3932a3(obj);
            f fVar = this.f38798f.f38794c;
            if (fVar == null) {
                s1.z.c.l.l("ioContext");
                throw null;
            }
            C13360b c13360b = new C13360b(null);
            this.f38797e = 1;
            Object a4 = s1.a.a.a.v0.f.d.a4(fVar, c13360b, this);
            obj = a4;
            if (a4 == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
        }
        SignedBusinessCard signedBusinessCard = (SignedBusinessCard) obj;
        if (signedBusinessCard == null) {
            Context requireContext = this.f38798f.requireContext();
            s1.z.c.l.d(requireContext, "requireContext()");
            C19291g.m13589S1(requireContext, 0, "No cached business card is found", 0, 5);
            return sVar;
        }
        BusinessCard card = signedBusinessCard.getCard();
        s1.z.c.l.d(card, AnalyticsConstants.CARD);
        List<Badge> badgesList = card.getBadgesList();
        s1.z.c.l.d(badgesList, "it");
        if (!Boolean.valueOf(!badgesList.isEmpty()).booleanValue()) {
            badgesList = null;
        }
        String O = badgesList != null ? s1.u.i.O(badgesList, ",", (CharSequence) null, (CharSequence) null, 0, (CharSequence) null, C13359a.f38799b, 30) : null;
        C13355a c13355a = this.f38798f;
        C13354a c13354a = (C13354a) c13355a.f38796e.m34468b(c13355a, C13355a.f38790f[0]);
        TextView textView = c13354a.f38785d;
        s1.z.c.l.d(textView, "firstName");
        textView.setText(C13355a.m21884OA(this.f38798f, card.getFirstName(), "No first name"));
        TextView textView2 = c13354a.f38787f;
        s1.z.c.l.d(textView2, "lastName");
        textView2.setText(C13355a.m21884OA(this.f38798f, card.getLastName(), "No last name"));
        TextView textView3 = c13354a.f38788g;
        s1.z.c.l.d(textView3, "phoneNumber");
        textView3.setText(C13355a.m21884OA(this.f38798f, String.valueOf(card.getPhoneNumber()), "No number"));
        TextView textView4 = c13354a.f38782a;
        s1.z.c.l.d(textView4, "badges");
        textView4.setText(C13355a.m21884OA(this.f38798f, O, "No badge"));
        TextView textView5 = c13354a.f38783b;
        s1.z.c.l.d(textView5, "city");
        textView5.setText(C13355a.m21884OA(this.f38798f, card.getCity(), "No city"));
        TextView textView6 = c13354a.f38784c;
        s1.z.c.l.d(textView6, "company");
        textView6.setText(C13355a.m21884OA(this.f38798f, card.getCompany(), "No company"));
        TextView textView7 = c13354a.f38786e;
        s1.z.c.l.d(textView7, "jobTitle");
        textView7.setText(C13355a.m21884OA(this.f38798f, card.getJobTitle(), "No job title"));
        TextView textView8 = c13354a.f38789h;
        s1.z.c.l.d(textView8, "videoId");
        C13355a c13355a2 = this.f38798f;
        List<Video> videosList = card.getVideosList();
        String str = null;
        if (videosList != null) {
            if (!Boolean.valueOf(true ^ videosList.isEmpty()).booleanValue()) {
                videosList = null;
            }
            str = null;
            if (videosList != null) {
                Video video = (Video) s1.u.i.B(videosList);
                str = null;
                if (video != null) {
                    str = video.getVideoId();
                }
            }
        }
        textView8.setText(C13355a.m21884OA(c13355a2, str, "No video found"));
        return sVar;
    }
}
