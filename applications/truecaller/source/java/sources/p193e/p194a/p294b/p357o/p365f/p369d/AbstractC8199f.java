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
/* renamed from: e.a.b.o.f.d.f */
/* loaded from: classes6-dex2jar.jar:e/a/b/o/f/d/f.class */
public abstract class AbstractC8199f extends Fragment implements b {

    /* renamed from: a */
    public ContextWrapper f25341a;

    /* renamed from: b */
    public volatile f f25342b;

    /* renamed from: c */
    public final Object f25343c = new Object();

    /* renamed from: d */
    public boolean f25344d = false;

    /* renamed from: OA */
    public final void m28782OA() {
        if (this.f25341a == null) {
            this.f25341a = new ViewComponentManager$FragmentContextWrapper(AbstractC8199f.super.getContext(), (Fragment) this);
        }
    }

    /* renamed from: PA */
    public void m28781PA() {
        if (!this.f25344d) {
            this.f25344d = true;
            ((AbstractC8197d) m28780Yt()).mo11886z((C8192c) this);
        }
    }

    /* renamed from: Yt */
    public final Object m28780Yt() {
        if (this.f25342b == null) {
            synchronized (this.f25343c) {
                if (this.f25342b == null) {
                    this.f25342b = new f(this);
                }
            }
        }
        return this.f25342b.Yt();
    }

    public Context getContext() {
        if (AbstractC8199f.super.getContext() == null && this.f25341a == null) {
            return null;
        }
        m28782OA();
        return this.f25341a;
    }

    public C26986a1.AbstractC26987b getDefaultViewModelProviderFactory() {
        return C25225a.m3987N0(this, AbstractC8199f.super.getDefaultViewModelProviderFactory());
    }

    public void onAttach(Activity activity) {
        AbstractC8199f.super.onAttach(activity);
        ContextWrapper contextWrapper = this.f25341a;
        C25225a.m3821x(contextWrapper == null || f.b(contextWrapper) == activity, "onAttach called multiple times with different Context! Hilt Fragments should not be retained.", new Object[0]);
        m28782OA();
        m28781PA();
    }

    public void onAttach(Context context) {
        AbstractC8199f.super.onAttach(context);
        m28782OA();
        m28781PA();
    }

    public LayoutInflater onGetLayoutInflater(Bundle bundle) {
        return LayoutInflater.from(new ViewComponentManager$FragmentContextWrapper(AbstractC8199f.super.onGetLayoutInflater(bundle), (Fragment) this));
    }
}
