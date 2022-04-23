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
import com.squareup.picasso.C0258w;
import com.squareup.picasso.Picasso;
import com.squareup.picasso.v;
import java.util.concurrent.atomic.AtomicInteger;
/* renamed from: com.squareup.picasso.x */
/* loaded from: classes2-dex2jar.jar:com/squareup/picasso/x.class */
public class C0261x {

    /* renamed from: m */
    private static final AtomicInteger f551m = new AtomicInteger();

    /* renamed from: a */
    private final Picasso f552a;

    /* renamed from: b */
    private final C0258w.C0260b f553b;

    /* renamed from: c */
    private boolean f554c;

    /* renamed from: d */
    private boolean f555d;

    /* renamed from: e */
    private boolean f556e = true;

    /* renamed from: f */
    private int f557f;

    /* renamed from: g */
    private int f558g;

    /* renamed from: h */
    private int f559h;

    /* renamed from: i */
    private int f560i;

    /* renamed from: j */
    private Drawable f561j;

    /* renamed from: k */
    private Drawable f562k;

    /* renamed from: l */
    private Object f563l;

    /* JADX INFO: Access modifiers changed from: package-private */
    public C0261x(Picasso picasso, Uri uri, int i) {
        if (!picasso.shutdown) {
            this.f552a = picasso;
            this.f553b = new C0258w.C0260b(uri, i, picasso.defaultBitmapConfig);
            return;
        }
        throw new IllegalStateException("Picasso instance already shut down. Cannot submit new requests.");
    }

    /* renamed from: c */
    private C0258w m635c(long j) {
        int andIncrement = f551m.getAndIncrement();
        C0258w a = this.f553b.m643a();
        a.f514a = andIncrement;
        a.f515b = j;
        boolean z = this.f552a.loggingEnabled;
        if (z) {
            C0240f0.m695t("Main", "created", a.m644g(), a.toString());
        }
        C0258w transformRequest = this.f552a.transformRequest(a);
        if (transformRequest != a) {
            transformRequest.f514a = andIncrement;
            transformRequest.f515b = j;
            if (z) {
                String d = transformRequest.m647d();
                C0240f0.m695t("Main", "changed", d, "into " + transformRequest);
            }
        }
        return transformRequest;
    }

    /* renamed from: e */
    private Drawable m633e() {
        int i = this.f557f;
        if (i == 0) {
            return this.f561j;
        }
        int i2 = Build.VERSION.SDK_INT;
        if (i2 >= 21) {
            return this.f552a.context.getDrawable(i);
        }
        if (i2 >= 16) {
            return this.f552a.context.getResources().getDrawable(this.f557f);
        }
        TypedValue typedValue = new TypedValue();
        this.f552a.context.getResources().getValue(this.f557f, typedValue, true);
        return this.f552a.context.getResources().getDrawable(typedValue.resourceId);
    }

    /* renamed from: o */
    private void m623o(v vVar) {
        Bitmap quickMemoryCacheCheck;
        if (!EnumC0253p.shouldReadFromMemoryCache(this.f559h) || (quickMemoryCacheCheck = this.f552a.quickMemoryCacheCheck(vVar.m772d())) == null) {
            int i = this.f557f;
            if (i != 0) {
                vVar.o(i);
            }
            this.f552a.enqueueAndSubmit(vVar);
            return;
        }
        vVar.b(quickMemoryCacheCheck, Picasso.EnumC0221e.MEMORY);
    }

    /* renamed from: a */
    public C0261x m637a() {
        this.f553b.m642b(17);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: b */
    public C0261x m636b() {
        this.f563l = null;
        return this;
    }

    /* renamed from: d */
    public C0261x m634d() {
        this.f555d = true;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: f */
    public Object m632f() {
        return this.f563l;
    }

    /* renamed from: g */
    public void m631g(ImageView imageView) {
        m630h(imageView, null);
    }

    /* renamed from: h */
    public void m630h(ImageView imageView, AbstractC0238e eVar) {
        Bitmap quickMemoryCacheCheck;
        long nanoTime = System.nanoTime();
        C0240f0.m712c();
        if (imageView == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.f553b.m641c()) {
            this.f552a.cancelRequest(imageView);
            if (this.f556e) {
                C0255t.m654d(imageView, m633e());
            }
        } else {
            if (this.f555d) {
                if (!this.f553b.m640d()) {
                    int width = imageView.getWidth();
                    int height = imageView.getHeight();
                    if (width == 0 || height == 0) {
                        if (this.f556e) {
                            C0255t.m654d(imageView, m633e());
                        }
                        this.f552a.defer(imageView, new ViewTreeObserver$OnPreDrawListenerC0244h(this, imageView, eVar));
                        return;
                    }
                    this.f553b.m639e(width, height);
                } else {
                    throw new IllegalStateException("Fit cannot be used with resize.");
                }
            }
            C0258w c = m635c(nanoTime);
            String f = C0240f0.m709f(c);
            if (!EnumC0253p.shouldReadFromMemoryCache(this.f559h) || (quickMemoryCacheCheck = this.f552a.quickMemoryCacheCheck(f)) == null) {
                if (this.f556e) {
                    C0255t.m654d(imageView, m633e());
                }
                this.f552a.enqueueAndSubmit(new l(this.f552a, imageView, c, this.f559h, this.f560i, this.f558g, this.f562k, f, this.f563l, eVar, this.f554c));
                return;
            }
            this.f552a.cancelRequest(imageView);
            Picasso picasso = this.f552a;
            Context context = picasso.context;
            Picasso.EnumC0221e eVar2 = Picasso.EnumC0221e.MEMORY;
            C0255t.m655c(imageView, context, quickMemoryCacheCheck, eVar2, this.f554c, picasso.indicatorsEnabled);
            if (this.f552a.loggingEnabled) {
                String g = c.m644g();
                C0240f0.m695t("Main", "completed", g, "from " + eVar2);
            }
            if (eVar != null) {
                eVar.onSuccess();
            }
        }
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
    public void m627k(RemoteViews remoteViews, int i, int i2, Notification notification, String str, AbstractC0238e eVar) {
        long nanoTime = System.nanoTime();
        if (remoteViews == null) {
            throw new IllegalArgumentException("RemoteViews must not be null.");
        } else if (notification == null) {
            throw new IllegalArgumentException("Notification must not be null.");
        } else if (this.f555d) {
            throw new IllegalStateException("Fit cannot be used with RemoteViews.");
        } else if (this.f561j == null && this.f557f == 0 && this.f562k == null) {
            C0258w c = m635c(nanoTime);
            m623o(new v.a(this.f552a, c, remoteViews, i, i2, notification, str, this.f559h, this.f560i, C0240f0.m708g(c, new StringBuilder()), this.f563l, this.f558g, eVar));
        } else {
            throw new IllegalArgumentException("Cannot use placeholder or error drawables with remote views.");
        }
    }

    /* renamed from: l */
    public void m626l(AbstractC0236c0 c0Var) {
        Bitmap quickMemoryCacheCheck;
        long nanoTime = System.nanoTime();
        C0240f0.m712c();
        if (c0Var == null) {
            throw new IllegalArgumentException("Target must not be null.");
        } else if (!this.f555d) {
            Drawable drawable = null;
            Drawable drawable2 = null;
            if (!this.f553b.m641c()) {
                this.f552a.cancelRequest(c0Var);
                if (this.f556e) {
                    drawable2 = m633e();
                }
                c0Var.onPrepareLoad(drawable2);
                return;
            }
            C0258w c = m635c(nanoTime);
            String f = C0240f0.m709f(c);
            if (!EnumC0253p.shouldReadFromMemoryCache(this.f559h) || (quickMemoryCacheCheck = this.f552a.quickMemoryCacheCheck(f)) == null) {
                if (this.f556e) {
                    drawable = m633e();
                }
                c0Var.onPrepareLoad(drawable);
                this.f552a.enqueueAndSubmit(new d0(this.f552a, c0Var, c, this.f559h, this.f560i, this.f562k, f, this.f563l, this.f558g));
                return;
            }
            this.f552a.cancelRequest(c0Var);
            c0Var.m719b(quickMemoryCacheCheck, Picasso.EnumC0221e.MEMORY);
        } else {
            throw new IllegalStateException("Fit cannot be used with a Target.");
        }
    }

    /* renamed from: m */
    public C0261x m625m() {
        this.f554c = true;
        return this;
    }

    /* renamed from: n */
    public C0261x m624n() {
        if (this.f557f != 0) {
            throw new IllegalStateException("Placeholder resource already set.");
        } else if (this.f561j == null) {
            this.f556e = false;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    /* renamed from: p */
    public C0261x m622p(int i) {
        if (!this.f556e) {
            throw new IllegalStateException("Already explicitly declared as no placeholder.");
        } else if (i == 0) {
            throw new IllegalArgumentException("Placeholder image resource invalid.");
        } else if (this.f561j == null) {
            this.f557f = i;
            return this;
        } else {
            throw new IllegalStateException("Placeholder image already set.");
        }
    }

    /* renamed from: q */
    public C0261x m621q(int i, int i2) {
        this.f553b.m639e(i, i2);
        return this;
    }

    /* renamed from: r */
    public C0261x m620r(Object obj) {
        if (obj == null) {
            throw new IllegalArgumentException("Tag invalid.");
        } else if (this.f563l == null) {
            this.f563l = obj;
            return this;
        } else {
            throw new IllegalStateException("Tag already set.");
        }
    }

    /* renamed from: s */
    public C0261x m619s(AbstractC0239e0 e0Var) {
        this.f553b.m638f(e0Var);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: t */
    public C0261x m618t() {
        this.f555d = false;
        return this;
    }
}
