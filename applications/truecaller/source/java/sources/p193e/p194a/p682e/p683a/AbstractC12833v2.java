package p193e.p194a.p682e.p683a;

import android.app.Activity;
import android.content.Context;
import android.content.ContextWrapper;
import android.os.Bundle;
import android.view.LayoutInflater;
import androidx.fragment.app.Fragment;
import dagger.hilt.android.internal.managers.ViewComponentManager$FragmentContextWrapper;
import n3.b.a.q;
import o3.b.a.c.c.f;
import o3.b.b.b;
import p1727n3.p1868v.C26986a1;
import p193e.p1681q.p1701f.p1702a.p1704d.C25225a;
/* renamed from: e.a.e.a.v2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/v2.class */
public abstract class AbstractC12833v2 extends q implements b {

    /* renamed from: a */
    public ContextWrapper f37324a;

    /* renamed from: b */
    public volatile f f37325b;

    /* renamed from: c */
    public final Object f37326c = new Object();

    /* renamed from: d */
    public boolean f37327d = false;

    /* renamed from: OA */
    public final void m22628OA() {
        if (this.f37324a == null) {
            this.f37324a = new ViewComponentManager$FragmentContextWrapper(AbstractC12833v2.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m22627PA() {
        if (!this.f37327d) {
            this.f37327d = true;
            ((AbstractC12804q3) m22626Yt()).mo11931j0((C12798p3) this);
        }
    }

    /* renamed from: Yt */
    public final Object m22626Yt() {
        if (this.f37325b == null) {
            synchronized (this.f37326c) {
                if (this.f37325b == null) {
                    this.f37325b = new f(this);
                }
            }
        }
        return this.f37325b.Yt();
    }

    public Context getContext() {
        if (AbstractC12833v2.super.getContext() == null && this.f37324a == null) {
            return null;
        }
        m22628OA();
        return this.f37324a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC12833v2.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC12833v2.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f37324a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m22628OA();
        m22627PA();
    }

    public void onAttach(Context context) {
        AbstractC12833v2.super.onAttach(context);
        m22628OA();
        m22627PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC12833v2.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
