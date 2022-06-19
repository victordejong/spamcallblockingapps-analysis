package p193e.p194a.p682e.p683a;

import android.content.ContentResolver;
import android.database.Cursor;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import java.util.ArrayList;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p1053m0.C17891a1;
import p193e.p194a.p1129p5.p1132s0.C19286f;
import p193e.p194a.p682e.p683a.C12707d4;
import q3.a.i0;
import q3.a.j0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ui.dialogs.QaSetBusinessFlagsDialog$onViewCreated$1$1", f = "QaSetBusinessFlagsDialog.kt", l = {69}, m = "invokeSuspend")
/* renamed from: e.a.e.a.c4 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/c4.class */
public final class C12698c4 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f37021e;

    /* renamed from: f */
    public int f37022f;

    /* renamed from: g */
    public final /* synthetic */ C12707d4.C12708a f37023g;

    @e(c = "com.truecaller.ui.dialogs.QaSetBusinessFlagsDialog$onViewCreated$1$1$1", f = "QaSetBusinessFlagsDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.a.c4$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/c4$a.class */
    public static final class C12699a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ Integer f37025f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12699a(Integer num, d dVar) {
            super(2, dVar);
            C12698c4.this = r5;
            this.f37025f = num;
        }

        /* renamed from: i */
        public final d<s> m22733i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12699a(this.f37025f, dVar);
        }

        /* renamed from: k */
        public final Object m22732k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C12698c4 c12698c4 = C12698c4.this;
            Integer num = this.f37025f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            TextView textView = (TextView) C12707d4.this.f37045k.getValue();
            l.d(textView, "flagsValue");
            textView.setText("Current flag value: " + num);
            LinearLayout linearLayout = (LinearLayout) C12707d4.this.f37044j.getValue();
            l.d(linearLayout, "flagsList");
            C19286f.m13683U(linearLayout, num != null);
            return sVar;
        }

        /* renamed from: s */
        public final Object m22731s(Object obj) {
            C25225a.m3932a3(obj);
            TextView textView = (TextView) C12707d4.this.f37045k.getValue();
            StringBuilder m8732B = C22128a.m8732B(textView, "flagsValue", "Current flag value: ");
            m8732B.append(this.f37025f);
            textView.setText(m8732B.toString());
            LinearLayout linearLayout = (LinearLayout) C12707d4.this.f37044j.getValue();
            l.d(linearLayout, "flagsList");
            C19286f.m13683U(linearLayout, this.f37025f != null);
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12698c4(C12707d4.C12708a c12708a, d dVar) {
        super(2, dVar);
        this.f37023g = c12708a;
    }

    /* renamed from: i */
    public final d<s> m22736i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12698c4 c12698c4 = new C12698c4(this.f37023g, dVar);
        c12698c4.f37021e = obj;
        return c12698c4;
    }

    /* renamed from: k */
    public final Object m22735k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        C12698c4 c12698c4 = new C12698c4(this.f37023g, dVar);
        c12698c4.f37021e = obj;
        return c12698c4.m22734s(s.a);
    }

    /* JADX WARN: Finally extract failed */
    /* renamed from: s */
    public final Object m22734s(Object obj) {
        i0 i0Var;
        Integer num;
        a aVar = a.a;
        int i = this.f37022f;
        if (i == 0) {
            C25225a.m3932a3(obj);
            i0Var = (i0) this.f37021e;
            this.f37021e = i0Var;
            this.f37022f = 1;
            if (s1.a.a.a.v0.f.d.D0(500L, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            i0Var = (i0) this.f37021e;
        }
        EditText m22726RA = C12707d4.m22726RA(C12707d4.this);
        l.d(m22726RA, "phoneBusinessSender");
        String obj2 = m22726RA.getText().toString();
        ContentResolver contentResolver = C12707d4.this.f37039e;
        if (contentResolver == null) {
            l.l("contentResolver");
            throw null;
        }
        Cursor query = contentResolver.query(C17891a1.C17902k.m15675H(), new String[]{"im_business_feature_flags"}, "normalized_destination = ?", new String[]{obj2}, null);
        if (query != null) {
            try {
                ArrayList arrayList = new ArrayList();
                while (query.moveToNext()) {
                    arrayList.add(Integer.valueOf(query.getInt(0)));
                }
                C25225a.m4016G(query, null);
                num = (Integer) s1.u.i.D(arrayList);
            } finally {
                try {
                    throw th;
                } catch (Throwable th) {
                }
            }
        } else {
            num = null;
        }
        f fVar = C12707d4.this.f37040f;
        if (fVar != null) {
            s1.a.a.a.v0.f.d.w2(i0Var, fVar, (j0) null, new C12699a(num, null), 2, (Object) null);
            return s.a;
        }
        l.l("uiContext");
        throw null;
    }
}
