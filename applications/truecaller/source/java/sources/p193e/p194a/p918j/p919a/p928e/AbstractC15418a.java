package p193e.p194a.p918j.p919a.p928e;

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
/* renamed from: e.a.j.a.e.a */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/e/a.class */
public abstract class AbstractC15418a extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f43753a;

    /* renamed from: b */
    public volatile f f43754b;

    /* renamed from: c */
    public final Object f43755c = new Object();

    /* renamed from: d */
    public boolean f43756d = false;

    /* renamed from: OA */
    public final void m18833OA() {
        if (this.f43753a == null) {
            this.f43753a = new ViewComponentManager$FragmentContextWrapper(AbstractC15418a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18832PA() {
        if (!this.f43756d) {
            this.f43756d = true;
            ((AbstractC15429d) m18831Yt()).mo12011E((C15419b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18831Yt() {
        if (this.f43754b == null) {
            synchronized (this.f43755c) {
                if (this.f43754b == null) {
                    this.f43754b = new f(this);
                }
            }
        }
        return this.f43754b.Yt();
    }

    public Context getContext() {
        if (AbstractC15418a.super.getContext() == null && this.f43753a == null) {
            return null;
        }
        m18833OA();
        return this.f43753a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15418a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15418a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f43753a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18833OA();
        m18832PA();
    }

    public void onAttach(Context context) {
        AbstractC15418a.super.onAttach(context);
        m18833OA();
        m18832PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15418a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
