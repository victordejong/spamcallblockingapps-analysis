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
/* renamed from: e.a.g5.e */
/* loaded from: classes14-dex2jar.jar:e/a/g5/e.class */
public abstract class AbstractC14475e extends AbstractView$OnClickListenerC14526l.AbstractC14530d implements b {

    /* renamed from: a */
    public ContextWrapper f41689a;

    /* renamed from: b */
    public volatile f f41690b;

    /* renamed from: c */
    public final Object f41691c = new Object();

    /* renamed from: d */
    public boolean f41692d = false;

    /* renamed from: PA */
    public final void m20062PA() {
        if (this.f41689a == null) {
            this.f41689a = new ViewComponentManager$FragmentContextWrapper(AbstractC14475e.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: QA */
    public void m20061QA() {
        if (!this.f41692d) {
            this.f41692d = true;
            ((AbstractC14525k) m20060Yt()).mo12007F0((View$OnClickListenerC14517j) this);
        }
    }

    /* renamed from: Yt */
    public final Object m20060Yt() {
        if (this.f41690b == null) {
            synchronized (this.f41691c) {
                if (this.f41690b == null) {
                    this.f41690b = new f(this);
                }
            }
        }
        return this.f41690b.Yt();
    }

    public Context getContext() {
        if (AbstractC14475e.super.getContext() == null && this.f41689a == null) {
            return null;
        }
        m20062PA();
        return this.f41689a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC14475e.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC14475e.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f41689a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m20062PA();
        m20061QA();
    }

    public void onAttach(Context context) {
        AbstractC14475e.super.onAttach(context);
        m20062PA();
        m20061QA();
    }

    @Override // p193e.p194a.p798g5.AbstractView$OnClickListenerC14526l.AbstractC14530d
    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
