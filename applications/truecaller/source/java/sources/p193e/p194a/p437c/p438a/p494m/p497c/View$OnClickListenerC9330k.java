package p193e.p194a.p437c.p438a.p494m.p497c;

import android.view.View;
import p193e.p194a.p437c.p438a.p494m.p497c.C9322i;
import s1.s;
import s1.z.b.l;
import s1.z.c.m;
/* renamed from: e.a.c.a.m.c.k */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/k.class */
public final class View$OnClickListenerC9330k implements View.OnClickListener {

    /* renamed from: a */
    public final /* synthetic */ C9322i f28362a;

    /* renamed from: e.a.c.a.m.c.k$a */
    /* loaded from: classes10-dex2jar.jar:e/a/c/a/m/c/k$a.class */
    public static final class C9331a extends m implements l<String, s> {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public C9331a() {
            super(1);
            View$OnClickListenerC9330k.this = r4;
        }

        /* renamed from: d */
        public Object m27680d(Object obj) {
            String str = (String) obj;
            s1.z.c.l.e(str, "it");
            View$OnClickListenerC9330k.this.f28362a.f28348g = str;
            return s.a;
        }
    }

    public View$OnClickListenerC9330k(C9322i c9322i) {
        this.f28362a = c9322i;
    }

    @Override // android.view.View.OnClickListener
    public final void onClick(View view) {
        C9322i.C9324b c9324b = new C9322i.C9324b();
        C9331a c9331a = new C9331a();
        s1.z.c.l.e(c9331a, "callback");
        c9324b.f28350a = c9331a;
        n3.r.a.l requireActivity = this.f28362a.requireActivity();
        s1.z.c.l.d(requireActivity, "this.requireActivity()");
        c9324b.show(requireActivity.getSupportFragmentManager(), "Date picker");
    }
}
