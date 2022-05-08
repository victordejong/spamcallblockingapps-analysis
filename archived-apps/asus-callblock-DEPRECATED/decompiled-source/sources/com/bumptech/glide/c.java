package com.bumptech.glide;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.widget.ImageView;
import com.bumptech.glide.d.g;
import com.bumptech.glide.d.m;
import com.bumptech.glide.f.a;
import com.bumptech.glide.f.f;
import com.bumptech.glide.g.a.e;
import com.bumptech.glide.g.b.j;
import com.bumptech.glide.g.b.k;
import com.bumptech.glide.g.d;
import com.bumptech.glide.i.h;
import com.bumptech.glide.load.b.b;
/* loaded from: classes-dex2jar.jar:com/bumptech/glide/c.class */
public class c<ModelType, DataType, ResourceType, TranscodeType> implements Cloneable {
    private boolean A;
    private Drawable B;
    private int C;

    /* renamed from: a  reason: collision with root package name */
    protected final Class<ModelType> f3380a;

    /* renamed from: b  reason: collision with root package name */
    protected final Context f3381b;
    protected final e c;
    protected final Class<TranscodeType> d;
    protected final m e;
    protected final g f;
    private a<ModelType, DataType, ResourceType, TranscodeType> h;
    private ModelType i;
    private boolean k;
    private int l;
    private int m;
    private d<? super ModelType, TranscodeType> n;
    private Float o;
    private c<?, ?, ?, TranscodeType> p;
    private Drawable r;
    private Drawable s;
    private boolean z;
    private com.bumptech.glide.load.c j = com.bumptech.glide.h.a.a();
    private Float q = Float.valueOf(1.0f);
    private int t = 0;
    private boolean u = true;
    com.bumptech.glide.g.a.d<TranscodeType> g = e.a();
    private int v = -1;
    private int w = -1;
    private b x = b.RESULT;
    private com.bumptech.glide.load.g<ResourceType> y = com.bumptech.glide.load.resource.d.b();

    /* renamed from: com.bumptech.glide.c$1  reason: invalid class name */
    /* loaded from: classes-dex2jar.jar:com/bumptech/glide/c$1.class */
    static final /* synthetic */ class AnonymousClass1 {

        /* renamed from: a  reason: collision with root package name */
        static final /* synthetic */ int[] f3382a = new int[ImageView.ScaleType.values().length];

        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:12:0x003a -> B:19:0x002a). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:13:0x003e -> B:17:0x001f). Please submit an issue!!! */
        /* JADX WARN: Unsupported multi-entry loop pattern (BACK_EDGE: B:14:0x0042 -> B:15:0x0014). Please submit an issue!!! */
        static {
            try {
                f3382a[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                f3382a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                f3382a[ImageView.ScaleType.FIT_START.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
            try {
                f3382a[ImageView.ScaleType.FIT_END.ordinal()] = 4;
            } catch (NoSuchFieldError e4) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(Context context, Class<ModelType> cls, f<ModelType, DataType, ResourceType, TranscodeType> fVar, Class<TranscodeType> cls2, e eVar, m mVar, g gVar) {
        this.f3381b = context;
        this.f3380a = cls;
        this.d = cls2;
        this.c = eVar;
        this.e = mVar;
        this.f = gVar;
        this.h = fVar != null ? new a<>(fVar) : null;
        if (context == null) {
            throw new NullPointerException("Context can't be null");
        } else if (cls != null && fVar == null) {
            throw new NullPointerException("LoadProvider must not be null");
        }
    }

    private com.bumptech.glide.g.b a(j<TranscodeType> jVar, float f, int i, com.bumptech.glide.g.c cVar) {
        return com.bumptech.glide.g.a.a(this.h, this.i, this.j, this.f3381b, i, jVar, f, this.r, this.l, this.s, this.m, this.B, this.C, this.n, cVar, this.c.f3404a, this.y, this.d, this.u, this.g, this.w, this.v, this.x);
    }

    private com.bumptech.glide.g.b a(j<TranscodeType> jVar, com.bumptech.glide.g.f fVar) {
        com.bumptech.glide.g.b a2;
        if (this.p != null) {
            if (this.A) {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
            if (this.p.g.equals(e.a())) {
                this.p.g = this.g;
            }
            if (this.p.t == 0) {
                this.p.t = d();
            }
            if (h.a(this.w, this.v) && !h.a(this.p.w, this.p.v)) {
                this.p.a(this.w, this.v);
            }
            com.bumptech.glide.g.f fVar2 = new com.bumptech.glide.g.f(fVar);
            com.bumptech.glide.g.b a3 = a(jVar, this.q.floatValue(), this.t, fVar2);
            this.A = true;
            com.bumptech.glide.g.b a4 = this.p.a(jVar, fVar2);
            this.A = false;
            fVar2.a(a3, a4);
            a2 = fVar2;
        } else if (this.o != null) {
            com.bumptech.glide.g.f fVar3 = new com.bumptech.glide.g.f(fVar);
            fVar3.a(a(jVar, this.q.floatValue(), this.t, fVar3), a(jVar, this.o.floatValue(), d(), fVar3));
            a2 = fVar3;
        } else {
            a2 = a(jVar, this.q.floatValue(), this.t, fVar);
        }
        return a2;
    }

    private int d() {
        return this.t == g.d ? g.c : this.t == g.c ? g.f3417b : g.f3416a;
    }

    public c<ModelType, DataType, ResourceType, TranscodeType> a(int i, int i2) {
        if (!h.a(i, i2)) {
            throw new IllegalArgumentException("Width and height must be Target#SIZE_ORIGINAL or > 0");
        }
        this.w = i;
        this.v = i2;
        return this;
    }

    public c<ModelType, DataType, ResourceType, TranscodeType> a(b bVar) {
        this.x = bVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c<ModelType, DataType, ResourceType, TranscodeType> a(com.bumptech.glide.load.b<DataType> bVar) {
        if (this.h != null) {
            this.h.f3410b = bVar;
        }
        return this;
    }

    public c<ModelType, DataType, ResourceType, TranscodeType> a(com.bumptech.glide.load.c cVar) {
        if (cVar == null) {
            throw new NullPointerException("Signature must not be null");
        }
        this.j = cVar;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public c<ModelType, DataType, ResourceType, TranscodeType> a(com.bumptech.glide.load.e<DataType, ResourceType> eVar) {
        if (this.h != null) {
            this.h.f3409a = eVar;
        }
        return this;
    }

    public c<ModelType, DataType, ResourceType, TranscodeType> a(boolean z) {
        this.u = !z;
        return this;
    }

    public c<ModelType, DataType, ResourceType, TranscodeType> a(com.bumptech.glide.load.g<ResourceType>... gVarArr) {
        this.z = true;
        if (gVarArr.length == 1) {
            this.y = gVarArr[0];
        } else {
            this.y = new com.bumptech.glide.load.d(gVarArr);
        }
        return this;
    }

    public j<TranscodeType> a(ImageView imageView) {
        k cVar;
        h.a();
        if (imageView == null) {
            throw new IllegalArgumentException("You must pass in a non null View");
        }
        if (!this.z && imageView.getScaleType() != null) {
            switch (AnonymousClass1.f3382a[imageView.getScaleType().ordinal()]) {
                case 1:
                    b();
                    break;
                case 2:
                case 3:
                case 4:
                    a();
                    break;
            }
        }
        Class<TranscodeType> cls = this.d;
        if (com.bumptech.glide.load.resource.a.b.class.isAssignableFrom(cls)) {
            cVar = new com.bumptech.glide.g.b.d(imageView);
        } else if (Bitmap.class.equals(cls)) {
            cVar = new com.bumptech.glide.g.b.b(imageView);
        } else if (Drawable.class.isAssignableFrom(cls)) {
            cVar = new com.bumptech.glide.g.b.c(imageView);
        } else {
            throw new IllegalArgumentException("Unhandled class: " + cls + ", try .as*(Class).transcode(ResourceTranscoder)");
        }
        return a((c<ModelType, DataType, ResourceType, TranscodeType>) cVar);
    }

    public final <Y extends j<TranscodeType>> Y a(Y y) {
        h.a();
        if (!this.k) {
            throw new IllegalArgumentException("You must first set a model (try #load())");
        }
        com.bumptech.glide.g.b request = y.getRequest();
        if (request != null) {
            request.c();
            m mVar = this.e;
            mVar.f3399a.remove(request);
            mVar.f3400b.remove(request);
            request.a();
        }
        if (this.t == 0) {
            this.t = g.c;
        }
        com.bumptech.glide.g.b a2 = a(y, (com.bumptech.glide.g.f) null);
        y.setRequest(a2);
        this.f.a(y);
        m mVar2 = this.e;
        mVar2.f3399a.add(a2);
        if (!mVar2.c) {
            a2.b();
        } else {
            mVar2.f3400b.add(a2);
        }
        return y;
    }

    void a() {
    }

    public c<ModelType, DataType, ResourceType, TranscodeType> b(ModelType modeltype) {
        this.i = modeltype;
        this.k = true;
        return this;
    }

    void b() {
    }

    /* renamed from: c */
    public c<ModelType, DataType, ResourceType, TranscodeType> clone() {
        try {
            c<ModelType, DataType, ResourceType, TranscodeType> cVar = (c) super.clone();
            cVar.h = this.h != null ? this.h.clone() : null;
            return cVar;
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e);
        }
    }

    public c<ModelType, DataType, ResourceType, TranscodeType> c(int i) {
        this.m = i;
        return this;
    }

    public c<ModelType, DataType, ResourceType, TranscodeType> d(int i) {
        this.l = i;
        return this;
    }
}
