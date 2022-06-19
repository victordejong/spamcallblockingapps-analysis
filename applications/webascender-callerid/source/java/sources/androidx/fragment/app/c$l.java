package androidx.fragment.app;

import androidx.core.p005os.C0226a;
import androidx.fragment.app.AbstractC0265f0;
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/c$l.class */
public class c$l {

    /* renamed from: a */
    private final AbstractC0265f0.C0269e f1473a;

    /* renamed from: b */
    private final C0226a f1474b;

    c$l(AbstractC0265f0.C0269e c0269e, C0226a c0226a) {
        this.f1473a = c0269e;
        this.f1474b = c0226a;
    }

    /* renamed from: a */
    public void m5821a() {
        this.f1473a.m5791d(this.f1474b);
    }

    /* renamed from: b */
    AbstractC0265f0.C0269e m5820b() {
        return this.f1473a;
    }

    /* renamed from: c */
    C0226a m5819c() {
        return this.f1474b;
    }

    /* renamed from: d */
    boolean m5818d() {
        AbstractC0265f0.C0269e.EnumC0271c enumC0271c;
        AbstractC0265f0.C0269e.EnumC0271c from = AbstractC0265f0.C0269e.EnumC0271c.from(this.f1473a.m5789f().mView);
        AbstractC0265f0.C0269e.EnumC0271c m5790e = this.f1473a.m5790e();
        return from == m5790e || !(from == (enumC0271c = AbstractC0265f0.C0269e.EnumC0271c.VISIBLE) || m5790e == enumC0271c);
    }
}
