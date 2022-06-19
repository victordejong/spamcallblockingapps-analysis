package p193e.p194a.p918j.p919a.p920a.p921a.p922a;

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
/* renamed from: e.a.j.a.a.a.a.d */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/a/a/d.class */
public abstract class AbstractC15333d extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f43604a;

    /* renamed from: b */
    public volatile f f43605b;

    /* renamed from: c */
    public final Object f43606c = new Object();

    /* renamed from: d */
    public boolean f43607d = false;

    /* renamed from: OA */
    public final void m18918OA() {
        if (this.f43604a == null) {
            this.f43604a = new ViewComponentManager$FragmentContextWrapper(AbstractC15333d.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18917PA() {
        if (!this.f43607d) {
            this.f43607d = true;
            ((AbstractC15331b) m18916Yt()).mo11903s1((C15323a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18916Yt() {
        if (this.f43605b == null) {
            synchronized (this.f43606c) {
                if (this.f43605b == null) {
                    this.f43605b = new f(this);
                }
            }
        }
        return this.f43605b.Yt();
    }

    public Context getContext() {
        if (AbstractC15333d.super.getContext() == null && this.f43604a == null) {
            return null;
        }
        m18918OA();
        return this.f43604a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15333d.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15333d.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f43604a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18918OA();
        m18917PA();
    }

    public void onAttach(Context context) {
        AbstractC15333d.super.onAttach(context);
        m18918OA();
        m18917PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15333d.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
