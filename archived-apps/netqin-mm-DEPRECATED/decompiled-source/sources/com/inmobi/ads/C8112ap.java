package com.inmobi.ads;

import android.os.Handler;
import android.os.Looper;
import android.util.SparseArray;
import android.view.View;
import android.view.ViewGroup;
import p012b.p014a0.p015a.AbstractC0573a;
/* renamed from: com.inmobi.ads.ap */
/* loaded from: classes2-dex2jar.jar:com/inmobi/ads/ap.class */
public final class C8112ap extends AbstractC0573a implements AbstractC8137ax {

    /* renamed from: a */
    public static final String f31750a = "ap";

    /* renamed from: e */
    public static Handler f31751e = new Handler(Looper.getMainLooper());

    /* renamed from: b */
    public boolean f31752b;

    /* renamed from: c */
    public final C8109ao f31753c;

    /* renamed from: d */
    public C8122au f31754d;

    /* renamed from: f */
    public SparseArray<Runnable> f31755f = new SparseArray<>();

    public C8112ap(C8109ao aoVar, C8122au auVar) {
        this.f31753c = aoVar;
        this.f31754d = auVar;
    }

    @Override // com.inmobi.ads.AbstractC8137ax
    public final void destroy() {
        this.f31752b = true;
        int size = this.f31755f.size();
        for (int i = 0; i < size; i++) {
            f31751e.removeCallbacks(this.f31755f.get(this.f31755f.keyAt(i)));
        }
        this.f31755f.clear();
    }

    @Override // p012b.p014a0.p015a.AbstractC0573a
    public final void destroyItem(ViewGroup viewGroup, int i, final Object obj) {
        viewGroup.removeView((View) obj);
        Runnable runnable = this.f31755f.get(i);
        if (runnable != null) {
            f31751e.removeCallbacks(runnable);
        }
        f31751e.post(new Runnable() { // from class: com.inmobi.ads.ap.1
            @Override // java.lang.Runnable
            public final void run() {
                C8122au auVar = C8112ap.this.f31754d;
                auVar.f31779d.m6304a((View) obj);
            }
        });
    }

    @Override // p012b.p014a0.p015a.AbstractC0573a
    public final int getCount() {
        return this.f31753c.m6417b();
    }

    @Override // p012b.p014a0.p015a.AbstractC0573a
    public final int getItemPosition(Object obj) {
        Object tag = obj == null ? null : ((View) obj).getTag();
        if (tag == null || !(tag instanceof Integer)) {
            return -2;
        }
        return ((Integer) tag).intValue();
    }

    @Override // p012b.p014a0.p015a.AbstractC0573a
    public final Object instantiateItem(final ViewGroup viewGroup, final int i) {
        final C8105am a = this.f31753c.m6436a(i);
        if (a == null) {
            return null;
        }
        final ViewGroup a2 = this.f31754d.m6377a(viewGroup, a);
        int abs = Math.abs(this.f31754d.f31777b - i);
        Runnable runnable = new Runnable() { // from class: com.inmobi.ads.ap.2
            @Override // java.lang.Runnable
            public final void run() {
                if (!C8112ap.this.f31752b) {
                    C8112ap.this.f31755f.remove(i);
                    C8112ap.this.f31754d.m6371b(a2, a);
                }
            }
        };
        this.f31755f.put(i, runnable);
        f31751e.postDelayed(runnable, abs * 50);
        a2.setLayoutParams(C8154bf.m6295a(a, viewGroup));
        a2.setTag(Integer.valueOf(i));
        viewGroup.addView(a2);
        return a2;
    }

    @Override // p012b.p014a0.p015a.AbstractC0573a
    public final boolean isViewFromObject(View view, Object obj) {
        return view.equals(obj);
    }
}
