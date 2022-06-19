package p193e.p194a.p837h0;

import android.os.Bundle;
import com.truecaller.log.AssertionUtil;
import java.util.Objects;
import n3.b.a.h;
import p1727n3.p1859r.p1860a.C26907a;
import p193e.p194a.p1049l4.C17422k;
import p193e.p194a.p372b0.p411g.AbstractApplicationC8442a;
/* renamed from: e.a.h0.f */
/* loaded from: classes9-dex2jar.jar:e/a/h0/f.class */
public abstract class AbstractC14831f extends h {

    /* renamed from: a */
    public AbstractC14832g f42402a;

    public void onBackPressed() {
        Objects.requireNonNull(this.f42402a);
        AbstractC14831f.super.onBackPressed();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void onCreate(Bundle bundle) {
        AssertionUtil.isTrue(((AbstractApplicationC8442a) getApplication()).mo28540W(), "Users that have not signed-in are not supposed to have access to this activity");
        C17422k.m16066m0(this, true);
        AbstractC14831f.super.onCreate(bundle);
    }

    /* renamed from: pa */
    public void m19613pa(AbstractC14832g abstractC14832g) {
        this.f42402a = abstractC14832g;
        C26907a c26907a = new C26907a(getSupportFragmentManager());
        c26907a.m1120m(16908290, this.f42402a, null);
        c26907a.mo1127f();
    }
}
