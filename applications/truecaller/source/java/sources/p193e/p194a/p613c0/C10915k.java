package p193e.p194a.p613c0;

import android.content.Intent;
import android.view.View;
import android.widget.TextView;
import com.google.android.gms.tasks.Task;
import com.google.firebase.messaging.FirebaseMessaging;
import e.m.d.w.h;
import e.m.d.w.m;
import java.util.Arrays;
import java.util.concurrent.ExecutionException;
import p193e.p1432d.p1439c.p1440a.C22128a;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.C12864a2;
import q3.a.i0;
import s1.s;
import s1.w.d;
import s1.w.f;
import s1.w.j.a;
import s1.w.k.a.e;
import s1.w.k.a.i;
import s1.z.b.p;
import s1.z.c.c0;
import s1.z.c.l;
@e(c = "com.truecaller.abtest.QaABTestFragment$addFirebaseInstanceIdView$1", f = "QaABTestFragment.kt", l = {231}, m = "invokeSuspend")
/* renamed from: e.a.c0.k */
/* loaded from: classes4-dex2jar.jar:e/a/c0/k.class */
public final class C10915k extends i implements p<i0, d<? super s>, Object> {

    /* renamed from: e */
    public Object f32417e;

    /* renamed from: f */
    public int f32418f;

    /* renamed from: g */
    public final /* synthetic */ C10902a f32419g;

    /* renamed from: h */
    public final /* synthetic */ TextView f32420h;

    @e(c = "com.truecaller.abtest.QaABTestFragment$addFirebaseInstanceIdView$1$1", f = "QaABTestFragment.kt", l = {}, m = "invokeSuspend")
    /* renamed from: e.a.c0.k$a */
    /* loaded from: classes4-dex2jar.jar:e/a/c0/k$a.class */
    public static final class C10916a extends i implements p<i0, d<? super s>, Object> {

        /* renamed from: e */
        public final /* synthetic */ c0 f32421e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C10916a(c0 c0Var, d dVar) {
            super(2, dVar);
            this.f32421e = c0Var;
        }

        /* renamed from: i */
        public final d<s> m25500i(Object obj, d<?> dVar) {
            l.e(dVar, "completion");
            return new C10916a(this.f32421e, dVar);
        }

        /* renamed from: k */
        public final Object m25499k(Object obj, Object obj2) {
            d dVar = (d) obj2;
            l.e(dVar, "completion");
            C10916a c10916a = new C10916a(this.f32421e, dVar);
            s sVar = s.a;
            c10916a.m25498s(sVar);
            return sVar;
        }

        /* renamed from: s */
        public final Object m25498s(Object obj) {
            String str;
            C25225a.m3932a3(obj);
            c0 c0Var = this.f32421e;
            try {
                h g = h.g();
                l.d(g, "FirebaseInstallations.getInstance()");
                Task id = g.getId();
                l.d(id, "FirebaseInstallations.getInstance().id");
                FirebaseMessaging m38318c = FirebaseMessaging.m38318c();
                l.d(m38318c, "FirebaseMessaging.getInstance()");
                Task<String> m38315f = m38318c.m38315f();
                l.d(m38315f, "FirebaseMessaging.getInstance().token");
                Task a = h.g().a(false);
                l.d(a, "FirebaseInstallations.ge…nstance().getToken(false)");
                String str2 = null;
                String str3 = (String) C12864a2.m22553h(id, null, 1);
                String str4 = (String) C12864a2.m22553h(m38315f, null, 1);
                m mVar = (m) C12864a2.m22553h(a, null, 1);
                if (mVar != null) {
                    str2 = mVar.a();
                }
                str = String.format("id:\n%s\n\n token:\n%s\n\n authToken:\n%s\n\n%s ", Arrays.copyOf(new Object[]{str3, str4, str2, "Tap here to send"}, 4));
                l.d(str, "java.lang.String.format(format, *args)");
            } catch (InterruptedException e) {
                e.printStackTrace();
                str = "Unable to get firebase token";
            } catch (ExecutionException e2) {
                e2.printStackTrace();
                str = "Unable to get firebase token";
            }
            c0Var.a = str;
            return s.a;
        }
    }

    /* renamed from: e.a.c0.k$b */
    /* loaded from: classes4-dex2jar.jar:e/a/c0/k$b.class */
    public static final class View$OnClickListenerC10917b implements View.OnClickListener {

        /* renamed from: b */
        public final /* synthetic */ c0 f32423b;

        public View$OnClickListenerC10917b(c0 c0Var) {
            C10915k.this = r4;
            this.f32423b = c0Var;
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            Intent intent = new Intent("android.intent.action.SEND");
            intent.putExtra("android.intent.extra.TEXT", (String) this.f32423b.a);
            intent.putExtra("android.intent.extra.SUBJECT", "Firebase Instance Id of test device");
            intent.setType("text/plain");
            C10915k.this.f32419g.requireActivity().startActivity(intent);
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public C10915k(C10902a c10902a, TextView textView, d dVar) {
        super(2, dVar);
        this.f32419g = c10902a;
        this.f32420h = textView;
    }

    /* renamed from: i */
    public final d<s> m25503i(Object obj, d<?> dVar) {
        l.e(dVar, "completion");
        return new C10915k(this.f32419g, this.f32420h, dVar);
    }

    /* renamed from: k */
    public final Object m25502k(Object obj, Object obj2) {
        d dVar = (d) obj2;
        l.e(dVar, "completion");
        return new C10915k(this.f32419g, this.f32420h, dVar).m25501s(s.a);
    }

    /* renamed from: s */
    public final Object m25501s(Object obj) {
        c0 c0Var;
        a aVar = a.a;
        int i = this.f32418f;
        if (i == 0) {
            c0Var = C22128a.m8633d0(obj);
            f fVar = this.f32419g.f32379k;
            if (fVar == null) {
                l.l("ioContext");
                throw null;
            }
            C10916a c10916a = new C10916a(c0Var, null);
            this.f32417e = c0Var;
            this.f32418f = 1;
            if (s1.a.a.a.v0.f.d.a4(fVar, c10916a, this) == aVar) {
                return aVar;
            }
        } else if (i != 1) {
            throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
        } else {
            C25225a.m3932a3(obj);
            c0Var = (c0) this.f32417e;
        }
        this.f32420h.setText((String) c0Var.a);
        this.f32420h.setOnClickListener(new View$OnClickListenerC10917b(c0Var));
        return s.a;
    }
}
