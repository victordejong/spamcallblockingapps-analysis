package p193e.p194a.p613c0;

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
/* renamed from: e.a.c0.j */
/* loaded from: classes4-dex2jar.jar:e/a/c0/j.class */
public abstract class AbstractC10914j extends k implements b {

    /* renamed from: a */
    public ContextWrapper f32413a;

    /* renamed from: b */
    public volatile f f32414b;

    /* renamed from: c */
    public final Object f32415c = new Object();

    /* renamed from: d */
    public boolean f32416d = false;

    /* renamed from: OA */
    public final void m25506OA() {
        if (this.f32413a == null) {
            this.f32413a = new ViewComponentManager$FragmentContextWrapper(AbstractC10914j.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m25505PA() {
        if (!this.f32416d) {
            this.f32416d = true;
            ((AbstractC10920n) m25504Yt()).mo11924l1((C10902a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m25504Yt() {
        if (this.f32414b == null) {
            synchronized (this.f32415c) {
                if (this.f32414b == null) {
                    this.f32414b = new f(this);
                }
            }
        }
        return this.f32414b.Yt();
    }

    public Context getContext() {
        if (AbstractC10914j.super.getContext() == null && this.f32413a == null) {
            return null;
        }
        m25506OA();
        return this.f32413a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC10914j.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC10914j.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f32413a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m25506OA();
        m25505PA();
    }

    public void onAttach(Context context) {
        AbstractC10914j.super.onAttach(context);
        m25506OA();
        m25505PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC10914j.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
