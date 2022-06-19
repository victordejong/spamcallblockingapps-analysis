package p193e.p194a.p798g5;

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
import p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l;
/* renamed from: e.a.g5.h */
/* loaded from: classes14-dex2jar.jar:e/a/g5/h.class */
public abstract class AbstractC14515h extends AbstractView$OnClickListenerC14526l.AbstractC14530d implements b {

    /* renamed from: a */
    public ContextWrapper f41774a;

    /* renamed from: b */
    public volatile f f41775b;

    /* renamed from: c */
    public final Object f41776c = new Object();

    /* renamed from: d */
    public boolean f41777d = false;

    /* renamed from: PA */
    public final void m20042PA() {
        if (this.f41774a == null) {
            this.f41774a = new ViewComponentManager$FragmentContextWrapper(AbstractC14515h.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: QA */
    public void m20041QA() {
        if (!this.f41777d) {
            this.f41777d = true;
            ((AbstractC14550w) m20040Yt()).mo11930j1((View$OnClickListenerC14541t) this);
        }
    }

    /* renamed from: Yt */
    public final Object m20040Yt() {
        if (this.f41775b == null) {
            synchronized (this.f41776c) {
                if (this.f41775b == null) {
                    this.f41775b = new f(this);
                }
            }
        }
        return this.f41775b.Yt();
    }

    public Context getContext() {
        if (AbstractC14515h.super.getContext() == null && this.f41774a == null) {
            return null;
        }
        m20042PA();
        return this.f41774a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC14515h.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC14515h.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f41774a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m20042PA();
        m20041QA();
    }

    public void onAttach(Context context) {
        AbstractC14515h.super.onAttach(context);
        m20042PA();
        m20041QA();
    }

    @Override // p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l.AbstractC14530d
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
