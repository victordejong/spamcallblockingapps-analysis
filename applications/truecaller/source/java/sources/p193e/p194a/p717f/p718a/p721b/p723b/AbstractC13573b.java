package p193e.p194a.p717f.p718a.p721b.p723b;

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
/* renamed from: e.a.f.a.b.b.b */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/b/b.class */
public abstract class AbstractC13573b extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f39338a;

    /* renamed from: b */
    public volatile f f39339b;

    /* renamed from: c */
    public final Object f39340c = new Object();

    /* renamed from: d */
    public boolean f39341d = false;

    /* renamed from: OA */
    public final void m21616OA() {
        if (this.f39338a == null) {
            this.f39338a = new ViewComponentManager$FragmentContextWrapper(AbstractC13573b.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m21615PA() {
        if (!this.f39341d) {
            this.f39341d = true;
            ((AbstractC13574c) m21614Yt()).mo11968T((C13568a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m21614Yt() {
        if (this.f39339b == null) {
            synchronized (this.f39340c) {
                if (this.f39339b == null) {
                    this.f39339b = new f(this);
                }
            }
        }
        return this.f39339b.Yt();
    }

    public Context getContext() {
        if (AbstractC13573b.super.getContext() == null && this.f39338a == null) {
            return null;
        }
        m21616OA();
        return this.f39338a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13573b.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13573b.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39338a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21616OA();
        m21615PA();
    }

    public void onAttach(Context context) {
        AbstractC13573b.super.onAttach(context);
        m21616OA();
        m21615PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13573b.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
