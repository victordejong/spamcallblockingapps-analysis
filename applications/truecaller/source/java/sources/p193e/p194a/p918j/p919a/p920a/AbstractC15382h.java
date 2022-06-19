package p193e.p194a.p918j.p919a.p920a;

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
/* renamed from: e.a.j.a.a.h */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/a/h.class */
public abstract class AbstractC15382h extends e implements b {

    /* renamed from: a */
    public ContextWrapper f43687a;

    /* renamed from: b */
    public volatile f f43688b;

    /* renamed from: c */
    public final Object f43689c = new Object();

    /* renamed from: d */
    public boolean f43690d = false;

    /* renamed from: OA */
    public final void m18875OA() {
        if (this.f43687a == null) {
            this.f43687a = new ViewComponentManager$FragmentContextWrapper(AbstractC15382h.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18874PA() {
        if (!this.f43690d) {
            this.f43690d = true;
            ((AbstractC15379e) m18873Yt()).mo12016C0((C15373c) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18873Yt() {
        if (this.f43688b == null) {
            synchronized (this.f43689c) {
                if (this.f43688b == null) {
                    this.f43688b = new f(this);
                }
            }
        }
        return this.f43688b.Yt();
    }

    public Context getContext() {
        if (AbstractC15382h.super.getContext() == null && this.f43687a == null) {
            return null;
        }
        m18875OA();
        return this.f43687a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15382h.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15382h.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f43687a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18875OA();
        m18874PA();
    }

    public void onAttach(Context context) {
        AbstractC15382h.super.onAttach(context);
        m18875OA();
        m18874PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15382h.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
