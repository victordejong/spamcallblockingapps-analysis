package com.inmobi.ads;

import android.content.Context;
import android.view.View;
import android.view.ViewGroup;
import com.inmobi.rendering.RenderView;
import java.lang.ref.WeakReference;
/* renamed from: com.inmobi.ads.cb */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/cb.class */
public abstract class AbstractC8213cb {

    /* renamed from: a */
    public AdContainer f32074a;

    /* renamed from: b */
    public AbstractC8214a f32075b;

    /* renamed from: c */
    public WeakReference<View> f32076c;

    /* renamed from: com.inmobi.ads.cb$a */
    /* loaded from: classes2-dex2jar.jar:com/inmobi/ads/cb$a.class */
    public static abstract class AbstractC8214a {

        /* renamed from: a */
        public boolean f32077a;

        /* renamed from: a */
        public abstract View mo6181a(View view, ViewGroup viewGroup, boolean z, RenderView renderView);

        /* renamed from: a */
        public void mo6182a() {
            if (!this.f32077a) {
                this.f32077a = true;
            }
        }

        /* renamed from: b */
        public boolean mo6180b() {
            return this.f32077a;
        }
    }

    public AbstractC8213cb() {
    }

    public AbstractC8213cb(AdContainer adContainer) {
        this.f32074a = adContainer;
    }

    /* renamed from: a */
    public View mo5945a() {
        return null;
    }

    /* renamed from: a */
    public abstract View mo5941a(View view, ViewGroup viewGroup, boolean z);

    /* renamed from: a */
    public abstract void mo5944a(int i);

    /* renamed from: a */
    public abstract void mo5943a(Context context, int i);

    /* renamed from: a */
    public final void m6183a(View view) {
        this.f32076c = new WeakReference<>(view);
    }

    /* renamed from: a */
    public abstract void mo5937a(View... viewArr);

    /* renamed from: b */
    public View mo5936b() {
        WeakReference<View> weakReference = this.f32076c;
        if (weakReference == null) {
            return null;
        }
        return weakReference.get();
    }

    /* renamed from: c */
    public C8197c mo5935c() {
        return new C8197c();
    }

    /* renamed from: d */
    public abstract void mo5934d();

    /* renamed from: e */
    public void mo5933e() {
        WeakReference<View> weakReference = this.f32076c;
        if (weakReference != null) {
            weakReference.clear();
        }
    }

    /* renamed from: f */
    public AbstractC8214a mo5932f() {
        return this.f32075b;
    }
}
