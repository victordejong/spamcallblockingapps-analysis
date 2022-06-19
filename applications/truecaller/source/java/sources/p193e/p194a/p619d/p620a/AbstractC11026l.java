package p193e.p194a.p619d.p620a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import e.m.a.g.e.e;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.d.a.l */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/l.class */
public abstract class AbstractC11026l extends e implements b {

    /* renamed from: a */
    public ContextWrapper f32605a;

    /* renamed from: b */
    public volatile f f32606b;

    /* renamed from: c */
    public final Object f32607c = new Object();

    /* renamed from: d */
    public boolean f32608d = false;

    /* renamed from: OA */
    public final void m25399OA() {
        if (this.f32605a == null) {
            this.f32605a = new ViewComponentManager$FragmentContextWrapper(AbstractC11026l.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m25398PA() {
        if (!this.f32608d) {
            this.f32608d = true;
            ((AbstractC11009g) m25397Yt()).mo11937h((C10968a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m25397Yt() {
        if (this.f32606b == null) {
            synchronized (this.f32607c) {
                if (this.f32606b == null) {
                    this.f32606b = new f(this);
                }
            }
        }
        return this.f32606b.Yt();
    }

    public Context getContext() {
        if (AbstractC11026l.super.getContext() == null && this.f32605a == null) {
            return null;
        }
        m25399OA();
        return this.f32605a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC11026l.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC11026l.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f32605a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m25399OA();
        m25398PA();
    }

    public void onAttach(Context context) {
        AbstractC11026l.super.onAttach(context);
        m25399OA();
        m25398PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC11026l.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
