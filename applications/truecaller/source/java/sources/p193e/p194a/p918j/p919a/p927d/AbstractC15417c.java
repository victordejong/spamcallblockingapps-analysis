package p193e.p194a.p918j.p919a.p927d;

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
/* renamed from: e.a.j.a.d.c */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/d/c.class */
public abstract class AbstractC15417c extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f43749a;

    /* renamed from: b */
    public volatile f f43750b;

    /* renamed from: c */
    public final Object f43751c = new Object();

    /* renamed from: d */
    public boolean f43752d = false;

    /* renamed from: OA */
    public final void m18836OA() {
        if (this.f43749a == null) {
            this.f43749a = new ViewComponentManager$FragmentContextWrapper(AbstractC15417c.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18835PA() {
        if (!this.f43752d) {
            this.f43752d = true;
            ((AbstractC15416b) m18834Yt()).mo11926l((C15407a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18834Yt() {
        if (this.f43750b == null) {
            synchronized (this.f43751c) {
                if (this.f43750b == null) {
                    this.f43750b = new f(this);
                }
            }
        }
        return this.f43750b.Yt();
    }

    public Context getContext() {
        if (AbstractC15417c.super.getContext() == null && this.f43749a == null) {
            return null;
        }
        m18836OA();
        return this.f43749a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15417c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15417c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f43749a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18836OA();
        m18835PA();
    }

    public void onAttach(Context context) {
        AbstractC15417c.super.onAttach(context);
        m18836OA();
        m18835PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15417c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
