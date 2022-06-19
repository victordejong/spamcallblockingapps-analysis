package p193e.p194a.p682e.p698c;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import com.razorpay.AnalyticsConstants;
import com.truecaller.p183ui.details.DetailsShowcases;
import java.util.Objects;
import javax.inject.Inject;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.AbstractC21187w1;
import p193e.p194a.p1129p5.p1134u0.AbstractC19322a;
import p193e.p194a.p1129p5.p1134u0.AbstractC19323b;
import p193e.p194a.p1129p5.p1134u0.C19326d;
import s1.g;
import s1.i;
import s1.z.b.a;
import s1.z.c.l;
import s1.z.c.m;
/* renamed from: e.a.e.c.a */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/a.class */
public final class C13052a {

    /* renamed from: a */
    public final g f37898a = C25225a.m3978P1(new C13055c());

    /* renamed from: b */
    public final g f37899b = C25225a.m3978P1(new C13053a(1, this));

    /* renamed from: c */
    public final g f37900c = C25225a.m3978P1(new C13053a(0, this));

    /* renamed from: d */
    public final g f37901d = C25225a.m3978P1(new C13054b());

    /* renamed from: e */
    public final Context f37902e;

    /* renamed from: e.a.e.c.a$a */
    /* loaded from: classes5-dex2jar.jar:e/a/e/c/a$a.class */
    public static final class C13053a extends m implements a<AbstractC19322a> {

        /* renamed from: b */
        public final /* synthetic */ int f37903b;

        /* renamed from: c */
        public final /* synthetic */ Object f37904c;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13053a(int i, Object obj) {
            super(0);
            this.f37903b = i;
            this.f37904c = obj;
        }

        public final Object invoke() {
            int i = this.f37903b;
            if (i == 0) {
                AbstractC19322a mo12522V2 = C13052a.m22101a((C13052a) this.f37904c).mo10154s().mo12522V2();
                l.d(mo12522V2, "graphHolder.objectsGraph…ontextCallShowcaseUtils()");
                return mo12522V2;
            } else if (i != 1) {
                throw null;
            } else {
                AbstractC19322a mo12250p5 = C13052a.m22101a((C13052a) this.f37904c).mo10154s().mo12250p5();
                l.d(mo12250p5, "graphHolder.objectsGraph.voipShowcaseUtils()");
                return mo12250p5;
            }
        }
    }

    /* renamed from: e.a.e.c.a$b */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/a$b.class */
    public static final class C13054b extends m implements a<AbstractC19323b> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13054b() {
            super(0);
            C13052a.this = r4;
        }

        public Object invoke() {
            AbstractC19323b mo12631N0 = C13052a.m22101a(C13052a.this).mo10154s().mo12631N0();
            l.d(mo12631N0, "graphHolder.objectsGraph.featureShowcaseUtils()");
            return mo12631N0;
        }
    }

    /* renamed from: e.a.e.c.a$c */
    /* loaded from: classes15-dex2jar.jar:e/a/e/c/a$c.class */
    public static final class C13055c extends m implements a<AbstractC21187w1> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C13055c() {
            super(0);
            C13052a.this = r4;
        }

        public Object invoke() {
            Context context = C13052a.this.f37902e;
            Objects.requireNonNull(context, "null cannot be cast to non-null type com.truecaller.GraphHolder");
            return (AbstractC21187w1) context;
        }
    }

    @Inject
    public C13052a(Context context) {
        l.e(context, AnalyticsConstants.CONTEXT);
        this.f37902e = context;
    }

    /* renamed from: a */
    public static final AbstractC21187w1 m22101a(C13052a c13052a) {
        return (AbstractC21187w1) c13052a.f37898a.getValue();
    }

    /* renamed from: b */
    public final C19326d m22100b(DetailsShowcases detailsShowcases, View view, Activity activity) {
        C19326d c19326d;
        int ordinal = detailsShowcases.ordinal();
        if (ordinal == 0) {
            String name = detailsShowcases.name();
            String string = activity.getString(2131890362, new Object[]{activity.getString(2131890378)});
            l.d(string, "activity.getString(R.str…ring(R.string.voip_text))");
            String string2 = activity.getString(2131890361, new Object[]{activity.getString(2131890378)});
            l.d(string2, "activity.getString(R.str…ring(R.string.voip_text))");
            c19326d = new C19326d(view, 1, string, string2, name, 16, 14, 2131101371, 2131101371, 2131101372, null, 1024);
        } else if (ordinal != 1) {
            throw new i();
        } else {
            String name2 = detailsShowcases.name();
            String string3 = activity.getString(2131888601);
            l.d(string3, "activity.getString(R.str…text_call_showcase_title)");
            String string4 = activity.getString(2131888600);
            l.d(string4, "activity.getString(R.str…xt_call_showcase_message)");
            c19326d = new C19326d(view, 2, string3, string4, name2, 24, 16, 2131100922, 2131099834, 2131100902, 2131100902);
        }
        return c19326d;
    }

    /* renamed from: c */
    public final AbstractC19323b m22099c() {
        return (AbstractC19323b) this.f37901d.getValue();
    }
}
