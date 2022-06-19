package p193e.p194a.p918j.p919a.p920a.p921a.p923b;

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
/* renamed from: e.a.j.a.a.a.b.d */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/b/d.class */
public abstract class AbstractC15349d extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f43633a;

    /* renamed from: b */
    public volatile f f43634b;

    /* renamed from: c */
    public final Object f43635c = new Object();

    /* renamed from: d */
    public boolean f43636d = false;

    /* renamed from: OA */
    public final void m18903OA() {
        if (this.f43633a == null) {
            this.f43633a = new ViewComponentManager$FragmentContextWrapper(AbstractC15349d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18902PA() {
        if (!this.f43636d) {
            this.f43636d = true;
            ((AbstractC15347b) m18901Yt()).mo11958Z((C15334a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18901Yt() {
        if (this.f43634b == null) {
            synchronized (this.f43635c) {
                if (this.f43634b == null) {
                    this.f43634b = new f(this);
                }
            }
        }
        return this.f43634b.Yt();
    }

    public Context getContext() {
        if (AbstractC15349d.super.getContext() == null && this.f43633a == null) {
            return null;
        }
        m18903OA();
        return this.f43633a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15349d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15349d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f43633a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18903OA();
        m18902PA();
    }

    public void onAttach(Context context) {
        AbstractC15349d.super.onAttach(context);
        m18903OA();
        m18902PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15349d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
