package p193e.p194a.p294b.p357o.p365f.p369d;

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
/* renamed from: e.a.b.o.f.d.e */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/e.class */
public abstract class AbstractC8198e extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f25337a;

    /* renamed from: b */
    public volatile f f25338b;

    /* renamed from: c */
    public final Object f25339c = new Object();

    /* renamed from: d */
    public boolean f25340d = false;

    /* renamed from: OA */
    public final void m28785OA() {
        if (this.f25337a == null) {
            this.f25337a = new ViewComponentManager$FragmentContextWrapper(AbstractC8198e.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m28784PA() {
        if (!this.f25340d) {
            this.f25340d = true;
            ((AbstractC8191b) m28783Yt()).mo11914p((C8186a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m28783Yt() {
        if (this.f25338b == null) {
            synchronized (this.f25339c) {
                if (this.f25338b == null) {
                    this.f25338b = new f(this);
                }
            }
        }
        return this.f25338b.Yt();
    }

    public Context getContext() {
        if (AbstractC8198e.super.getContext() == null && this.f25337a == null) {
            return null;
        }
        m28785OA();
        return this.f25337a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC8198e.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC8198e.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f25337a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m28785OA();
        m28784PA();
    }

    public void onAttach(Context context) {
        AbstractC8198e.super.onAttach(context);
        m28785OA();
        m28784PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC8198e.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
