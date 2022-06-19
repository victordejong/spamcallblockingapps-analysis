.class public final Lcom/hiya/client/callerid/dao/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lg/g/a/a/g/b;

.field private final c:Lcom/hiya/client/callerid/dao/a;

.field private final d:Lg/g/b/a/k/a;

.field private final e:Lcom/hiya/client/callerid/dao/t;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lg/g/a/a/g/b;Lcom/hiya/client/callerid/dao/a;Lg/g/b/a/k/a;Lcom/hiya/client/callerid/dao/t;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetDownloadApi"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetCacheHandler"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "assetFileIOHandler"

    invoke-static {p4, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "preloadedAssetMapper"

    invoke-static {p5, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/o;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/o;->b:Lg/g/a/a/g/b;

    iput-object p3, p0, Lcom/hiya/client/callerid/dao/o;->c:Lcom/hiya/client/callerid/dao/a;

    iput-object p4, p0, Lcom/hiya/client/callerid/dao/o;->d:Lg/g/b/a/k/a;

    iput-object p5, p0, Lcom/hiya/client/callerid/dao/o;->e:Lcom/hiya/client/callerid/dao/t;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/dao/o;Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/dao/o;->h(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    return-object p2
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/dao/o;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/dao/o;->j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic c(Lcom/hiya/client/callerid/dao/o;)Lcom/hiya/client/callerid/dao/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/o;->c:Lcom/hiya/client/callerid/dao/a;

    return-object p0
.end method

.method public static final synthetic d(Lcom/hiya/client/callerid/dao/o;)Lg/g/b/a/k/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/o;->d:Lg/g/b/a/k/a;

    return-object p0
.end method

.method public static final synthetic e(Lcom/hiya/client/callerid/dao/o;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/o;->a:Landroid/content/Context;

    return-object p0
.end method

.method public static final synthetic f(Lcom/hiya/client/callerid/dao/o;Lm/x;)J
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/dao/o;->n(Lm/x;)J

    move-result-wide p0

    return-wide p0
.end method

.method public static final synthetic g(Lcom/hiya/client/callerid/dao/o;Ljava/lang/Throwable;)Li/c/b0/b/e0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/dao/o;->o(Ljava/lang/Throwable;)Li/c/b0/b/e0;

    move-result-object p0

    return-object p0
.end method

.method private final h(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/renderscript/RenderScript;->create(Landroid/content/Context;)Landroid/renderscript/RenderScript;

    move-result-object p1

    .line 2
    sget-object v0, Landroid/renderscript/Allocation$MipmapControl;->MIPMAP_NONE:Landroid/renderscript/Allocation$MipmapControl;

    const/4 v1, 0x1

    .line 3
    invoke-static {p1, p2, v0, v1}, Landroid/renderscript/Allocation;->createFromBitmap(Landroid/renderscript/RenderScript;Landroid/graphics/Bitmap;Landroid/renderscript/Allocation$MipmapControl;I)Landroid/renderscript/Allocation;

    move-result-object v0

    const-string v1, "input"

    .line 4
    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/renderscript/Allocation;->getType()Landroid/renderscript/Type;

    move-result-object v1

    invoke-static {p1, v1}, Landroid/renderscript/Allocation;->createTyped(Landroid/renderscript/RenderScript;Landroid/renderscript/Type;)Landroid/renderscript/Allocation;

    move-result-object v1

    .line 5
    invoke-static {p1}, Landroid/renderscript/Element;->U8_4(Landroid/renderscript/RenderScript;)Landroid/renderscript/Element;

    move-result-object v2

    invoke-static {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->create(Landroid/renderscript/RenderScript;Landroid/renderscript/Element;)Landroid/renderscript/ScriptIntrinsicBlur;

    move-result-object p1

    const/high16 v2, 0x41a00000    # 20.0f

    .line 6
    invoke-virtual {p1, v2}, Landroid/renderscript/ScriptIntrinsicBlur;->setRadius(F)V

    .line 7
    invoke-virtual {p1, v0}, Landroid/renderscript/ScriptIntrinsicBlur;->setInput(Landroid/renderscript/Allocation;)V

    .line 8
    invoke-virtual {p1, v1}, Landroid/renderscript/ScriptIntrinsicBlur;->forEach(Landroid/renderscript/Allocation;)V

    .line 9
    invoke-virtual {v1, p2}, Landroid/renderscript/Allocation;->copyTo(Landroid/graphics/Bitmap;)V

    return-object p2
.end method

.method private final i(Ljava/io/File;)Ljava/lang/String;
    .locals 5

    .line 1
    invoke-static {p1}, Lg/g/b/c/c;->e(Ljava/io/File;)Lg/g/b/c/b;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Lg/g/b/c/b;->e()Ljava/lang/Long;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    goto :goto_0

    :cond_0
    const-wide/16 v0, 0x0

    :goto_0
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    cmp-long v4, v0, v2

    if-gez v4, :cond_1

    .line 3
    invoke-virtual {p1}, Lg/g/b/c/b;->d()Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method

.method private final j(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
    .locals 5

    .line 1
    sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    const/4 v1, 0x1

    invoke-virtual {p1, v0, v1}, Landroid/graphics/Bitmap;->copy(Landroid/graphics/Bitmap$Config;Z)Landroid/graphics/Bitmap;

    move-result-object p1

    .line 2
    new-instance v0, Landroid/graphics/Canvas;

    invoke-direct {v0, p1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 3
    new-instance v1, Landroid/graphics/Paint;

    const/high16 v2, -0x1000000

    invoke-direct {v1, v2}, Landroid/graphics/Paint;-><init>(I)V

    .line 4
    new-instance v2, Landroid/graphics/LightingColorFilter;

    const v3, 0x808080

    const/4 v4, 0x0

    invoke-direct {v2, v3, v4}, Landroid/graphics/LightingColorFilter;-><init>(II)V

    .line 5
    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;

    .line 6
    new-instance v2, Landroid/graphics/Matrix;

    invoke-direct {v2}, Landroid/graphics/Matrix;-><init>()V

    invoke-virtual {v0, p1, v2, v1}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V

    const-string v0, "mutable"

    .line 7
    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lg/g/b/c/d;)Li/c/b0/b/e0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/io/File;",
            "Lg/g/b/c/d;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/o;->b:Lg/g/a/a/g/b;

    invoke-interface {v0, p1, p2}, Lg/g/a/a/g/b;->a(Ljava/lang/String;Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/e0;->q(Li/c/b0/b/a0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/client/callerid/dao/o$a;

    invoke-direct {v1, p0}, Lcom/hiya/client/callerid/dao/o$a;-><init>(Lcom/hiya/client/callerid/dao/o;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->x(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object v0

    .line 3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 4
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v1

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object v0

    .line 5
    new-instance v7, Lcom/hiya/client/callerid/dao/o$b;

    move-object v1, v7

    move-object v2, p0

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    move-object v6, p2

    invoke-direct/range {v1 .. v6}, Lcom/hiya/client/callerid/dao/o$b;-><init>(Lcom/hiya/client/callerid/dao/o;Ljava/io/File;Ljava/lang/String;Lg/g/b/c/d;Ljava/lang/String;)V

    invoke-virtual {v0, v7}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "Single.fromObservable(as\u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final l(Ljava/lang/String;Lg/g/b/c/d;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lg/g/b/c/d;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/a;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/o$c;

    invoke-direct {v0, p0, p1, p2}, Lcom/hiya/client/callerid/dao/o$c;-><init>(Lcom/hiya/client/callerid/dao/o;Ljava/lang/String;Lg/g/b/c/d;)V

    invoke-static {v0}, Li/c/b0/b/e0;->p(Ljava/util/concurrent/Callable;)Li/c/b0/b/e0;

    move-result-object p2

    .line 2
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p2, v0}, Li/c/b0/b/e0;->D(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p2

    .line 3
    invoke-static {}, Li/c/b0/j/a;->b()Li/c/b0/b/d0;

    move-result-object v0

    invoke-virtual {p2, v0}, Li/c/b0/b/e0;->u(Li/c/b0/b/d0;)Li/c/b0/b/e0;

    move-result-object p2

    .line 4
    sget-object v0, Lcom/hiya/client/callerid/dao/o$d;->f:Lcom/hiya/client/callerid/dao/o$d;

    invoke-virtual {p2, v0}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p2

    .line 5
    new-instance v0, Lcom/hiya/client/callerid/dao/o$e;

    invoke-direct {v0, p1}, Lcom/hiya/client/callerid/dao/o$e;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Li/c/b0/b/e0;->y(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "Single\n            .from\u2026EMPTY_ASSET\n            }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final n(Lm/x;)J
    .locals 6

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    invoke-static {p1}, Lg/g/b/a/k/i;->b(Lm/x;)J

    move-result-wide v2

    const-wide/16 v4, -0x1

    cmp-long p1, v2, v4

    if-nez p1, :cond_0

    const-wide v2, 0x1cf7c5800L

    :cond_0
    add-long/2addr v0, v2

    return-wide v0
.end method

.method private final o(Ljava/lang/Throwable;)Li/c/b0/b/e0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Throwable;",
            ")",
            "Li/c/b0/b/e0<",
            "Lretrofit2/Response<",
            "Lm/h0;",
            ">;>;"
        }
    .end annotation

    if-eqz p1, :cond_2

    .line 1
    check-cast p1, Lcom/hiya/api/exception/HiyaRetrofitException;

    invoke-virtual {p1}, Lcom/hiya/api/exception/RetrofitException;->b()Lretrofit2/Response;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-virtual {p1}, Lretrofit2/Response;->errorBody()Lm/h0;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Lm/h0;->Companion:Lm/h0$b;

    const/4 v1, 0x0

    const-string v2, ""

    invoke-virtual {v0, v2, v1}, Lm/h0$b;->a(Ljava/lang/String;Lm/a0;)Lm/h0;

    move-result-object v0

    .line 3
    :goto_0
    new-instance v1, Lm/g0$a;

    invoke-direct {v1}, Lm/g0$a;-><init>()V

    .line 4
    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-virtual {v1, p1}, Lm/g0$a;->g(I)Lm/g0$a;

    const-string p1, "Response.error()"

    .line 5
    invoke-virtual {v1, p1}, Lm/g0$a;->m(Ljava/lang/String;)Lm/g0$a;

    .line 6
    sget-object p1, Lm/d0;->HTTP_1_1:Lm/d0;

    invoke-virtual {v1, p1}, Lm/g0$a;->p(Lm/d0;)Lm/g0$a;

    .line 7
    new-instance p1, Lm/e0$a;

    invoke-direct {p1}, Lm/e0$a;-><init>()V

    const-string v2, "http://localhost/"

    invoke-virtual {p1, v2}, Lm/e0$a;->k(Ljava/lang/String;)Lm/e0$a;

    invoke-virtual {p1}, Lm/e0$a;->b()Lm/e0;

    move-result-object p1

    invoke-virtual {v1, p1}, Lm/g0$a;->r(Lm/e0;)Lm/g0$a;

    invoke-virtual {v1}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    .line 8
    invoke-static {v0, p1}, Lretrofit2/Response;->error(Lm/h0;Lm/g0;)Lretrofit2/Response;

    move-result-object p1

    .line 9
    invoke-static {p1}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    const-string v0, "Single.just(\n           \u2026)\n            )\n        )"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 10
    :cond_1
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type retrofit2.Response<kotlin.Any!>"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    new-instance p1, Lkotlin/TypeCastException;

    const-string v0, "null cannot be cast to non-null type com.hiya.api.exception.HiyaRetrofitException"

    invoke-direct {p1, v0}, Lkotlin/TypeCastException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public final m(Ljava/lang/String;Ljava/lang/String;Lg/g/b/c/d;)Li/c/b0/b/e0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Lg/g/b/c/d;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/a;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "packageName"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/o;->d:Lg/g/b/a/k/a;

    invoke-virtual {v0, p1, p3}, Lg/g/b/a/k/a;->a(Ljava/lang/String;Lg/g/b/c/d;)Ljava/io/File;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    :goto_0
    const/4 v3, 0x0

    goto :goto_1

    .line 2
    :cond_0
    invoke-static {v0}, Lg/g/b/c/c;->c(Ljava/io/File;)Lg/g/b/c/a;

    move-result-object v3

    invoke-static {}, Lg/g/b/c/c;->a()Lg/g/b/c/a;

    move-result-object v4

    invoke-static {v3, v4}, Lkotlin/w/c/k;->b(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 3
    invoke-static {}, Lcom/hiya/client/callerid/dao/p;->a()Ljava/lang/String;

    move-result-object v3

    .line 4
    new-instance v4, Lcom/hiya/client/callerid/dao/UnparseableAssetException;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "File cannot be parsed into Asset: url="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v6, " type="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Lcom/hiya/client/callerid/dao/UnparseableAssetException;-><init>(Ljava/lang/String;)V

    .line 5
    invoke-static {v3, v4}, Lcom/hiya/client/support/logging/d;->j(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_1
    const/4 v3, 0x1

    :goto_1
    const-string v4, ""

    if-eqz v0, :cond_5

    if-eqz v3, :cond_5

    .line 6
    invoke-direct {p0, v0}, Lcom/hiya/client/callerid/dao/o;->i(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 7
    invoke-interface {v3}, Ljava/lang/CharSequence;->length()I

    move-result v5

    if-lez v5, :cond_2

    goto :goto_2

    :cond_2
    const/4 v1, 0x0

    :goto_2
    if-eqz v1, :cond_3

    .line 8
    invoke-direct {p0, p1, v3, v0, p3}, Lcom/hiya/client/callerid/dao/o;->k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lg/g/b/c/d;)Li/c/b0/b/e0;

    move-result-object v0

    goto :goto_3

    .line 9
    :cond_3
    sget-object v1, Lg/g/b/c/d;->IMAGE:Lg/g/b/c/d;

    if-ne p3, v1, :cond_4

    .line 10
    sget-object v1, Lg/g/a/e/e/b;->c:Lg/g/a/e/e/b;

    .line 11
    sget-object v2, Lg/g/a/e/e/j;->EVENT_PROFILE:Lg/g/a/e/e/j;

    .line 12
    invoke-virtual {v1, v4, p1, v2}, Lg/g/a/e/e/b;->h(Ljava/lang/String;Ljava/lang/String;Lg/g/a/e/e/j;)V

    .line 13
    :cond_4
    invoke-static {v0}, Lg/g/b/c/c;->c(Ljava/io/File;)Lg/g/b/c/a;

    move-result-object v0

    invoke-static {v0}, Li/c/b0/b/e0;->s(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object v0

    goto :goto_3

    .line 14
    :cond_5
    sget-object v0, Lg/g/b/c/d;->BG_PRELOADED:Lg/g/b/c/d;

    if-ne p3, v0, :cond_6

    .line 15
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/o;->e:Lcom/hiya/client/callerid/dao/t;

    invoke-virtual {v0, p1}, Lcom/hiya/client/callerid/dao/t;->a(Ljava/lang/String;)Ljava/lang/String;

    invoke-direct {p0, p1, p3}, Lcom/hiya/client/callerid/dao/o;->l(Ljava/lang/String;Lg/g/b/c/d;)Li/c/b0/b/e0;

    move-result-object v0

    goto :goto_3

    .line 16
    :cond_6
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/o;->d:Lg/g/b/a/k/a;

    invoke-virtual {v0}, Lg/g/b/a/k/a;->f()V

    .line 17
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/o;->d:Lg/g/b/a/k/a;

    invoke-virtual {v0}, Lg/g/b/a/k/a;->c()V

    const/4 v0, 0x0

    .line 18
    invoke-direct {p0, p1, v4, v0, p3}, Lcom/hiya/client/callerid/dao/o;->k(Ljava/lang/String;Ljava/lang/String;Ljava/io/File;Lg/g/b/c/d;)Li/c/b0/b/e0;

    move-result-object v0

    .line 19
    :goto_3
    new-instance v1, Lcom/hiya/client/callerid/dao/o$f;

    invoke-direct {v1, p0, p1, p3, p2}, Lcom/hiya/client/callerid/dao/o$f;-><init>(Lcom/hiya/client/callerid/dao/o;Ljava/lang/String;Lg/g/b/c/d;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "asset.map {\n            \u2026T\n            }\n        }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
