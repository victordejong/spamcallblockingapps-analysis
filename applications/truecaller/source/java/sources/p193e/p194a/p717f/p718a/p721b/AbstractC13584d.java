package p193e.p194a.p717f.p718a.p721b;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import o3.b.a.c.c.f;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p717f.p718a.AbstractC13634c;
import p193e.p194a.p717f.p718a.AbstractC13637d;
/* renamed from: e.a.f.a.b.d */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/d.class */
public abstract class AbstractC13584d<T extends AbstractC13637d<?>> extends AbstractC13634c<T> implements Object {

    /* renamed from: b */
    public ContextWrapper f39359b;

    /* renamed from: c */
    public volatile f f39360c;

    /* renamed from: d */
    public final Object f39361d = new Object();

    /* renamed from: e */
    public boolean f39362e = false;

    /* renamed from: Yt */
    public final Object m21605Yt() {
        if (this.f39360c == null) {
            synchronized (this.f39361d) {
                if (this.f39360c == null) {
                    this.f39360c = new f(this);
                }
            }
        }
        return this.f39360c.Yt();
    }

    /* renamed from: fB */
    public final void m21604fB() {
        if (this.f39359b == null) {
            this.f39359b = new ViewComponentManager$FragmentContextWrapper(AbstractC13584d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: gB */
    public void m21603gB() {
        if (!this.f39362e) {
            this.f39362e = true;
            ((AbstractC13587g) m21605Yt()).mo11960Y((C13577c) this);
        }
    }

    public Context getContext() {
        if (AbstractC13584d.super.getContext() == null && this.f39359b == null) {
            return null;
        }
        m21604fB();
        return this.f39359b;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13584d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13584d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39359b;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21604fB();
        m21603gB();
    }

    public void onAttach(Context context) {
        AbstractC13584d.super.onAttach(context);
        m21604fB();
        m21603gB();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13584d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
