package p193e.p194a.p947k.p948a.p959g;

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
/* renamed from: e.a.k.a.g.c */
/* loaded from: classes15-dex2jar.jar:e/a/k/a/g/c.class */
public abstract class AbstractC15709c extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f44310a;

    /* renamed from: b */
    public volatile f f44311b;

    /* renamed from: c */
    public final Object f44312c = new Object();

    /* renamed from: d */
    public boolean f44313d = false;

    public AbstractC15709c(int i) {
        super(i);
    }

    /* renamed from: OA */
    public final void m18462OA() {
        if (this.f44310a == null) {
            this.f44310a = new ViewComponentManager$FragmentContextWrapper(AbstractC15709c.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18461PA() {
        if (!this.f44313d) {
            this.f44313d = true;
            ((AbstractC15752t) m18460Yt()).mo11934i0((C15715f) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18460Yt() {
        if (this.f44311b == null) {
            synchronized (this.f44312c) {
                if (this.f44311b == null) {
                    this.f44311b = new f(this);
                }
            }
        }
        return this.f44311b.Yt();
    }

    public Context getContext() {
        if (AbstractC15709c.super.getContext() == null && this.f44310a == null) {
            return null;
        }
        m18462OA();
        return this.f44310a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15709c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15709c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f44310a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18462OA();
        m18461PA();
    }

    public void onAttach(Context context) {
        AbstractC15709c.super.onAttach(context);
        m18462OA();
        m18461PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15709c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
