package p193e.p194a.p947k.p948a.p951b;

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
/* renamed from: e.a.k.a.b.k */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/b/k.class */
public abstract class AbstractC15627k extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f44159a;

    /* renamed from: b */
    public volatile f f44160b;

    /* renamed from: c */
    public final Object f44161c = new Object();

    /* renamed from: d */
    public boolean f44162d = false;

    /* renamed from: OA */
    public final void m18566OA() {
        if (this.f44159a == null) {
            this.f44159a = new ViewComponentManager$FragmentContextWrapper(AbstractC15627k.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18565PA() {
        if (!this.f44162d) {
            this.f44162d = true;
            ((AbstractC15620d) m18564Yt()).mo11902t((C15613a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18564Yt() {
        if (this.f44160b == null) {
            synchronized (this.f44161c) {
                if (this.f44160b == null) {
                    this.f44160b = new f(this);
                }
            }
        }
        return this.f44160b.Yt();
    }

    public Context getContext() {
        if (AbstractC15627k.super.getContext() == null && this.f44159a == null) {
            return null;
        }
        m18566OA();
        return this.f44159a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15627k.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15627k.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44159a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18566OA();
        m18565PA();
    }

    public void onAttach(Context context) {
        AbstractC15627k.super.onAttach(context);
        m18566OA();
        m18565PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15627k.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
