package p193e.p194a.p717f.p718a.p721b.p724v;

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
/* renamed from: e.a.f.a.b.v.f */
/* loaded from: classes10-dex2jar.jar:e/a/f/a/b/v/f.class */
public abstract class AbstractC13621f extends e implements b {

    /* renamed from: a */
    public ContextWrapper f39473a;

    /* renamed from: b */
    public volatile f f39474b;

    /* renamed from: c */
    public final Object f39475c = new Object();

    /* renamed from: d */
    public boolean f39476d = false;

    /* renamed from: OA */
    public final void m21484OA() {
        if (this.f39473a == null) {
            this.f39473a = new ViewComponentManager$FragmentContextWrapper(AbstractC13621f.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m21483PA() {
        if (!this.f39476d) {
            this.f39476d = true;
            ((AbstractC13614b) m21482Yt()).mo11964W((C13612a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m21482Yt() {
        if (this.f39474b == null) {
            synchronized (this.f39475c) {
                if (this.f39474b == null) {
                    this.f39474b = new f(this);
                }
            }
        }
        return this.f39474b.Yt();
    }

    public Context getContext() {
        if (AbstractC13621f.super.getContext() == null && this.f39473a == null) {
            return null;
        }
        m21484OA();
        return this.f39473a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC13621f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC13621f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f39473a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m21484OA();
        m21483PA();
    }

    public void onAttach(Context context) {
        AbstractC13621f.super.onAttach(context);
        m21484OA();
        m21483PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC13621f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
