package p193e.p194a.p682e.p683a;

import android.app.ProgressDialog;
import android.content.ContentResolver;
import java.util.ArrayList;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.a0;
import s1.z.c.l;
@e(c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessagesToExistingConversations$2", f = "QaMockImDialog.kt", l = {190}, m = "invokeSuspend")
/* renamed from: e.a.e.a.v3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/v3.class */
public final class C12834v3 extends i implements p<i0, d<? super Integer>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f37328e;

    /* renamed from: f */
    public Object f37329f;

    /* renamed from: g */
    public Object f37330g;

    /* renamed from: h */
    public Object f37331h;

    /* renamed from: i */
    public Object f37332i;

    /* renamed from: j */
    public int f37333j;

    /* renamed from: k */
    public final /* synthetic */ C12851y3 f37334k;

    /* renamed from: l */
    public final /* synthetic */ int f37335l;

    /* renamed from: m */
    public final /* synthetic */ ProgressDialog f37336m;

    @e(c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessagesToExistingConversations$2$1$1", f = "QaMockImDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.a.v3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/v3$a.class */
    public static final class C12835a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ C12834v3 f37337e;

        /* renamed from: f */
        public final /* synthetic */ i0 f37338f;

        /* renamed from: g */
        public final /* synthetic */ ArrayList f37339g;

        /* renamed from: h */
        public final /* synthetic */ String f37340h;

        /* renamed from: i */
        public final /* synthetic */ a0 f37341i;

        /* renamed from: j */
        public final /* synthetic */ ContentResolver f37342j;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12835a(d dVar, C12834v3 c12834v3, i0 i0Var, ArrayList arrayList, String str, a0 a0Var, ContentResolver contentResolver) {
            super(2, dVar);
            this.f37337e = c12834v3;
            this.f37338f = i0Var;
            this.f37339g = arrayList;
            this.f37340h = str;
            this.f37341i = a0Var;
            this.f37342j = contentResolver;
        }

        /* renamed from: i */
        public final d<s> m22622i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12835a(dVar, this.f37337e, this.f37338f, this.f37339g, this.f37340h, this.f37341i, this.f37342j);
        }

        /* renamed from: k */
        public final Object m22621k(Object obj, Object obj2) {
            C12835a m22622i = m22622i(obj, (d) obj2);
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            m22622i.f37337e.f37336m.setProgress(m22622i.f37341i.a);
            return sVar;
        }

        /* renamed from: s */
        public final Object m22620s(Object obj) {
            C25225a.m3932a3(obj);
            this.f37337e.f37336m.setProgress(this.f37341i.a);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12834v3(C12851y3 c12851y3, int i, ProgressDialog progressDialog, d dVar) {
        super(2, dVar);
        this.f37334k = c12851y3;
        this.f37335l = i;
        this.f37336m = progressDialog;
    }

    /* renamed from: i */
    public final d<s> m22625i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12834v3 c12834v3 = new C12834v3(this.f37334k, this.f37335l, this.f37336m, dVar);
        c12834v3.f37328e = obj;
        return c12834v3;
    }

    /* renamed from: k */
    public final Object m22624k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12834v3 c12834v3 = new C12834v3(this.f37334k, this.f37335l, this.f37336m, dVar);
        c12834v3.f37328e = obj;
        return c12834v3.m22623s(s.a);
    }

    /* JADX WARN: Finally extract failed */
    /* JADX WARN: Removed duplicated region for block: B:111:0x0332 A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0324  */
    /* renamed from: s */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object m22623s(java.lang.Object r14) {
        /*
            Method dump skipped, instructions count: 1221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: p193e.p194a.p682e.p683a.C12834v3.m22623s(java.lang.Object):java.lang.Object");
    }
}
