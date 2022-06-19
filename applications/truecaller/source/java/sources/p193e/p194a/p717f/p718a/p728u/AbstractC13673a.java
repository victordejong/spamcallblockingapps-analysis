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
/* renamed from: e.a.f.a.u.a */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/u/a.class */
public abstract class AbstractC13673a extends AbstractC13676d implements b {

    /* renamed from: q */
    public ContextWrapper f39633q;

    /* renamed from: r */
    public volatile f f39634r;

    /* renamed from: s */
    public final Object f39635s = new Object();

    /* renamed from: t */
    public boolean f39636t = false;

    /* renamed from: Yt */
    public final Object m21329Yt() {
        if (this.f39634r == null) {
            synchronized (this.f39635s) {
                if (this.f39634r == null) {
                    this.f39634r = new f(this);
                }
            }
        }
        return this.f39634r.Yt();
    }

    /* renamed from: fB */
    public final void m21328fB() {
        if (this.f39633q == null) {
            this.f39633q = new ViewComponentManager$FragmentContextWrapper(AbstractC13673a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: gB */
    public void m21327gB() {
        if (!this.f39636t) {
            this.f39636t = true;
            ((AbstractC13681h) m21329Yt()).mo11965U0((C13680g) this);
        }
    }

    public Context getContext() {
        if (AbstractC13673a.super.getContext() == null && this.f39633q == null) {
            return null;
        }
        m21328fB();
        return this.f39633q;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13673a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13673a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39633q;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21328fB();
        m21327gB();
    }

    public void onAttach(Context context) {
        AbstractC13673a.super.onAttach(context);
        m21328fB();
        m21327gB();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13673a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
