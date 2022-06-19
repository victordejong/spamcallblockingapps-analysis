package p193e.p194a.p918j.p919a.p925b;

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
/* renamed from: e.a.j.a.b.c */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/b/c.class */
public abstract class AbstractC15391c extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f43701a;

    /* renamed from: b */
    public volatile f f43702b;

    /* renamed from: c */
    public final Object f43703c = new Object();

    /* renamed from: d */
    public boolean f43704d = false;

    /* renamed from: OA */
    public final void m18865OA() {
        if (this.f43701a == null) {
            this.f43701a = new ViewComponentManager$FragmentContextWrapper(AbstractC15391c.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18864PA() {
        if (!this.f43704d) {
            this.f43704d = true;
            ((AbstractC15390b) m18863Yt()).mo12014D((C15383a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18863Yt() {
        if (this.f43702b == null) {
            synchronized (this.f43703c) {
                if (this.f43702b == null) {
                    this.f43702b = new f(this);
                }
            }
        }
        return this.f43702b.Yt();
    }

    public Context getContext() {
        if (AbstractC15391c.super.getContext() == null && this.f43701a == null) {
            return null;
        }
        m18865OA();
        return this.f43701a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15391c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15391c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f43701a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18865OA();
        m18864PA();
    }

    public void onAttach(Context context) {
        AbstractC15391c.super.onAttach(context);
        m18865OA();
        m18864PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15391c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
