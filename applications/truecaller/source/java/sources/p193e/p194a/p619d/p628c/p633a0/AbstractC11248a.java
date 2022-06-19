package p193e.p194a.p619d.p628c.p633a0;

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
/* renamed from: e.a.d.c.a0.a */
/* loaded from: classes15-dex2jar.jar:e/a/d/c/a0/a.class */
public abstract class AbstractC11248a extends C11293c implements b {

    /* renamed from: a */
    public ContextWrapper f33181a;

    /* renamed from: b */
    public volatile f f33182b;

    /* renamed from: c */
    public final Object f33183c = new Object();

    /* renamed from: d */
    public boolean f33184d = false;

    /* renamed from: OA */
    public final void m24970OA() {
        if (this.f33181a == null) {
            this.f33181a = new ViewComponentManager$FragmentContextWrapper(AbstractC11248a.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m24969PA() {
        if (!this.f33184d) {
            this.f33184d = true;
            ((AbstractC11256f) m24968Yt()).mo12013D0((C11249b) this);
        }
    }

    /* renamed from: Yt */
    public final Object m24968Yt() {
        if (this.f33182b == null) {
            synchronized (this.f33183c) {
                if (this.f33182b == null) {
                    this.f33182b = new f(this);
                }
            }
        }
        return this.f33182b.Yt();
    }

    public Context getContext() {
        if (AbstractC11248a.super.getContext() == null && this.f33181a == null) {
            return null;
        }
        m24970OA();
        return this.f33181a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC11248a.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC11248a.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f33181a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m24970OA();
        m24969PA();
    }

    public void onAttach(Context context) {
        AbstractC11248a.super.onAttach(context);
        m24970OA();
        m24969PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC11248a.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
