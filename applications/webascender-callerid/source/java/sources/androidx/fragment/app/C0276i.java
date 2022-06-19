package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.lifecycle.AbstractC0328g0;
import f.h.k.h;
/* renamed from: androidx.fragment.app.i */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/i.class */
public class C0276i {

    /* renamed from: a */
    private final k<?> f1518a;

    private C0276i(k<?> kVar) {
        this.f1518a = kVar;
    }

    /* renamed from: b */
    public static C0276i m5776b(k<?> kVar) {
        h.d(kVar, "callbacks == null");
        return new C0276i(kVar);
    }

    /* renamed from: a */
    public void m5777a(Fragment fragment) {
        AbstractC0272g abstractC0272g = this.f1518a;
        ((k) abstractC0272g).i.m5650l(abstractC0272g, abstractC0272g, fragment);
    }

    /* renamed from: c */
    public void m5775c() {
        this.f1518a.i.m5735A();
    }

    /* renamed from: d */
    public void m5774d(Configuration configuration) {
        this.f1518a.i.m5731C(configuration);
    }

    /* renamed from: e */
    public boolean m5773e(MenuItem menuItem) {
        return this.f1518a.i.m5729D(menuItem);
    }

    /* renamed from: f */
    public void m5772f() {
        this.f1518a.i.m5727E();
    }

    /* renamed from: g */
    public boolean m5771g(Menu menu, MenuInflater menuInflater) {
        return this.f1518a.i.m5725F(menu, menuInflater);
    }

    /* renamed from: h */
    public void m5770h() {
        this.f1518a.i.m5723G();
    }

    /* renamed from: i */
    public void m5769i() {
        this.f1518a.i.m5719I();
    }

    /* renamed from: j */
    public void m5768j(boolean z) {
        this.f1518a.i.m5717J(z);
    }

    /* renamed from: k */
    public boolean m5767k(MenuItem menuItem) {
        return this.f1518a.i.m5713L(menuItem);
    }

    /* renamed from: l */
    public void m5766l(Menu menu) {
        this.f1518a.i.m5711M(menu);
    }

    /* renamed from: m */
    public void m5765m() {
        this.f1518a.i.m5707O();
    }

    /* renamed from: n */
    public void m5764n(boolean z) {
        this.f1518a.i.m5705P(z);
    }

    /* renamed from: o */
    public boolean m5763o(Menu menu) {
        return this.f1518a.i.m5703Q(menu);
    }

    /* renamed from: p */
    public void m5762p() {
        this.f1518a.i.m5699S();
    }

    /* renamed from: q */
    public void m5761q() {
        this.f1518a.i.m5697T();
    }

    /* renamed from: r */
    public void m5760r() {
        this.f1518a.i.m5693V();
    }

    /* renamed from: s */
    public boolean m5759s() {
        return this.f1518a.i.m5676c0(true);
    }

    /* renamed from: t */
    public AbstractC0281n m5758t() {
        return this.f1518a.i;
    }

    /* renamed from: u */
    public void m5757u() {
        this.f1518a.i.m5694U0();
    }

    /* renamed from: v */
    public View m5756v(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f1518a.i.m5615x0().onCreateView(view, str, context, attributeSet);
    }

    /* renamed from: w */
    public void m5755w(Parcelable parcelable) {
        k<?> kVar = this.f1518a;
        if (kVar instanceof AbstractC0328g0) {
            kVar.i.m5657i1(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    /* renamed from: x */
    public Parcelable m5754x() {
        return this.f1518a.i.m5651k1();
    }
}
