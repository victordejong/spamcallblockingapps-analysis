package p193e.p194a.p918j.p919a.p926c;

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
/* renamed from: e.a.j.a.c.c */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/c/c.class */
public abstract class AbstractC15406c extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f43729a;

    /* renamed from: b */
    public volatile f f43730b;

    /* renamed from: c */
    public final Object f43731c = new Object();

    /* renamed from: d */
    public boolean f43732d = false;

    /* renamed from: OA */
    public final void m18848OA() {
        if (this.f43729a == null) {
            this.f43729a = new ViewComponentManager$FragmentContextWrapper(AbstractC15406c.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18847PA() {
        if (!this.f43732d) {
            this.f43732d = true;
            ((AbstractC15405b) m18846Yt()).mo11910q0((C15392a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18846Yt() {
        if (this.f43730b == null) {
            synchronized (this.f43731c) {
                if (this.f43730b == null) {
                    this.f43730b = new f(this);
                }
            }
        }
        return this.f43730b.Yt();
    }

    public Context getContext() {
        if (AbstractC15406c.super.getContext() == null && this.f43729a == null) {
            return null;
        }
        m18848OA();
        return this.f43729a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15406c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15406c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f43729a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18848OA();
        m18847PA();
    }

    public void onAttach(Context context) {
        AbstractC15406c.super.onAttach(context);
        m18848OA();
        m18847PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15406c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
