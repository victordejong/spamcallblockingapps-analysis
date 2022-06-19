package p193e.p194a.p437c.p438a.p456d.p463f.p468d;

import android.text.Editable;
import android.text.TextWatcher;
import java.util.concurrent.CancellationException;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import q3.a.i0;
import q3.a.j0;
import q3.a.p1;
import s1.f0.v;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.l;
import s1.z.b.p;
/* renamed from: e.a.c.a.d.f.d.a */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/d/f/d/a.class */
public final class C8931a implements TextWatcher {

    /* renamed from: a */
    public p1 f27206a;

    /* renamed from: b */
    public final i0 f27207b;

    /* renamed from: c */
    public final l<String, s> f27208c;

    @e(c = "com.truecaller.insights.ui.financepage.search.utils.DebouncedTextWatcher$onTextChanged$1", f = "DebouncedTextWatcher.kt", l = {38}, m = "invokeSuspend")
    /* renamed from: e.a.c.a.d.f.d.a$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/d/f/d/a$a.class */
    public static final class C8932a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public int f27209e;

        /* renamed from: g */
        public final /* synthetic */ CharSequence f27211g;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C8932a(CharSequence charSequence, d dVar) {
            super(2, dVar);
            C8931a.this = r5;
            this.f27211g = charSequence;
        }

        /* renamed from: i */
        public final d<s> m27932i(Object obj, d<?> dVar) {
            s1.z.c.l.e(dVar, "completion");
            return new C8932a(this.f27211g, dVar);
        }

        /* renamed from: k */
        public final Object m27931k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            s1.z.c.l.e(dVar, "completion");
            return new C8932a(this.f27211g, dVar).m27930s(s.a);
        }

        /* renamed from: s */
        public final Object m27930s(Object obj) {
            a aVar = a.a;
            int i = this.f27209e;
            if (i == 0) {
                C25225a.m3932a3(obj);
                this.f27209e = 1;
                if (s1.a.a.a.v0.f.d.D0(500L, this) == aVar) {
                    return aVar;
                }
            } else if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            } else {
                C25225a.m3932a3(obj);
            }
            l<String, s> lVar = C8931a.this.f27208c;
            CharSequence charSequence = this.f27211g;
            lVar.d(String.valueOf(charSequence != null ? v.g0(charSequence) : null));
            return s.a;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public C8931a(i0 i0Var, l<? super String, s> lVar) {
        s1.z.c.l.e(i0Var, "coroutineScope");
        s1.z.c.l.e(lVar, "onTextChanged");
        this.f27207b = i0Var;
        this.f27208c = lVar;
    }

    @Override // android.text.TextWatcher
    public void afterTextChanged(Editable editable) {
    }

    @Override // android.text.TextWatcher
    public void beforeTextChanged(CharSequence charSequence, int i, int i2, int i3) {
    }

    @Override // android.text.TextWatcher
    public void onTextChanged(CharSequence charSequence, int i, int i2, int i3) {
        p1 p1Var = this.f27206a;
        if (p1Var != null) {
            s1.a.a.a.v0.f.d.T(p1Var, (CancellationException) null, 1, (Object) null);
        }
        this.f27206a = s1.a.a.a.v0.f.d.w2(this.f27207b, (f) null, (j0) null, new C8932a(charSequence, null), 3, (Object) null);
    }
}
