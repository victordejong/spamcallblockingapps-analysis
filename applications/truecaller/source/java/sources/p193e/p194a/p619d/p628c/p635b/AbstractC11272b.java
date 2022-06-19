package p193e.p194a.p619d.p628c.p635b;

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
import p193e.p194a.p619d.p628c.C11293c;
/* renamed from: e.a.d.c.b.b */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/b/b.class */
public abstract class AbstractC11272b extends C11293c implements b {

    /* renamed from: a */
    public ContextWrapper f33234a;

    /* renamed from: b */
    public volatile f f33235b;

    /* renamed from: c */
    public final Object f33236c = new Object();

    /* renamed from: d */
    public boolean f33237d = false;

    /* renamed from: OA */
    public final void m24933OA() {
        if (this.f33234a == null) {
            this.f33234a = new ViewComponentManager$FragmentContextWrapper(AbstractC11272b.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m24932PA() {
        if (!this.f33237d) {
            this.f33237d = true;
            ((AbstractC11276f) m24931Yt()).mo12017C((C11268a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m24931Yt() {
        if (this.f33235b == null) {
            synchronized (this.f33236c) {
                if (this.f33235b == null) {
                    this.f33235b = new f(this);
                }
            }
        }
        return this.f33235b.Yt();
    }

    public Context getContext() {
        if (AbstractC11272b.super.getContext() == null && this.f33234a == null) {
            return null;
        }
        m24933OA();
        return this.f33234a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC11272b.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC11272b.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f33234a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m24933OA();
        m24932PA();
    }

    public void onAttach(Context context) {
        AbstractC11272b.super.onAttach(context);
        m24933OA();
        m24932PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC11272b.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
