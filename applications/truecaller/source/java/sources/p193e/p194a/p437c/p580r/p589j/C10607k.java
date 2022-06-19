package p193e.p194a.p437c.p580r.p589j;

import com.truecaller.insights.models.feedback.FeedbackType;
import com.truecaller.insights.models.pdo.ClassifierType;
import com.truecaller.insights.models.smartcards.CardFeedBackType;
import io.agora.rtc.Constants;
import javax.inject.Named;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p437c.p525b0.C9712c;
import p193e.p194a.p437c.p533e.AbstractC10060c;
import p193e.p194a.p437c.p548h.p551m.C10266c;
import p193e.p194a.p437c.p552i.p557e.AbstractC10330c;
import p193e.p194a.p437c.p552i.p557e.C10329b;
import p193e.p194a.p437c.p580r.p589j.AbstractC10616p;
import s1.g;
import s1.i;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
import w3.b.a.b;
/* renamed from: e.a.c.r.j.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/r/j/k.class */
public final class C10607k extends AbstractC10592f {

    /* renamed from: b */
    public final f f31620b;

    /* renamed from: c */
    public final AbstractC10060c f31621c;

    /* renamed from: d */
    public final AbstractC10330c f31622d;

    /* renamed from: e */
    public final g f31623e = C25225a.m3978P1(new C10609b());

    /* renamed from: f */
    public final C10329b f31624f;

    /* renamed from: g */
    public final C10266c f31625g;

    /* renamed from: h */
    public final CardFeedBackType f31626h;

    /* renamed from: i */
    public final AbstractC10616p f31627i;

    /* renamed from: j */
    public final Boolean f31628j;

    /* renamed from: e.a.c.r.j.k$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/k$a.class */
    public interface AbstractC10608a {
        /* renamed from: N */
        AbstractC10330c mo12632N();

        @Named("IO")
        /* renamed from: a */
        f mo11651a();

        /* renamed from: n */
        AbstractC10060c mo12282n();
    }

    /* renamed from: e.a.c.r.j.k$b */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/k$b.class */
    public static final class C10609b extends m implements a<f> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10609b() {
            super(0);
            C10607k.this = r4;
        }

        public Object invoke() {
            return C10607k.this.f31620b;
        }
    }

    @e(c = "com.truecaller.insights.models.smartcards.GiveCardFeedbackUseCase", f = "FeedbackAction.kt", l = {Constants.ERR_PUBLISH_STREAM_NUM_REACH_LIMIT}, m = "execute")
    /* renamed from: e.a.c.r.j.k$c */
    /* loaded from: classes10-dex2jar.jar:e/a/c/r/j/k$c.class */
    public static final class C10610c extends c {

        /* renamed from: d */
        public /* synthetic */ Object f31630d;

        /* renamed from: e */
        public int f31631e;

        /* renamed from: g */
        public Object f31633g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10610c(d dVar) {
            super(dVar);
            C10607k.this = r4;
        }

        /* renamed from: s */
        public final Object m25768s(Object obj) {
            this.f31630d = obj;
            this.f31631e |= Integer.MIN_VALUE;
            return C10607k.this.mo25534a(this);
        }
    }

    public C10607k(C10266c c10266c, CardFeedBackType cardFeedBackType, AbstractC10616p abstractC10616p, String str, Boolean bool) {
        FeedbackType feedbackType;
        l.e(c10266c, "insightsSmsMessage");
        l.e(cardFeedBackType, "userPreference");
        l.e(abstractC10616p, "infoCardCategory");
        l.e(str, "categorizerCategory");
        this.f31625g = c10266c;
        this.f31626h = cardFeedBackType;
        this.f31627i = abstractC10616p;
        this.f31628j = bool;
        AbstractC10608a abstractC10608a = (AbstractC10608a) C22128a.m8726C1(AbstractC10608a.class, "EntryPointAccessors.from…), Injection::class.java)");
        this.f31620b = abstractC10608a.mo11651a();
        this.f31621c = abstractC10608a.mo12282n();
        this.f31622d = abstractC10608a.mo12632N();
        switch (cardFeedBackType.getFeedbackClass().ordinal()) {
            case 0:
                feedbackType = FeedbackType.SEMICARD_FEEDBACK;
                break;
            case 1:
                feedbackType = FeedbackType.INFOCARD_FEEDBACK;
                break;
            case 2:
            case 3:
            case 4:
                feedbackType = FeedbackType.UPDATES_FEEDBACK;
                break;
            case 5:
            case 6:
                feedbackType = FeedbackType.ROW_FEEDBACK;
                break;
            default:
                throw new i();
        }
        String str2 = c10266c.f30440i;
        if (str2 == null) {
            AbstractC10616p.C10625i c10625i = (AbstractC10616p.C10625i) (!(abstractC10616p instanceof AbstractC10616p.C10625i) ? null : abstractC10616p);
            str2 = c10625i != null ? c10625i.f31662b : null;
        }
        this.f31624f = new C10329b(c10266c.f30433b, c10266c.f30434c, new b(c10266c.f30435d.getTime()), str, abstractC10616p.toString(), cardFeedBackType.getValue(), feedbackType, new C9712c(str2 == null ? "" : str2, abstractC10616p instanceof AbstractC10616p.C10625i ? ((AbstractC10616p.C10625i) abstractC10616p).f31663c : ClassifierType.DEFAULT), C17891a1.C17902k.m15695A0(c10266c));
    }

    /* JADX WARN: Code restructure failed: missing block: B:20:0x00ce, code lost:
        if (r17.f31626h.getFeedbackSubclass() == com.truecaller.insights.models.smartcards.FeedbackSubclass.NEGATIVE) goto L24;
     */
    /* JADX WARN: Code restructure failed: missing block: B:22:0x00de, code lost:
        if (r17.f31626h.getFeedbackSubclass() == com.truecaller.insights.models.smartcards.FeedbackSubclass.NEGATIVE) goto L23;
     */
    /* JADX WARN: Code restructure failed: missing block: B:23:0x00e1, code lost:
        r18 = "non-spam";
     */
    /* JADX WARN: Code restructure failed: missing block: B:24:0x00e7, code lost:
        r18 = "spam";
     */
    /* JADX WARN: Removed duplicated region for block: B:10:0x0048  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x0068  */
    /* JADX WARN: Removed duplicated region for block: B:39:0x01c0  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x01c8  */
    /* JADX WARN: Removed duplicated region for block: B:42:0x01cf  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01d6  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x01ee  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x01fa  */
    /* JADX WARN: Removed duplicated region for block: B:50:0x023e  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0262  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x02a4  */
    /* JADX WARN: Removed duplicated region for block: B:63:0x02ac  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x02b3  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x02ba  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x02c1  */
    /* JADX WARN: Removed duplicated region for block: B:69:0x02d3  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x02d9  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x030e  */
    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo25534a(s1.w.d<? super s1.s> r18) {
        /*
            Method dump skipped, instructions count: 796
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p437c.p580r.p589j.C10607k.mo25534a(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p437c.p580r.p589j.AbstractC10592f
    /* renamed from: b */
    public f mo25533b() {
        return (f) this.f31623e.getValue();
    }
}
