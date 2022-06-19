package p193e.p194a.p947k.p948a.p953d;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import n3.b.a.q;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.k.a.d.m */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/d/m.class */
public abstract class AbstractC15656m extends q implements b {

    /* renamed from: a */
    public ContextWrapper f44201a;

    /* renamed from: b */
    public volatile f f44202b;

    /* renamed from: c */
    public final Object f44203c = new Object();

    /* renamed from: d */
    public boolean f44204d = false;

    /* renamed from: OA */
    public final void m18546OA() {
        if (this.f44201a == null) {
            this.f44201a = new ViewComponentManager$FragmentContextWrapper(AbstractC15656m.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18545PA() {
        if (!this.f44204d) {
            this.f44204d = true;
            ((AbstractC15651h) m18544Yt()).mo12000I((C15639a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18544Yt() {
        if (this.f44202b == null) {
            synchronized (this.f44203c) {
                if (this.f44202b == null) {
                    this.f44202b = new f(this);
                }
            }
        }
        return this.f44202b.Yt();
    }

    public Context getContext() {
        if (AbstractC15656m.super.getContext() == null && this.f44201a == null) {
            return null;
        }
        m18546OA();
        return this.f44201a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15656m.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15656m.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44201a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18546OA();
        m18545PA();
    }

    public void onAttach(Context context) {
        AbstractC15656m.super.onAttach(context);
        m18546OA();
        m18545PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15656m.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
