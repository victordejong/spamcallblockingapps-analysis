package p193e.p194a.p437c.p438a.p507p.p513e;

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
/* renamed from: e.a.c.a.p.e.d */
/* loaded from: classes10-dex2jar.jar:e/a/c/a/p/e/d.class */
public abstract class AbstractC9505d extends q implements b {

    /* renamed from: a */
    public ContextWrapper f28825a;

    /* renamed from: b */
    public volatile f f28826b;

    /* renamed from: c */
    public final Object f28827c = new Object();

    /* renamed from: d */
    public boolean f28828d = false;

    /* renamed from: OA */
    public final void m27492OA() {
        if (this.f28825a == null) {
            this.f28825a = new ViewComponentManager$FragmentContextWrapper(AbstractC9505d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m27491PA() {
        if (!this.f28828d) {
            this.f28828d = true;
            ((AbstractC9532t) m27490Yt()).mo11948d((C9526s) this);
        }
    }

    /* renamed from: Yt */
    public final Object m27490Yt() {
        if (this.f28826b == null) {
            synchronized (this.f28827c) {
                if (this.f28826b == null) {
                    this.f28826b = new f(this);
                }
            }
        }
        return this.f28826b.Yt();
    }

    public Context getContext() {
        if (AbstractC9505d.super.getContext() == null && this.f28825a == null) {
            return null;
        }
        m27492OA();
        return this.f28825a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC9505d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC9505d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f28825a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m27492OA();
        m27491PA();
    }

    public void onAttach(Context context) {
        AbstractC9505d.super.onAttach(context);
        m27492OA();
        m27491PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC9505d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
