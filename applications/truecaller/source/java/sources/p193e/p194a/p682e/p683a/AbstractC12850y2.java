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
/* renamed from: e.a.e.a.y2 */
/* loaded from: classes15-dex2jar.jar:e/a/e/a/y2.class */
public abstract class AbstractC12850y2 extends q implements b {

    /* renamed from: a */
    public ContextWrapper f37368a;

    /* renamed from: b */
    public volatile f f37369b;

    /* renamed from: c */
    public final Object f37370c = new Object();

    /* renamed from: d */
    public boolean f37371d = false;

    /* renamed from: OA */
    public final void m22605OA() {
        if (this.f37368a == null) {
            this.f37368a = new ViewComponentManager$FragmentContextWrapper(AbstractC12850y2.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m22604PA() {
        if (!this.f37371d) {
            this.f37371d = true;
            ((AbstractC12732f4) m22603Yt()).mo11967T0((C12707d4) this);
        }
    }

    /* renamed from: Yt */
    public final Object m22603Yt() {
        if (this.f37369b == null) {
            synchronized (this.f37370c) {
                if (this.f37369b == null) {
                    this.f37369b = new f(this);
                }
            }
        }
        return this.f37369b.Yt();
    }

    public Context getContext() {
        if (AbstractC12850y2.super.getContext() == null && this.f37368a == null) {
            return null;
        }
        m22605OA();
        return this.f37368a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC12850y2.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC12850y2.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f37368a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m22605OA();
        m22604PA();
    }

    public void onAttach(Context context) {
        AbstractC12850y2.super.onAttach(context);
        m22605OA();
        m22604PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC12850y2.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
