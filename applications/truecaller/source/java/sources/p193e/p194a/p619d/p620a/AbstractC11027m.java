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
/* renamed from: e.a.d.a.m */
/* loaded from: classes15-dex2jar.jar:e/a/d/a/m.class */
public abstract class AbstractC11027m extends e implements b {

    /* renamed from: a */
    public ContextWrapper f32609a;

    /* renamed from: b */
    public volatile f f32610b;

    /* renamed from: c */
    public final Object f32611c = new Object();

    /* renamed from: d */
    public boolean f32612d = false;

    /* renamed from: OA */
    public final void m25396OA() {
        if (this.f32609a == null) {
            this.f32609a = new ViewComponentManager$FragmentContextWrapper(AbstractC11027m.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m25395PA() {
        if (!this.f32612d) {
            this.f32612d = true;
            ((AbstractC11023j) m25394Yt()).mo11891x((C10981b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m25394Yt() {
        if (this.f32610b == null) {
            synchronized (this.f32611c) {
                if (this.f32610b == null) {
                    this.f32610b = new f(this);
                }
            }
        }
        return this.f32610b.Yt();
    }

    public Context getContext() {
        if (AbstractC11027m.super.getContext() == null && this.f32609a == null) {
            return null;
        }
        m25396OA();
        return this.f32609a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC11027m.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC11027m.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f32609a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m25396OA();
        m25395PA();
    }

    public void onAttach(Context context) {
        AbstractC11027m.super.onAttach(context);
        m25396OA();
        m25395PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC11027m.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
