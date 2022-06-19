package p193e.p194a.p798g5.p802e0;

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
/* renamed from: e.a.g5.e0.c */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e0/c.class */
public abstract class AbstractC14478c extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f41697a;

    /* renamed from: b */
    public volatile f f41698b;

    /* renamed from: c */
    public final Object f41699c = new Object();

    /* renamed from: d */
    public boolean f41700d = false;

    /* renamed from: OA */
    public final void m20058OA() {
        if (this.f41697a == null) {
            this.f41697a = new ViewComponentManager$FragmentContextWrapper(AbstractC14478c.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m20057PA() {
        if (!this.f41700d) {
            this.f41700d = true;
            ((AbstractC14501r) m20056Yt()).mo11890x0((View$OnClickListenerC14484i) this);
        }
    }

    /* renamed from: Yt */
    public final Object m20056Yt() {
        if (this.f41698b == null) {
            synchronized (this.f41699c) {
                if (this.f41698b == null) {
                    this.f41698b = new f(this);
                }
            }
        }
        return this.f41698b.Yt();
    }

    public Context getContext() {
        if (AbstractC14478c.super.getContext() == null && this.f41697a == null) {
            return null;
        }
        m20058OA();
        return this.f41697a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC14478c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC14478c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f41697a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m20058OA();
        m20057PA();
    }

    public void onAttach(Context context) {
        AbstractC14478c.super.onAttach(context);
        m20058OA();
        m20057PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC14478c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
