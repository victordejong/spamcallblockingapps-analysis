package p193e.p194a.p717f.p718a.p721b.p722a;

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
/* renamed from: e.a.f.a.b.a.c */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/a/c.class */
public abstract class AbstractC13559c extends e implements b {

    /* renamed from: a */
    public ContextWrapper f39317a;

    /* renamed from: b */
    public volatile f f39318b;

    /* renamed from: c */
    public final Object f39319c = new Object();

    /* renamed from: d */
    public boolean f39320d = false;

    /* renamed from: OA */
    public final void m21629OA() {
        if (this.f39317a == null) {
            this.f39317a = new ViewComponentManager$FragmentContextWrapper(AbstractC13559c.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m21628PA() {
        if (!this.f39320d) {
            this.f39320d = true;
            ((AbstractC13563e) m21627Yt()).mo11949c1((C13560d) this);
        }
    }

    /* renamed from: Yt */
    public final Object m21627Yt() {
        if (this.f39318b == null) {
            synchronized (this.f39319c) {
                if (this.f39318b == null) {
                    this.f39318b = new f(this);
                }
            }
        }
        return this.f39318b.Yt();
    }

    public Context getContext() {
        if (AbstractC13559c.super.getContext() == null && this.f39317a == null) {
            return null;
        }
        m21629OA();
        return this.f39317a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13559c.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13559c.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39317a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21629OA();
        m21628PA();
    }

    public void onAttach(Context context) {
        AbstractC13559c.super.onAttach(context);
        m21629OA();
        m21628PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13559c.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
