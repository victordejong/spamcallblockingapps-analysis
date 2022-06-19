package p193e.p194a.p682e.p683a;

import android.app.ProgressDialog;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.a0;
import s1.z.c.l;
@e(c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessagesToNewConversations$2", f = "QaMockImDialog.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.e.a.w3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/w3.class */
public final class C12840w3 extends i implements p<i0, d<? super Integer>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f37350e;

    /* renamed from: f */
    public final /* synthetic */ C12851y3 f37351f;

    /* renamed from: g */
    public final /* synthetic */ int f37352g;

    /* renamed from: h */
    public final /* synthetic */ int f37353h;

    /* renamed from: i */
    public final /* synthetic */ ProgressDialog f37354i;

    @e(c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessagesToNewConversations$2$1", f = "QaMockImDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.a.w3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/w3$a.class */
    public static final class C12841a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ a0 f37356f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12841a(a0 a0Var, d dVar) {
            super(2, dVar);
            C12840w3.this = r5;
            this.f37356f = a0Var;
        }

        /* renamed from: i */
        public final d<s> m22613i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12841a(this.f37356f, dVar);
        }

        /* renamed from: k */
        public final Object m22612k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C12840w3 c12840w3 = C12840w3.this;
            a0 a0Var = this.f37356f;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            c12840w3.f37354i.setProgress(a0Var.a);
            return sVar;
        }

        /* renamed from: s */
        public final Object m22611s(Object obj) {
            C25225a.m3932a3(obj);
            C12840w3.this.f37354i.setProgress(this.f37356f.a);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12840w3(C12851y3 c12851y3, int i, int i2, ProgressDialog progressDialog, d dVar) {
        super(2, dVar);
        this.f37351f = c12851y3;
        this.f37352g = i;
        this.f37353h = i2;
        this.f37354i = progressDialog;
    }

    /* renamed from: i */
    public final d<s> m22616i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12840w3 c12840w3 = new C12840w3(this.f37351f, this.f37352g, this.f37353h, this.f37354i, dVar);
        c12840w3.f37350e = obj;
        return c12840w3;
    }

    /* renamed from: k */
    public final Object m22615k(Object obj, Object obj2) {
        return m22616i(obj, (d) obj2).m22614s(s.a);
    }

    /* JADX WARN: Removed duplicated region for block: B:54:0x00e0 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:56:0x004c A[SYNTHETIC] */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m22614s(java.lang.Object r12) {
        /*
            Method dump skipped, instructions count: 801
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p683a.C12840w3.m22614s(java.lang.Object):java.lang.Object");
    }
}
