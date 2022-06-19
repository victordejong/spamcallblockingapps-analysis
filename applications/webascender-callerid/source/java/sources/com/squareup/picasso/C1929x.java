package com.squareup.picasso;

import android.app.Notification;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.util.TypedValue;
import android.widget.ImageView;
import android.widget.RemoteViews;
import com.squareup.picasso.C1926w;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.v;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.squareup.picasso.x */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/x.class */
public class C1929x {

    /* renamed from: m */
    private static final AtomicInteger f5230m = new AtomicInteger();

    /* renamed from: a */
    private final Picasso f5231a;

    /* renamed from: b */
    private final C1926w.C1928b f5232b;

    /* renamed from: c */
    private boolean f5233c;

    /* renamed from: d */
    private boolean f5234d;

    /* renamed from: e */
    private boolean f5235e = true;

    /* renamed from: f */
    private int f5236f;

    /* renamed from: g */
    private int f5237g;

    /* renamed from: h */
    private int f5238h;

    /* renamed from: i */
    private int f5239i;

    /* renamed from: j */
    private Drawable f5240j;

    /* renamed from: k */
    private Drawable f5241k;

    /* renamed from: l */
    private Object f5242l;

    public C1929x(Picasso picasso, Uri uri, int i) {
        if (!picasso.shutdown) {
            this.f5231a = picasso;
            this.f5232b = new C1926w.C1928b(uri, i, picasso.defaultBitmapConfig);
            return;
        }
        throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }

    /* renamed from: c */
    private C1926w m635c(long j) {
        int andIncrement = f5230m.getAndIncrement();
        C1926w m643a = this.f5232b.m643a();
        m643a.f5193a = andIncrement;
        m643a.f5194b = j;
        boolean z = this.f5231a.loggingEnabled;
        if (z) {
            C1908f0.m695t("Main", "created", m643a.m644g(), m643a.toString());
        }
        C1926w transformRequest = this.f5231a.transformRequest(m643a);
        if (transformRequest != m643a) {
            transformRequest.f5193a = andIncrement;
            transformRequest.f5194b = j;
            if (z) {
                String m647d = transformRequest.m647d();
                C1908f0.m695t("Main", "changed", m647d, "into " + transformRequest);
            }
        }
        return transformRequest;
    }

    /* renamed from: e */
    private Drawable m633e() {
        int i = this.f5236f;
        if (i != 0) {
            int i2 = Build.VERSION.SDK_INT;
            if (i2 >= 21) {
                return this.f5231a.context.getDrawable(i);
            }
            if (i2 >= 16) {
                return this.f5231a.context.getResources().getDrawable(this.f5236f);
            }
            TypedValue typedValue = new TypedValue();
            this.f5231a.context.getResources().getValue(this.f5236f, typedValue, true);
            return this.f5231a.context.getResources().getDrawable(typedValue.resourceId);
        }
        return this.f5240j;
    }

    /* renamed from: o */
    private void m623o(v vVar) {
        Bitmap quickMemoryCacheCheck;
        if (EnumC1921p.shouldReadFromMemoryCache(this.f5238h) && (quickMemoryCacheCheck = this.f5231a.quickMemoryCacheCheck(vVar.m772d())) != null) {
            vVar.b(quickMemoryCacheCheck, Picasso.EnumC1889e.MEMORY);
            return;
        }
        int i = this.f5236f;
        if (i != 0) {
            vVar.o(i);
        }
        this.f5231a.enqueueAndSubmit(vVar);
    }

    /* renamed from: a */
    public C1929x m637a() {
        this.f5232b.m642b(17);
        return this;
    }

    /* renamed from: b */
    public C1929x m636b() {
        this.f5242l = null;
        return this;
    }

    /* renamed from: d */
    public C1929x m634d() {
        this.f5234d = true;
        return this;
    }

    /* renamed from: f */
    public Object m632f() {
        return this.f5242l;
    }

    /* renamed from: g */
    public void m631g(ImageView imageView) {
        m630h(imageView, null);
    }

    /* renamed from: h */
    public void m630h(ImageView imageView, AbstractC1906e abstractC1906e) {
        Bitmap quickMemoryCacheCheck;
        long nanoTime = System.nanoTime();
        C1908f0.m712c();
        if (imageView != null) {
            if (!this.f5232b.m641c()) {
                this.f5231a.cancelRequest(imageView);
                if (!this.f5235e) {
                    return;
                }
                C1923t.m654d(imageView, m633e());
                return;
            }
            if (this.f5234d) {
                if (this.f5232b.m640d()) {
                    throw new IllegalStateException("Fit cannot be used with resize.");
                }
                int width = imageView.getWidth();
                int height = imageView.getHeight();
                if (width == 0 || height == 0) {
                    if (this.f5235e) {
                        C1923t.m654d(imageView, m633e());
                    }
                    this.f5231a.defer(imageView, new ViewTreeObserver$OnPreDrawListenerC1912h(this, imageView, abstractC1906e));
                    return;
                }
                this.f5232b.m639e(width, height);
            }
            C1926w m635c = m635c(nanoTime);
            String m709f = C1908f0.m709f(m635c);
            if (!EnumC1921p.shouldReadFromMemoryCache(this.f5238h) || (quickMemoryCacheCheck = this.f5231a.quickMemoryCacheCheck(m709f)) == null) {
                if (this.f5235e) {
                    C1923t.m654d(imageView, m633e());
                }
                this.f5231a.enqueueAndSubmit(new l(this.f5231a, imageView, m635c, this.f5238h, this.f5239i, this.f5237g, this.f5241k, m709f, this.f5242l, abstractC1906e, this.f5233c));
                return;
            }
            this.f5231a.cancelRequest(imageView);
            Picasso picasso = this.f5231a;
            Context context = picasso.context;
            Picasso.EnumC1889e enumC1889e = Picasso.EnumC1889e.MEMORY;
            C1923t.m655c(imageView, context, quickMemoryCacheCheck, enumC1889e, this.f5233c, picasso.indicatorsEnabled);
            if (this.f5231a.loggingEnabled) {
                String m644g = m635c.m644g();
                C1908f0.m695t("Main", "completed", m644g, "from " + enumC1889e);
            }
            if (abstractC1906e == null) {
                return;
            }
            abstractC1906e.onSuccess();
            return;
        }
        throw new IllegalArgumentException("Target must not be null.");
    }

    /* renamed from: i */
    public void m629i(RemoteViews remoteViews, int i, int i2, Notification notification) {
        m628j(remoteViews, i, i2, notification, null);
    }

    /* renamed from: j */
    public void m628j(RemoteViews remoteViews, int i, int i2, Notification notification, String str) {
        m627k(remoteViews, i, i2, notification, str, null);
    }

    /* renamed from: k */
    public void m627k(RemoteViews remoteViews, int i, int i2, Notification notification, String str, AbstractC1906e abstractC1906e) {
        long nanoTime = System.nanoTime();
        if (remoteViews != null) {
            if (notification == null) {
                throw new IllegalArgumentException("Notification must not be null.");
            }
            if (this.f5234d) {
                throw new IllegalStateException("Fit cannot be used with RemoteViews.");
            }
            if (this.f5240j != null || this.f5236f != 0 || this.f5241k != null) {
                throw new IllegalArgumentException("Cannot use placeholder or error drawables with remote views.");
            }
            C1926w m635c = m635c(nanoTime);
            m623o(new v.a(this.f5231a, m635c, remoteViews, i, i2, notification, str, this.f5238h, this.f5239i, C1908f0.m708g(m635c, new StringBuilder()), this.f5242l, this.f5237g, abstractC1906e));
            return;
        }
        throw new IllegalArgumentException("RemoteViews must not be null.");
    }

    /* renamed from: l */
    public void m626l(AbstractC1904c0 abstractC1904c0) {
        Bitmap quickMemoryCacheCheck;
        long nanoTime = System.nanoTime();
        C1908f0.m712c();
        if (abstractC1904c0 != null) {
            if (this.f5234d) {
                throw new IllegalStateException("Fit cannot be used with a Target.");
            }
            Drawable drawable = null;
            if (!this.f5232b.m641c()) {
                this.f5231a.cancelRequest(abstractC1904c0);
                Drawable drawable2 = null;
                if (this.f5235e) {
                    drawable2 = m633e();
                }
                abstractC1904c0.onPrepareLoad(drawable2);
                return;
            }
            C1926w m635c = m635c(nanoTime);
            String m709f = C1908f0.m709f(m635c);
            if (EnumC1921p.shouldReadFromMemoryCache(this.f5238h) && (quickMemoryCacheCheck = this.f5231a.quickMemoryCacheCheck(m709f)) != null) {
                this.f5231a.cancelRequest(abstractC1904c0);
                abstractC1904c0.m719b(quickMemoryCacheCheck, Picasso.EnumC1889e.MEMORY);
                return;
            }
            if (this.f5235e) {
                drawable = m633e();
            }
            abstractC1904c0.onPrepareLoad(drawable);
            this.f5231a.enqueueAndSubmit(new d0(this.f5231a, abstractC1904c0, m635c, this.f5238h, this.f5239i, this.f5241k, m709f, this.f5242l, this.f5237g));
            return;
        }
        throw new IllegalArgumentException("Target must not be null.");
    }

    /* renamed from: m */
    public C1929x m625m() {
        this.f5233c = true;
        return this;
    }

    /* renamed from: n */
    public C1929x m624n() {
        if (this.f5236f == 0) {
            if (this.f5240j != null) {
                throw new IllegalStateException("Placeholder image already set.");
            }
            this.f5235e = false;
            return this;
        }
        throw new IllegalStateException("Placeholder resource already set.");
    }

    /* renamed from: p */
    public C1929x m622p(int i) {
        if (this.f5235e) {
            if (i == 0) {
                throw new IllegalArgumentException("Placeholder image resource invalid.");
            }
            if (this.f5240j != null) {
                throw new IllegalStateException("Placeholder image already set.");
            }
            this.f5236f = i;
            return this;
        }
        throw new IllegalStateException("Already explicitly declared as no placeholder.");
    }

    /* renamed from: q */
    public C1929x m621q(int i, int i2) {
        this.f5232b.m639e(i, i2);
        return this;
    }

    /* renamed from: r */
    public C1929x m620r(Object obj) {
        if (obj != null) {
            if (this.f5242l != null) {
                throw new IllegalStateException("Tag already set.");
            }
            this.f5242l = obj;
            return this;
        }
        throw new IllegalArgumentException("Tag invalid.");
    }

    /* renamed from: s */
    public C1929x m619s(AbstractC1907e0 abstractC1907e0) {
        this.f5232b.m638f(abstractC1907e0);
        return this;
    }

    /* renamed from: t */
    public C1929x m618t() {
        this.f5234d = false;
        return this;
    }
}
