package androidx.fragment.app;

import android.content.Context;
import android.content.res.Configuration;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.core.p036f.C0687f;
import androidx.lifecycle.AbstractC0950w;
/* renamed from: androidx.fragment.app.j */
/* loaded from: classes-dex2jar.jar:androidx/fragment/app/j.class */
public final class C0894j {

    /* renamed from: a */
    private final AbstractC0896l<?> f3766a;

    private C0894j(AbstractC0896l<?> lVar) {
        this.f3766a = lVar;
    }

    /* renamed from: a */
    public static C0894j m7775a(AbstractC0896l<?> lVar) {
        return new C0894j((AbstractC0896l) C0687f.m8548a(lVar, "callbacks == null"));
    }

    /* renamed from: a */
    public final View m7776a(View view, String str, Context context, AttributeSet attributeSet) {
        return this.f3766a.f3769b.onCreateView(view, str, context, attributeSet);
    }

    /* renamed from: a */
    public final Fragment m7774a(String str) {
        return this.f3766a.f3769b.m7683b(str);
    }

    /* renamed from: a */
    public final AbstractC0897m m7782a() {
        return this.f3766a.f3769b;
    }

    /* renamed from: a */
    public final void m7781a(Configuration configuration) {
        this.f3766a.f3769b.m7721a(configuration);
    }

    /* renamed from: a */
    public final void m7780a(Parcelable parcelable) {
        AbstractC0896l<?> lVar = this.f3766a;
        if (lVar instanceof AbstractC0950w) {
            lVar.f3769b.m7718a(parcelable);
            return;
        }
        throw new IllegalStateException("Your FragmentHostCallback must implement ViewModelStoreOwner to call restoreSaveState(). Call restoreAllState()  if you're still using retainNestedNonConfig().");
    }

    /* renamed from: a */
    public final void m7773a(boolean z) {
        this.f3766a.f3769b.m7693a(z);
    }

    /* renamed from: a */
    public final boolean m7779a(Menu menu) {
        return this.f3766a.f3769b.m7717a(menu);
    }

    /* renamed from: a */
    public final boolean m7778a(Menu menu, MenuInflater menuInflater) {
        return this.f3766a.f3769b.m7716a(menu, menuInflater);
    }

    /* renamed from: a */
    public final boolean m7777a(MenuItem menuItem) {
        return this.f3766a.f3769b.m7715a(menuItem);
    }

    /* renamed from: b */
    public final void m7772b() {
        LayoutInflater$Factory2C0898n nVar = this.f3766a.f3769b;
        AbstractC0896l<?> lVar = this.f3766a;
        nVar.m7702a(lVar, lVar, (Fragment) null);
    }

    /* renamed from: b */
    public final void m7771b(Menu menu) {
        this.f3766a.f3769b.m7690b(menu);
    }

    /* renamed from: b */
    public final void m7769b(boolean z) {
        this.f3766a.f3769b.m7680b(z);
    }

    /* renamed from: b */
    public final boolean m7770b(MenuItem menuItem) {
        return this.f3766a.f3769b.m7689b(menuItem);
    }

    /* renamed from: c */
    public final void m7768c() {
        this.f3766a.f3769b.m7653m();
    }

    /* renamed from: d */
    public final Parcelable m7767d() {
        return this.f3766a.f3769b.m7655l();
    }

    /* renamed from: e */
    public final void m7766e() {
        this.f3766a.f3769b.m7651n();
    }

    /* renamed from: f */
    public final void m7765f() {
        this.f3766a.f3769b.m7649o();
    }

    /* renamed from: g */
    public final void m7764g() {
        this.f3766a.f3769b.m7647p();
    }

    /* renamed from: h */
    public final void m7763h() {
        this.f3766a.f3769b.m7645q();
    }

    /* renamed from: i */
    public final void m7762i() {
        this.f3766a.f3769b.m7643r();
    }

    /* renamed from: j */
    public final void m7761j() {
        this.f3766a.f3769b.m7641s();
    }

    /* renamed from: k */
    public final void m7760k() {
        this.f3766a.f3769b.m7637u();
    }

    /* renamed from: l */
    public final void m7759l() {
        this.f3766a.f3769b.m7635v();
    }

    /* renamed from: m */
    public final boolean m7758m() {
        return this.f3766a.f3769b.m7657k();
    }
}
