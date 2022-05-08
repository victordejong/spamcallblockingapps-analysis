package p459j.p460a.p521j0.p522u.p523d;

import android.content.Context;
import androidx.annotation.UiThread;
import kotlin.Metadata;
import p459j.p460a.p582w0.C14060l2;
import p459j.p460a.p582w0.C14197v4;
import p459j.p460a.p582w0.p585b5.C13930d;
import p459j.p460a.p582w0.p590x4.C14282k;
import p626l.AbstractC14974f;
import p626l.C14975g;
import p626l.p629c0.AbstractC14906i;
import p626l.p641z.p642c.AbstractC15107a;
import p626l.p641z.p643d.AbstractC15150l;
import p626l.p641z.p643d.C15131a0;
import p626l.p641z.p643d.C15149k;
import p626l.p641z.p643d.C15157s;
@Metadata(m817bv = {1, 0, 3}, m816d1 = {"��8\n\u0002\u0018\u0002\n\u0002\u0010��\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0014\n\u0002\u0010\b\n\u0002\b\u000e\n\u0002\u0018\u0002\n��\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n��\n\u0002\u0010\u0002\n\u0002\b\u0007\bÆ\u0002\u0018��2\u00020\u0001:\u00015B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010+\u001a\u00020*2\u0006\u0010,\u001a\u00020-H\u0002J\u0018\u0010.\u001a\u00020/2\u0006\u0010,\u001a\u00020-2\u0006\u00100\u001a\u00020*H\u0007J\u0010\u00101\u001a\u00020/2\u0006\u0010,\u001a\u00020-H\u0007J\b\u00102\u001a\u00020/H\u0007J\u0012\u00103\u001a\u00020/2\b\u00104\u001a\u0004\u0018\u00010\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0006\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0007\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\t\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\n\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000b\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\r\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000e\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u000f\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0010\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0011\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n��R\u000e\u0010\u0012\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0013\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0014\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0015\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0016\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0017\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u0018\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001a\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001b\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001c\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001d\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001e\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010\u001f\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010 \u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010!\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010\"\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010#\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010$\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010%\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u000e\u0010&\u001a\u00020\u0019X\u0082T¢\u0006\u0002\n��R\u0010\u0010'\u001a\u0004\u0018\u00010(X\u0082\u000e¢\u0006\u0002\n��R\u000e\u0010)\u001a\u00020*X\u0082\u000e¢\u0006\u0002\n��¨\u00066"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/CallEndDialogEventHelper;", "", "()V", "DISMISS_REASON_ADD_TO_FAVORITE", "", "DISMISS_REASON_AUTO_CLOSE", "DISMISS_REASON_BLOCK", "DISMISS_REASON_CLICK_BACK_BUTTON", "DISMISS_REASON_CLICK_BLANK_AREA", "DISMISS_REASON_CLICK_CLOSE_BUTTON", "DISMISS_REASON_CLICK_MANUAL_UPDATE", "DISMISS_REASON_CLICK_UPGRADE_AUTO_UPDATE", "DISMISS_REASON_CREEN_OFF_SYSTEM", "DISMISS_REASON_MAKE_CALL", "DISMISS_REASON_OPEN_CALL_LOGS_PAGE", "DISMISS_REASON_OPEN_NDP", "DISMISS_REASON_OPEN_REPORT", "DISMISS_REASON_SCREEN_OFF_MANUAL", "EVENT", "KEY_CHECKED_CALL_END_FULL_AD", "KEY_DISMISS_REASON", "KEY_DURATION", "KEY_IS_MULTIPLE_MISSING", "KEY_VERSION", "VALUE_DISMISS_REASON_ADD_TO_FAVORITE", "", "VALUE_DISMISS_REASON_CLICK_BACK_BUTTON", "VALUE_DISMISS_REASON_CLICK_BLANK_AREA", "VALUE_DISMISS_REASON_CLICK_CLOSE_BUTTON", "VALUE_DISMISS_REASON_CLICK_MANUAL_UPDATE", "VALUE_DISMISS_REASON_CLICK_UPGRADE_AUTO_UPDATE", "VALUE_DISMISS_REASON_CLOSE_AUTO_CLOSE", "VALUE_DISMISS_REASON_DISMISS_BLOCK", "VALUE_DISMISS_REASON_MAKE_CALL", "VALUE_DISMISS_REASON_OPEN_CALL_LOGS_PAGE", "VALUE_DISMISS_REASON_OPEN_NDP", "VALUE_DISMISS_REASON_OPEN_REPORT", "VALUE_DISMISS_REASON_SCREEN_OFF_MANUAL", "VALUE_DISMISS_REASON_SCREEN_OFF_SYSTEM", "eventHelper", "Lgogolook/callgogolook2/phone/call/dialog/CallEndDialogEventHelper$InternalEventHelper;", "isInteractiveAtStart", "", "isInteractive", "context", "Landroid/content/Context;", "start", "", "isMultipleMissing", "stop", "trackCheckedCallEndFullAd", "trackDismissReason", "reason", "InternalEventHelper", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
/* renamed from: j.a.j0.u.d.r0 */
/* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/r0.class */
public final class C12660r0 {

    /* renamed from: a */
    public static C12661a f28532a;

    /* renamed from: b */
    public static boolean f28533b;

    /* renamed from: c */
    public static final C12660r0 f28534c = new C12660r0();

    @Metadata(m817bv = {1, 0, 3}, m816d1 = {"��\u0014\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\b\u0002\u0018��2\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002R\u001b\u0010\u0003\u001a\u00020\u00048FX\u0086\u0084\u0002¢\u0006\f\n\u0004\b\u0007\u0010\b\u001a\u0004\b\u0005\u0010\u0006¨\u0006\t"}, m815d2 = {"Lgogolook/callgogolook2/phone/call/dialog/CallEndDialogEventHelper$InternalEventHelper;", "Lgogolook/callgogolook2/util/analytics/EventTrackingHelper;", "()V", "timeProbe", "Lgogolook/callgogolook2/util/debug/TimeProbe;", "getTimeProbe", "()Lgogolook/callgogolook2/util/debug/TimeProbe;", "timeProbe$delegate", "Lkotlin/Lazy;", "whoscall_rcRelease"}, m814k = 1, m813mv = {1, 1, 13})
    /* renamed from: j.a.j0.u.d.r0$a */
    /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/r0$a.class */
    public static final class C12661a extends C14282k {

        /* renamed from: g */
        public static final /* synthetic */ AbstractC14906i[] f28535g;

        /* renamed from: f */
        public final AbstractC14974f f28536f = C14975g.m662a(C12662a.f28537a);

        /* renamed from: j.a.j0.u.d.r0$a$a */
        /* loaded from: classes3-dex2jar.jar:j/a/j0/u/d/r0$a$a.class */
        public static final class C12662a extends AbstractC15150l implements AbstractC15107a<C13930d> {

            /* renamed from: a */
            public static final C12662a f28537a = new C12662a();

            public C12662a() {
                super(0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // p626l.p641z.p642c.AbstractC15107a
            public final C13930d invoke() {
                return new C13930d();
            }
        }

        static {
            C15157s sVar = new C15157s(C15131a0.m419a(C12661a.class), "timeProbe", "getTimeProbe()Lgogolook/callgogolook2/util/debug/TimeProbe;");
            C15131a0.m412a(sVar);
            f28535g = new AbstractC14906i[]{sVar};
        }

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct add '--show-bad-code' argument
        */
        public C12661a() {
            /*
                r8 = this;
                j.a.w0.x4.a0.a r0 = new j.a.w0.x4.a0.a
                r1 = r0
                r1.<init>()
                r9 = r0
                r0 = r9
                java.lang.String r1 = "version"
                r2 = 1
                java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
                j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
                r0 = -1
                java.lang.Integer r0 = java.lang.Integer.valueOf(r0)
                r10 = r0
                r0 = r9
                java.lang.String r1 = "duration"
                r2 = r10
                j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
                r0 = r9
                java.lang.String r1 = "is_multiple_missing"
                r2 = r10
                j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
                r0 = r9
                java.lang.String r1 = "dismiss_reason"
                r2 = r10
                j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
                r0 = r9
                java.lang.String r1 = "checked_call_end_full_ad"
                r2 = r10
                j.a.w0.x4.a0.a r0 = r0.m2100a(r1, r2)
                r0 = r8
                r1 = 1
                j.a.w0.x4.a0.e[] r1 = new p459j.p460a.p582w0.p590x4.p591a0.AbstractC14238e[r1]
                r2 = r1
                r3 = 0
                j.a.w0.x4.a0.d r4 = new j.a.w0.x4.a0.d
                r5 = r4
                java.lang.String r6 = "whoscall_call_end_dialog"
                r5.<init>(r6)
                r2[r3] = r4
                r2 = r9
                r0.<init>(r1, r2)
                r0 = r8
                j.a.j0.u.d.r0$a$a r1 = p459j.p460a.p521j0.p522u.p523d.C12660r0.C12661a.C12662a.f28537a
                l.f r1 = p626l.C14975g.m662a(r1)
                r0.f28536f = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.C12660r0.C12661a.<init>():void");
        }

        /* renamed from: d */
        public final C13930d m5647d() {
            AbstractC14974f fVar = this.f28536f;
            AbstractC14906i iVar = f28535g[0];
            return (C13930d) fVar.getValue();
        }
    }

    /* renamed from: a */
    public static final void m5652a() {
        C12661a aVar = f28532a;
        if (aVar != null) {
            aVar.m1920a("checked_call_end_full_ad", 1);
        }
    }

    @UiThread
    /* renamed from: a */
    public static final void m5650a(Context context, boolean z) {
        C15149k.m377b(context, "context");
        C12661a aVar = new C12661a();
        f28533b = f28534c.m5651a(context);
        aVar.m5647d().m3018e();
        aVar.m1920a("is_multiple_missing", Integer.valueOf(z ? 1 : 0));
        f28532a = aVar;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01a4  */
    /* renamed from: a */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static final void m5649a(java.lang.String r4) {
        /*
            Method dump skipped, instructions count: 457
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p459j.p460a.p521j0.p522u.p523d.C12660r0.m5649a(java.lang.String):void");
    }

    @UiThread
    /* renamed from: b */
    public static final void m5648b(Context context) {
        C15149k.m377b(context, "context");
        try {
            C12661a aVar = f28532a;
            if (aVar != null) {
                Object a = aVar.m1921a("dismiss_reason");
                Integer num = (Integer) a;
                Integer num2 = num != null && num.intValue() == -1 && !f28534c.m5651a(context) ? a : null;
                if (num2 != null) {
                    num2.intValue();
                    m5649a(f28533b ? "screenOffManual" : "screenOfSystem");
                }
                aVar.m1923a();
            }
        } catch (Throwable th) {
            C14060l2.m2705a(th);
        }
        f28532a = null;
    }

    /* renamed from: a */
    public final boolean m5651a(Context context) {
        return !C14197v4.m2249b(context) && C14197v4.m2251a(context);
    }
}
