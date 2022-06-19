package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.squareup.picasso.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a.class */
public abstract class AbstractC1892a<T> {

    /* renamed from: a */
    final Picasso f5073a;

    /* renamed from: b */
    final C1926w f5074b;

    /* renamed from: c */
    final WeakReference<T> f5075c;

    /* renamed from: d */
    final boolean f5076d;

    /* renamed from: e */
    final int f5077e;

    /* renamed from: f */
    final int f5078f;

    /* renamed from: g */
    final int f5079g;

    /* renamed from: h */
    final Drawable f5080h;

    /* renamed from: i */
    final String f5081i;

    /* renamed from: j */
    final Object f5082j;

    /* renamed from: k */
    boolean f5083k;

    /* renamed from: l */
    boolean f5084l;

    /* renamed from: com.squareup.picasso.a$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a$a.class */
    static class C1893a<M> extends WeakReference<M> {

        /* renamed from: a */
        final AbstractC1892a f5085a;

        C1893a(AbstractC1892a abstractC1892a, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f5085a = abstractC1892a;
        }
    }

    AbstractC1892a(Picasso picasso, T t, C1926w c1926w, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.f5073a = picasso;
        this.f5074b = c1926w;
        this.f5075c = t == null ? null : new C1893a(this, t, picasso.referenceQueue);
        this.f5077e = i;
        this.f5078f = i2;
        this.f5076d = z;
        this.f5079g = i3;
        this.f5080h = drawable;
        this.f5081i = str;
        this.f5082j = obj == null ? this : obj;
    }

    /* renamed from: a */
    public void m775a() {
        this.f5084l = true;
    }

    /* renamed from: b */
    public abstract void m774b(Bitmap bitmap, Picasso.EnumC1889e enumC1889e);

    /* renamed from: c */
    public abstract void m773c(Exception exc);

    /* renamed from: d */
    public String m772d() {
        return this.f5081i;
    }

    /* renamed from: e */
    public int m771e() {
        return this.f5077e;
    }

    /* renamed from: f */
    public int m770f() {
        return this.f5078f;
    }

    /* renamed from: g */
    public Picasso m769g() {
        return this.f5073a;
    }

    /* renamed from: h */
    public Picasso.EnumC1890f m768h() {
        return this.f5074b.f5212t;
    }

    /* renamed from: i */
    public C1926w m767i() {
        return this.f5074b;
    }

    /* renamed from: j */
    public Object m766j() {
        return this.f5082j;
    }

    /* renamed from: k */
    public T m765k() {
        WeakReference<T> weakReference = this.f5075c;
        return weakReference == null ? null : weakReference.get();
    }

    /* renamed from: l */
    public boolean m764l() {
        return this.f5084l;
    }

    /* renamed from: m */
    public boolean m763m() {
        return this.f5083k;
    }
}
