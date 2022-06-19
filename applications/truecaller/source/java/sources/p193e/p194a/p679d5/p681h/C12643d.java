package p193e.p194a.p679d5.p681h;

import androidx.fragment.app.Fragment;
import com.truecaller.startup_dialogs.StartupDialogType;
import javax.inject.Inject;
import p193e.p194a.p1114o5.AbstractC19022f0;
import p193e.p194a.p1410z4.AbstractC21881d;
import p193e.p194a.p372b0.p425o.AbstractC8541a;
import p193e.p194a.p372b0.p430q.C8601l0;
import p193e.p194a.p679d5.p680g.C12623g;
import s1.w.d;
import s1.w.k.a.c;
import s1.w.k.a.e;
import s1.z.c.l;
/* renamed from: e.a.d5.h.d */
/* loaded from: classes12-dex2jar.jar:e/a/d5/h/d.class */
public final class C12643d extends AbstractC12667t {

    /* renamed from: d */
    public final StartupDialogType f36830d = StartupDialogType.DIALOG_BLANK_PROFILE_NAME;

    /* renamed from: e */
    public final AbstractC19022f0 f36831e;

    /* renamed from: f */
    public final AbstractC8541a f36832f;

    @e(c = "com.truecaller.startup_dialogs.resolvers.FillProfileDialogResolver", f = "FillProfileDialogResolver.kt", l = {28}, m = "shouldShow")
    /* renamed from: e.a.d5.h.d$a */
    /* loaded from: classes12-dex2jar.jar:e/a/d5/h/d$a.class */
    public static final class C12644a extends c {

        /* renamed from: d */
        public /* synthetic */ Object f36833d;

        /* renamed from: e */
        public int f36834e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12644a(d dVar) {
            super(dVar);
            C12643d.this = r4;
        }

        /* renamed from: s */
        public final Object m22802s(Object obj) {
            this.f36833d = obj;
            this.f36834e |= Integer.MIN_VALUE;
            return C12643d.this.mo22765e(this);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    @Inject
    public C12643d(AbstractC19022f0 abstractC19022f0, AbstractC8541a abstractC8541a, AbstractC21881d abstractC21881d, C8601l0 c8601l0) {
        super("key_fill_profile_promo_last_time", abstractC21881d, c8601l0);
        l.e(abstractC19022f0, "deviceManager");
        l.e(abstractC8541a, "coreSettings");
        l.e(abstractC21881d, "generalSettings");
        l.e(c8601l0, "timestampUtil");
        this.f36831e = abstractC19022f0;
        this.f36832f = abstractC8541a;
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: b */
    public StartupDialogType mo22768b() {
        return this.f36830d;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0045  */
    /* JADX WARN: Removed duplicated region for block: B:15:0x005b  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0149  */
    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: e */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public java.lang.Object mo22765e(s1.w.d<? super java.lang.Boolean> r8) {
        /*
            Method dump skipped, instructions count: 338
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p679d5.p681h.C12643d.mo22765e(s1.w.d):java.lang.Object");
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: f */
    public Fragment mo22764f() {
        return new C12623g();
    }

    @Override // p193e.p194a.p679d5.AbstractC12607b
    /* renamed from: g */
    public boolean mo22763g() {
        return false;
    }
}
