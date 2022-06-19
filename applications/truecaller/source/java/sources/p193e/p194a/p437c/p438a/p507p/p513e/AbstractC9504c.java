package p193e.p194a.p437c.p438a.p507p.p513e;

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
/* renamed from: e.a.c.a.p.e.c */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/c.class */
public abstract class AbstractC9504c extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f28821a;

    /* renamed from: b */
    public volatile f f28822b;

    /* renamed from: c */
    public final Object f28823c = new Object();

    /* renamed from: d */
    public boolean f28824d = false;

    /* renamed from: OA */
    public final void m27495OA() {
        if (this.f28821a == null) {
            this.f28821a = new ViewComponentManager$FragmentContextWrapper(AbstractC9504c.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m27494PA() {
        if (!this.f28824d) {
            this.f28824d = true;
            ((AbstractC9525r) m27493Yt()).mo11899u0((C9507f) this);
        }
    }

    /* renamed from: Yt */
    public final Object m27493Yt() {
        if (this.f28822b == null) {
            synchronized (this.f28823c) {
                if (this.f28822b == null) {
                    this.f28822b = new f(this);
                }
            }
        }
        return this.f28822b.Yt();
    }

    public Context getContext() {
        if (AbstractC9504c.super.getContext() == null && this.f28821a == null) {
            return null;
        }
        m27495OA();
        return this.f28821a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC9504c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC9504c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f28821a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m27495OA();
        m27494PA();
    }

    public void onAttach(Context context) {
        AbstractC9504c.super.onAttach(context);
        m27495OA();
        m27494PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC9504c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
