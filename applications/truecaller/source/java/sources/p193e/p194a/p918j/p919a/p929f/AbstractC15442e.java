package p193e.p194a.p918j.p919a.p929f;

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
/* renamed from: e.a.j.a.f.e */
/* loaded from: classes14-dex2jar.jar:e/a/j/a/f/e.class */
public abstract class AbstractC15442e extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f43789a;

    /* renamed from: b */
    public volatile f f43790b;

    /* renamed from: c */
    public final Object f43791c = new Object();

    /* renamed from: d */
    public boolean f43792d = false;

    /* renamed from: OA */
    public final void m18808OA() {
        if (this.f43789a == null) {
            this.f43789a = new ViewComponentManager$FragmentContextWrapper(AbstractC15442e.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m18807PA() {
        if (!this.f43792d) {
            this.f43792d = true;
            ((AbstractC15440c) m18806Yt()).mo11994K((C15431a) this);
        }
    }

    /* renamed from: Yt */
    public final Object m18806Yt() {
        if (this.f43790b == null) {
            synchronized (this.f43791c) {
                if (this.f43790b == null) {
                    this.f43790b = new f(this);
                }
            }
        }
        return this.f43790b.Yt();
    }

    public Context getContext() {
        if (AbstractC15442e.super.getContext() == null && this.f43789a == null) {
            return null;
        }
        m18808OA();
        return this.f43789a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC15442e.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC15442e.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f43789a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m18808OA();
        m18807PA();
    }

    public void onAttach(Context context) {
        AbstractC15442e.super.onAttach(context);
        m18808OA();
        m18807PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC15442e.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
