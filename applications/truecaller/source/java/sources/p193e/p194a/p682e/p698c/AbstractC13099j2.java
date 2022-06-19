package p193e.p194a.p682e.p698c;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p682e.AbstractC13329x0;
/* renamed from: e.a.e.c.j2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/c/j2.class */
public abstract class AbstractC13099j2 extends AbstractC13329x0 implements b {

    /* renamed from: e */
    public ContextWrapper f38001e;

    /* renamed from: f */
    public volatile f f38002f;

    /* renamed from: g */
    public final Object f38003g = new Object();

    /* renamed from: h */
    public boolean f38004h = false;

    /* renamed from: WA */
    public final void m22061WA() {
        if (this.f38001e == null) {
            this.f38001e = new ViewComponentManager$FragmentContextWrapper(AbstractC13099j2.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: XA */
    public void m22060XA() {
        if (!this.f38004h) {
            this.f38004h = true;
            ((AbstractC13168x1) m22059Yt()).mo11893w0((View$OnClickListenerC13135s1) this);
        }
    }

    /* renamed from: Yt */
    public final Object m22059Yt() {
        if (this.f38002f == null) {
            synchronized (this.f38003g) {
                if (this.f38002f == null) {
                    this.f38002f = new f(this);
                }
            }
        }
        return this.f38002f.Yt();
    }

    public Context getContext() {
        if (AbstractC13099j2.super.getContext() == null && this.f38001e == null) {
            return null;
        }
        m22061WA();
        return this.f38001e;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13099j2.super.getDefaultViewModelProviderFactory());
    }

    @Override // p193e.p194a.p682e.AbstractC13329x0
    public void onAttach(Activity activity) {
        super.onAttach(activity);
        ContextWrapper contextWrapper = this.f38001e;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m22061WA();
        m22060XA();
    }

    public void onAttach(Context context) {
        AbstractC13099j2.super.onAttach(context);
        m22061WA();
        m22060XA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13099j2.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
