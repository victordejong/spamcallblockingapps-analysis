package p193e.p194a.p947k.p968b;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import n3.r.a.k;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.k.b.j */
/* loaded from: classes15-dex2jar.jar:e/a/k/b/j.class */
public abstract class AbstractC15935j extends k implements b {

    /* renamed from: a */
    public ContextWrapper f44932a;

    /* renamed from: b */
    public volatile f f44933b;

    /* renamed from: c */
    public final Object f44934c = new Object();

    /* renamed from: d */
    public boolean f44935d = false;

    /* renamed from: OA */
    public final void m18119OA() {
        if (this.f44932a == null) {
            this.f44932a = new ViewComponentManager$FragmentContextWrapper(AbstractC15935j.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18118PA() {
        if (!this.f44935d) {
            this.f44935d = true;
            ((AbstractC15938l) m18117Yt()).mo11987M0((C15936k) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18117Yt() {
        if (this.f44933b == null) {
            synchronized (this.f44934c) {
                if (this.f44933b == null) {
                    this.f44933b = new f(this);
                }
            }
        }
        return this.f44933b.Yt();
    }

    public Context getContext() {
        if (AbstractC15935j.super.getContext() == null && this.f44932a == null) {
            return null;
        }
        m18119OA();
        return this.f44932a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15935j.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15935j.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44932a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18119OA();
        m18118PA();
    }

    public void onAttach(Context context) {
        AbstractC15935j.super.onAttach(context);
        m18119OA();
        m18118PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15935j.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
