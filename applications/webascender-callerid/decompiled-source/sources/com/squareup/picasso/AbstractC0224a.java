package com.squareup.picasso;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import com.squareup.picasso.Picasso;
import java.lang.ref.ReferenceQueue;
import java.lang.ref.WeakReference;
/* renamed from: com.squareup.picasso.a */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a.class */
abstract class AbstractC0224a<T> {

    /* renamed from: a */
    final Picasso f394a;

    /* renamed from: b */
    final C0258w f395b;

    /* renamed from: c */
    final WeakReference<T> f396c;

    /* renamed from: d */
    final boolean f397d;

    /* renamed from: e */
    final int f398e;

    /* renamed from: f */
    final int f399f;

    /* renamed from: g */
    final int f400g;

    /* renamed from: h */
    final Drawable f401h;

    /* renamed from: i */
    final String f402i;

    /* renamed from: j */
    final Object f403j;

    /* renamed from: k */
    boolean f404k;

    /* renamed from: l */
    boolean f405l;

    /* renamed from: com.squareup.picasso.a$a */
    /* loaded from: classes2-dex2jar.jar:com/squareup/picasso/a$a.class */
    static class C0225a<M> extends WeakReference<M> {

        /* renamed from: a */
        final AbstractC0224a f406a;

        C0225a(AbstractC0224a aVar, M m, ReferenceQueue<? super M> referenceQueue) {
            super(m, referenceQueue);
            this.f406a = aVar;
        }
    }

    AbstractC0224a(Picasso picasso, T t, C0258w wVar, int i, int i2, int i3, Drawable drawable, String str, Object obj, boolean z) {
        this.f394a = picasso;
        this.f395b = wVar;
        this.f396c = t == null ? null : new C0225a(this, t, picasso.referenceQueue);
        this.f398e = i;
        this.f399f = i2;
        this.f397d = z;
        this.f400g = i3;
        this.f401h = drawable;
        this.f402i = str;
        this.f403j = obj == null ? this : obj;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: a */
    public void m775a() {
        this.f405l = true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public abstract void m774b(Bitmap bitmap, Picasso.EnumC0221e eVar);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public abstract void m773c(Exception exc);

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: d */
    public String m772d() {
        return this.f402i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: e */
    public int m771e() {
        return this.f398e;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public int m770f() {
        return this.f399f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: g */
    public Picasso m769g() {
        return this.f394a;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: h */
    public Picasso.EnumC0222f m768h() {
        return this.f395b.f533t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: i */
    public C0258w m767i() {
        return this.f395b;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: j */
    public Object m766j() {
        return this.f403j;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: k */
    public T m765k() {
        WeakReference<T> weakReference = this.f396c;
        return weakReference == null ? null : weakReference.get();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: l */
    public boolean m764l() {
        return this.f405l;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: m */
    public boolean m763m() {
        return this.f404k;
    }
}
