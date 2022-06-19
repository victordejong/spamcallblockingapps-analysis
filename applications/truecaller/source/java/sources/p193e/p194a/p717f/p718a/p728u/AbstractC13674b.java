package p193e.p194a.p717f.p718a.p728u;

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
/* renamed from: e.a.f.a.u.b */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/u/b.class */
public abstract class AbstractC13674b extends AbstractC13676d implements b {

    /* renamed from: q */
    public ContextWrapper f39637q;

    /* renamed from: r */
    public volatile f f39638r;

    /* renamed from: s */
    public final Object f39639s = new Object();

    /* renamed from: t */
    public boolean f39640t = false;

    /* renamed from: Yt */
    public final Object m21326Yt() {
        if (this.f39638r == null) {
            synchronized (this.f39639s) {
                if (this.f39638r == null) {
                    this.f39638r = new f(this);
                }
            }
        }
        return this.f39638r.Yt();
    }

    /* renamed from: fB */
    public final void m21325fB() {
        if (this.f39637q == null) {
            this.f39637q = new ViewComponentManager$FragmentContextWrapper(AbstractC13674b.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: gB */
    public void m21324gB() {
        if (!this.f39640t) {
            this.f39640t = true;
            ((AbstractC13683j) m21326Yt()).mo11888y((C13682i) this);
        }
    }

    public Context getContext() {
        if (AbstractC13674b.super.getContext() == null && this.f39637q == null) {
            return null;
        }
        m21325fB();
        return this.f39637q;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13674b.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13674b.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39637q;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21325fB();
        m21324gB();
    }

    public void onAttach(Context context) {
        AbstractC13674b.super.onAttach(context);
        m21325fB();
        m21324gB();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13674b.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
