package p193e.p194a.p619d.p622b.p623a.p624a;

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
/* renamed from: e.a.d.b.a.a.d */
/* loaded from: classes15-dex2jar.jar:e/a/d/b/a/a/d.class */
public abstract class AbstractC11071d extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f32733a;

    /* renamed from: b */
    public volatile f f32734b;

    /* renamed from: c */
    public final Object f32735c = new Object();

    /* renamed from: d */
    public boolean f32736d = false;

    /* renamed from: OA */
    public final void m25326OA() {
        if (this.f32733a == null) {
            this.f32733a = new ViewComponentManager$FragmentContextWrapper(AbstractC11071d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m25325PA() {
        if (!this.f32736d) {
            this.f32736d = true;
            ((AbstractC11074g) m25324Yt()).mo12004G0((C11064a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m25324Yt() {
        if (this.f32734b == null) {
            synchronized (this.f32735c) {
                if (this.f32734b == null) {
                    this.f32734b = new f(this);
                }
            }
        }
        return this.f32734b.Yt();
    }

    public Context getContext() {
        if (AbstractC11071d.super.getContext() == null && this.f32733a == null) {
            return null;
        }
        m25326OA();
        return this.f32733a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC11071d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC11071d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f32733a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m25326OA();
        m25325PA();
    }

    public void onAttach(Context context) {
        AbstractC11071d.super.onAttach(context);
        m25326OA();
        m25325PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC11071d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
