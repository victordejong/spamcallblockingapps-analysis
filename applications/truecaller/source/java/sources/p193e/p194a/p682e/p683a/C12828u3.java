package p193e.p194a.p682e.p683a;

import android.app.ProgressDialog;
import android.content.Context;
import android.widget.Toast;
import java.util.Objects;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.j0;
import q3.a.t0;
import s1.s;
import s1.w.d;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.l;
@e(c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessages$1", f = "QaMockImDialog.kt", l = {123, 125}, m = "invokeSuspend")
/* renamed from: e.a.e.a.u3 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/u3.class */
public final class C12828u3 extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public /* synthetic */ Object f37312e;

    /* renamed from: f */
    public int f37313f;

    /* renamed from: g */
    public final /* synthetic */ C12851y3 f37314g;

    /* renamed from: h */
    public final /* synthetic */ boolean f37315h;

    /* renamed from: i */
    public final /* synthetic */ int f37316i;

    /* renamed from: j */
    public final /* synthetic */ ProgressDialog f37317j;

    /* renamed from: k */
    public final /* synthetic */ int f37318k;

    @e(c = "com.truecaller.ui.dialogs.QaMockImDialog$addMessages$1$1", f = "QaMockImDialog.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.e.a.u3$a */
    /* loaded from: classes15-dex2jar.jar:e/a/e/a/u3$a.class */
    public static final class C12829a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: f */
        public final /* synthetic */ int f37320f;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C12829a(int i, d dVar) {
            super(2, dVar);
            C12828u3.this = r5;
            this.f37320f = i;
        }

        /* renamed from: i */
        public final d<s> m22631i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C12829a(this.f37320f, dVar);
        }

        /* renamed from: k */
        public final Object m22630k(Object obj, Object obj2) {
            s sVar = s.a;
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C12828u3 c12828u3 = C12828u3.this;
            int i = this.f37320f;
            dVar.getContext();
            C25225a.m3932a3(sVar);
            c12828u3.f37317j.dismiss();
            Context context = c12828u3.f37314g.getContext();
            if (context != null) {
                Toast.makeText(context, i + " messages added", 1).show();
            }
            return sVar;
        }

        /* renamed from: s */
        public final Object m22629s(Object obj) {
            C25225a.m3932a3(obj);
            C12828u3.this.f37317j.dismiss();
            Context context = C12828u3.this.f37314g.getContext();
            if (context != null) {
                Toast.makeText(context, this.f37320f + " messages added", 1).show();
            }
            return s.a;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C12828u3(C12851y3 c12851y3, boolean z, int i, ProgressDialog progressDialog, int i2, d dVar) {
        super(2, dVar);
        this.f37314g = c12851y3;
        this.f37315h = z;
        this.f37316i = i;
        this.f37317j = progressDialog;
        this.f37318k = i2;
    }

    /* renamed from: i */
    public final d<s> m22634i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        C12828u3 c12828u3 = new C12828u3(this.f37314g, this.f37315h, this.f37316i, this.f37317j, this.f37318k, dVar);
        c12828u3.f37312e = obj;
        return c12828u3;
    }

    /* renamed from: k */
    public final Object m22633k(Object obj, Object obj2) {
        return m22634i(obj, (d) obj2).m22632s(s.a);
    }

    /* renamed from: s */
    public final Object m22632s(Object obj) {
        int i;
        i0 i0Var;
        Object obj2;
        Object obj3;
        a aVar = a.a;
        int i2 = this.f37313f;
        if (i2 == 0) {
            C25225a.m3932a3(obj);
            i0 i0Var2 = (i0) this.f37312e;
            if (this.f37315h) {
                C12851y3 c12851y3 = this.f37314g;
                int i3 = this.f37316i;
                ProgressDialog progressDialog = this.f37317j;
                this.f37312e = i0Var2;
                this.f37313f = 1;
                Objects.requireNonNull(c12851y3);
                obj3 = s1.a.a.a.v0.f.d.a4(t0.d, new C12834v3(c12851y3, i3, progressDialog, null), this);
                if (obj3 == aVar) {
                    return aVar;
                }
                i0Var = i0Var2;
                i = ((Number) obj3).intValue();
            } else {
                C12851y3 c12851y32 = this.f37314g;
                int i4 = this.f37318k;
                int i5 = this.f37316i;
                ProgressDialog progressDialog2 = this.f37317j;
                this.f37312e = i0Var2;
                this.f37313f = 2;
                Objects.requireNonNull(c12851y32);
                obj2 = s1.a.a.a.v0.f.d.a4(t0.d, new C12840w3(c12851y32, i4, i5, progressDialog2, null), this);
                if (obj2 == aVar) {
                    return aVar;
                }
                i0Var = i0Var2;
                i = ((Number) obj2).intValue();
            }
        } else if (i2 == 1) {
            i0Var = (i0) this.f37312e;
            C25225a.m3932a3(obj);
            obj3 = obj;
            i = ((Number) obj3).intValue();
        } else if (i2 != 2) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            i0Var = (i0) this.f37312e;
            C25225a.m3932a3(obj);
            obj2 = obj;
            i = ((Number) obj2).intValue();
        }
        s1.a.a.a.v0.f.d.w2(i0Var, C12851y3.m22601PA(this.f37314g), (j0) null, new C12829a(i, null), 2, (Object) null);
        return s.a;
    }
}
