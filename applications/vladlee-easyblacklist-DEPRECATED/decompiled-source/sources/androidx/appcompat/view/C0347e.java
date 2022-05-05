package androidx.appcompat.view;

import android.content.Context;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import androidx.appcompat.view.AbstractC0343b;
import androidx.appcompat.view.menu.C0371k;
import androidx.appcompat.widget.ActionBarContextView;
import java.lang.ref.WeakReference;
/* renamed from: androidx.appcompat.view.e */
/* loaded from: classes-dex2jar.jar:androidx/appcompat/view/e.class */
public final class C0347e extends AbstractC0343b implements C0371k.AbstractC0372a {

    /* renamed from: a */
    private Context f1459a;

    /* renamed from: b */
    private ActionBarContextView f1460b;

    /* renamed from: c */
    private AbstractC0343b.AbstractC0344a f1461c;

    /* renamed from: d */
    private WeakReference<View> f1462d;

    /* renamed from: e */
    private boolean f1463e;

    /* renamed from: f */
    private boolean f1464f;

    /* renamed from: g */
    private C0371k f1465g;

    public C0347e(Context context, ActionBarContextView actionBarContextView, AbstractC0343b.AbstractC0344a aVar, boolean z) {
        this.f1459a = context;
        this.f1460b = actionBarContextView;
        this.f1461c = aVar;
        this.f1465g = new C0371k(actionBarContextView.getContext()).m9625a();
        this.f1465g.mo9539a(this);
        this.f1464f = z;
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: a */
    public final MenuInflater mo9692a() {
        return new C0350g(this.f1460b.getContext());
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: a */
    public final void mo9691a(int i) {
        mo9685b(this.f1459a.getString(i));
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: a */
    public final void mo9690a(View view) {
        this.f1460b.m9524a(view);
        this.f1462d = view != null ? new WeakReference<>(view) : null;
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
    /* renamed from: a */
    public final void mo949a(C0371k kVar) {
        mo9683d();
        this.f1460b.mo9246a();
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: a */
    public final void mo9689a(CharSequence charSequence) {
        this.f1460b.m9519b(charSequence);
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: a */
    public final void mo9688a(boolean z) {
        super.mo9688a(z);
        this.f1460b.m9521a(z);
    }

    @Override // androidx.appcompat.view.menu.C0371k.AbstractC0372a
    /* renamed from: a */
    public final boolean mo948a(C0371k kVar, MenuItem menuItem) {
        return this.f1461c.mo49a(this, menuItem);
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: b */
    public final Menu mo9687b() {
        return this.f1465g;
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: b */
    public final void mo9686b(int i) {
        mo9689a((CharSequence) this.f1459a.getString(i));
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: b */
    public final void mo9685b(CharSequence charSequence) {
        this.f1460b.m9522a(charSequence);
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: c */
    public final void mo9684c() {
        if (!this.f1463e) {
            this.f1463e = true;
            this.f1460b.sendAccessibilityEvent(32);
            this.f1461c.mo51a(this);
        }
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: d */
    public final void mo9683d() {
        this.f1461c.mo48b(this, this.f1465g);
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: f */
    public final CharSequence mo9682f() {
        return this.f1460b.m9520b();
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: g */
    public final CharSequence mo9681g() {
        return this.f1460b.m9518c();
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: h */
    public final boolean mo9680h() {
        return this.f1460b.m9515f();
    }

    @Override // androidx.appcompat.view.AbstractC0343b
    /* renamed from: i */
    public final View mo9679i() {
        WeakReference<View> weakReference = this.f1462d;
        if (weakReference != null) {
            return weakReference.get();
        }
        return null;
    }
}
