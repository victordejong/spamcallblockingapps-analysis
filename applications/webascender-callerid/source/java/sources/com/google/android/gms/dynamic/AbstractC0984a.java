package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.google.android.gms.common.e;
import com.google.android.gms.common.internal.C0939u;
import com.google.android.gms.dynamic.AbstractC0987c;
import java.util.LinkedList;
/* renamed from: com.google.android.gms.dynamic.a */
/* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/a.class */
public abstract class AbstractC0984a<T extends AbstractC0987c> {

    /* renamed from: a */
    private T f3620a;

    /* renamed from: b */
    private Bundle f3621b;

    /* renamed from: c */
    private LinkedList<AbstractC0985a> f3622c;

    /* renamed from: d */
    private final AbstractC0988e<T> f3623d = new g(this);

    /* renamed from: com.google.android.gms.dynamic.a$a */
    /* loaded from: classes-dex2jar.jar:com/google/android/gms/dynamic/a$a.class */
    public interface AbstractC0985a {
        /* renamed from: a */
        int m3082a();

        /* renamed from: b */
        void m3081b(AbstractC0987c abstractC0987c);
    }

    /* renamed from: o */
    public static void m3089o(FrameLayout frameLayout) {
        e r = e.r();
        Context context = frameLayout.getContext();
        int i = r.i(context);
        String m3234g = C0939u.m3234g(context, i);
        String m3232i = C0939u.m3232i(context, i);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(m3234g);
        linearLayout.addView(textView);
        Intent d = r.d(context, i, (String) null);
        if (d != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(m3232i);
            linearLayout.addView(button);
            button.setOnClickListener(new View$OnClickListenerC0989k(context, d));
        }
    }

    /* renamed from: s */
    private final void m3085s(int i) {
        while (!this.f3622c.isEmpty() && this.f3622c.getLast().m3082a() >= i) {
            this.f3622c.removeLast();
        }
    }

    /* renamed from: t */
    private final void m3084t(Bundle bundle, AbstractC0985a abstractC0985a) {
        T t = this.f3620a;
        if (t != null) {
            abstractC0985a.m3081b(t);
            return;
        }
        if (this.f3622c == null) {
            this.f3622c = new LinkedList<>();
        }
        this.f3622c.add(abstractC0985a);
        if (bundle != null) {
            Bundle bundle2 = this.f3621b;
            if (bundle2 == null) {
                this.f3621b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        m3103a(this.f3623d);
    }

    /* renamed from: a */
    protected abstract void m3103a(AbstractC0988e<T> abstractC0988e);

    /* renamed from: b */
    public T m3102b() {
        return this.f3620a;
    }

    /* renamed from: c */
    protected void m3101c(FrameLayout frameLayout) {
        m3089o(frameLayout);
    }

    /* renamed from: d */
    public void m3100d(Bundle bundle) {
        m3084t(bundle, new i(this, bundle));
    }

    /* renamed from: e */
    public View m3099e(LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        m3084t(bundle, new h(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.f3620a == null) {
            m3101c(frameLayout);
        }
        return frameLayout;
    }

    /* renamed from: f */
    public void m3098f() {
        T t = this.f3620a;
        if (t != null) {
            t.m3073s();
        } else {
            m3085s(1);
        }
    }

    /* renamed from: g */
    public void m3097g() {
        T t = this.f3620a;
        if (t != null) {
            t.m3080C();
        } else {
            m3085s(2);
        }
    }

    /* renamed from: h */
    public void m3096h(Activity activity, Bundle bundle, Bundle bundle2) {
        m3084t(bundle2, new f(this, activity, bundle, bundle2));
    }

    /* renamed from: i */
    public void m3095i() {
        T t = this.f3620a;
        if (t != null) {
            t.onLowMemory();
        }
    }

    /* renamed from: j */
    public void m3094j() {
        T t = this.f3620a;
        if (t != null) {
            t.onPause();
        } else {
            m3085s(5);
        }
    }

    /* renamed from: k */
    public void m3093k() {
        m3084t(null, new l(this));
    }

    /* renamed from: l */
    public void m3092l(Bundle bundle) {
        T t = this.f3620a;
        if (t != null) {
            t.m3074r(bundle);
            return;
        }
        Bundle bundle2 = this.f3621b;
        if (bundle2 == null) {
            return;
        }
        bundle.putAll(bundle2);
    }

    /* renamed from: m */
    public void m3091m() {
        m3084t(null, new j(this));
    }

    /* renamed from: n */
    public void m3090n() {
        T t = this.f3620a;
        if (t != null) {
            t.m3072x();
        } else {
            m3085s(4);
        }
    }
}
