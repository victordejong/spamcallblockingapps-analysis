package p193e.p194a.p619d.p622b.p625b.p626a;

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
/* renamed from: e.a.d.b.b.a.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/b/a/d.class */
public abstract class AbstractC11127d extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f32910a;

    /* renamed from: b */
    public volatile f f32911b;

    /* renamed from: c */
    public final Object f32912c = new Object();

    /* renamed from: d */
    public boolean f32913d = false;

    /* renamed from: OA */
    public final void m25170OA() {
        if (this.f32910a == null) {
            this.f32910a = new ViewComponentManager$FragmentContextWrapper(AbstractC11127d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m25169PA() {
        if (!this.f32913d) {
            this.f32913d = true;
            ((AbstractC11132i) m25168Yt()).mo11936h0((C11122a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m25168Yt() {
        if (this.f32911b == null) {
            synchronized (this.f32912c) {
                if (this.f32911b == null) {
                    this.f32911b = new f(this);
                }
            }
        }
        return this.f32911b.Yt();
    }

    public Context getContext() {
        if (AbstractC11127d.super.getContext() == null && this.f32910a == null) {
            return null;
        }
        m25170OA();
        return this.f32910a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC11127d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC11127d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f32910a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m25170OA();
        m25169PA();
    }

    public void onAttach(Context context) {
        AbstractC11127d.super.onAttach(context);
        m25170OA();
        m25169PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC11127d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
