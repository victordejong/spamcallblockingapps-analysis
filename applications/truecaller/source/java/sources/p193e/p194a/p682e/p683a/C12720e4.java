package p193e.p194a.p682e.p683a;

import android.app.Dialog;
import android.content.ContentResolver;
import android.content.ContentValues;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ui.dialogs.QaSetBusinessFlagsDialog$setFlag$1", f = "QaSetBusinessFlagsDialog.kt", l = {}, m = "invokeSuspend")
/* renamed from: e.a.e.a.e4 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/e4.class */
public final class C12720e4 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f37081e;

    /* renamed from: f */
    public final /* synthetic */ C12707d4 f37082f;

    /* renamed from: g */
    public final /* synthetic */ int f37083g;

    /* renamed from: h */
    public final /* synthetic */ String f37084h;

    @e(c = "com.truecaller.ui.dialogs.QaSetBusinessFlagsDialog$setFlag$1$1", f = "QaSetBusinessFlagsDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.a.e4$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/e4$a.class */
    public static final class C12721a extends i implements p<i0, d<? super s>, Object> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12721a(d dVar) {
            super(2, dVar);
            C12720e4.this = r5;
        }

        /* renamed from: i */
        public final d<s> m22718i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12721a(dVar);
        }

        /* renamed from: k */
        public final Object m22717k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C12720e4 c12720e4 = C12720e4.this;
            dVar.getContext();
            s sVar = s.a;
            C25225a.m3932a3(sVar);
            Dialog dialog = c12720e4.f37082f.getDialog();
            if (dialog != null) {
                dialog.dismiss();
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m22716s(Object obj) {
            C25225a.m3932a3(obj);
            Dialog dialog = C12720e4.this.f37082f.getDialog();
            if (dialog != null) {
                dialog.dismiss();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12720e4(C12707d4 c12707d4, int i, String str, d dVar) {
        super(2, dVar);
        this.f37082f = c12707d4;
        this.f37083g = i;
        this.f37084h = str;
    }

    /* renamed from: i */
    public final d<s> m22721i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12720e4 c12720e4 = new C12720e4(this.f37082f, this.f37083g, this.f37084h, dVar);
        c12720e4.f37081e = obj;
        return c12720e4;
    }

    /* renamed from: k */
    public final Object m22720k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12720e4 c12720e4 = new C12720e4(this.f37082f, this.f37083g, this.f37084h, dVar);
        c12720e4.f37081e = obj;
        s sVar = s.a;
        c12720e4.m22719s(sVar);
        return sVar;
    }

    /* renamed from: s */
    public final Object m22719s(Object obj) {
        C25225a.m3932a3(obj);
        i0 i0Var = (i0) this.f37081e;
        ContentValues contentValues = new ContentValues();
        contentValues.put("im_business_feature_flags", new Integer(this.f37083g));
        ContentResolver contentResolver = this.f37082f.f37039e;
        if (contentResolver == null) {
            l.l("contentResolver");
            throw null;
        }
        contentResolver.update(C17891a1.C17902k.m15675H(), contentValues, "normalized_destination = ?", new String[]{this.f37084h});
        f fVar = this.f37082f.f37040f;
        if (fVar != null) {
            s1.a.a.a.v0.f.d.w2(i0Var, fVar, (j0) null, new C12721a(null), 2, (Object) null);
            return s.a;
        }
        l.l("uiContext");
        throw null;
    }
}
