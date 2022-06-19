package p193e.p194a.p717f.p718a.p719a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import o3.b.a.c.c.f;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
import p193e.p194a.p717f.p718a.AbstractC13634c;
import p193e.p194a.p717f.p718a.AbstractC13637d;
/* renamed from: e.a.f.a.a.b */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/a/b.class */
public abstract class AbstractC13523b<T extends AbstractC13637d<?>> extends AbstractC13634c<T> implements Object {

    /* renamed from: b */
    public ContextWrapper f39209b;

    /* renamed from: c */
    public volatile f f39210c;

    /* renamed from: d */
    public final Object f39211d = new Object();

    /* renamed from: e */
    public boolean f39212e = false;

    /* renamed from: Yt */
    public final Object m21711Yt() {
        if (this.f39210c == null) {
            synchronized (this.f39211d) {
                if (this.f39210c == null) {
                    this.f39210c = new f(this);
                }
            }
        }
        return this.f39210c.Yt();
    }

    /* renamed from: fB */
    public final void m21710fB() {
        if (this.f39209b == null) {
            this.f39209b = new ViewComponentManager$FragmentContextWrapper(AbstractC13523b.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: gB */
    public void m21709gB() {
        if (!this.f39212e) {
            this.f39212e = true;
            ((AbstractC13526e) m21711Yt()).mo11982O((C13519a) this);
        }
    }

    public Context getContext() {
        if (AbstractC13523b.super.getContext() == null && this.f39209b == null) {
            return null;
        }
        m21710fB();
        return this.f39209b;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13523b.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13523b.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39209b;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21710fB();
        m21709gB();
    }

    public void onAttach(Context context) {
        AbstractC13523b.super.onAttach(context);
        m21710fB();
        m21709gB();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13523b.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
