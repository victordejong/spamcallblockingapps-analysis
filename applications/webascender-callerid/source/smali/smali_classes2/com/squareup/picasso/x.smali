.class public Lcom/squareup/picasso/x;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final m:Ljava/util/concurrent/atomic/AtomicInteger;


# instance fields
.field private final a:Lcom/squareup/picasso/Picasso;

.field private final b:Lcom/squareup/picasso/w$b;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:I

.field private g:I

.field private h:I

.field private i:I

.field private j:Landroid/graphics/drawable/Drawable;

.field private k:Landroid/graphics/drawable/Drawable;

.field private l:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>()V

    sput-object v0, Lcom/squareup/picasso/x;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method constructor <init>(Lcom/squareup/picasso/Picasso;Landroid/net/Uri;I)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->e:Z

    .line 3
    iget-boolean v0, p1, Lcom/squareup/picasso/Picasso;->shutdown:Z

    if-nez v0, :cond_0

    .line 4
    iput-object p1, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    .line 5
    new-instance v0, Lcom/squareup/picasso/w$b;

    iget-object p1, p1, Lcom/squareup/picasso/Picasso;->defaultBitmapConfig:Landroid/graphics/Bitmap$Config;

    invoke-direct {v0, p2, p3, p1}, Lcom/squareup/picasso/w$b;-><init>(Landroid/net/Uri;ILandroid/graphics/Bitmap$Config;)V

    iput-object v0, p0, Lcom/squareup/picasso/x;->b:Lcom/squareup/picasso/w$b;

    return-void

    .line 6
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Picasso instance already shut down. Cannot submit new requests."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private c(J)Lcom/squareup/picasso/w;
    .locals 7

    .line 1
    sget-object v0, Lcom/squareup/picasso/x;->m:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->getAndIncrement()I

    move-result v0

    .line 2
    iget-object v1, p0, Lcom/squareup/picasso/x;->b:Lcom/squareup/picasso/w$b;

    invoke-virtual {v1}, Lcom/squareup/picasso/w$b;->a()Lcom/squareup/picasso/w;

    move-result-object v1

    .line 3
    iput v0, v1, Lcom/squareup/picasso/w;->a:I

    .line 4
    iput-wide p1, v1, Lcom/squareup/picasso/w;->b:J

    .line 5
    iget-object v2, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v2, v2, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    const-string v3, "Main"

    if-eqz v2, :cond_0

    .line 6
    invoke-virtual {v1}, Lcom/squareup/picasso/w;->g()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1}, Lcom/squareup/picasso/w;->toString()Ljava/lang/String;

    move-result-object v5

    const-string v6, "created"

    invoke-static {v3, v6, v4, v5}, Lcom/squareup/picasso/f0;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_0
    iget-object v4, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v4, v1}, Lcom/squareup/picasso/Picasso;->transformRequest(Lcom/squareup/picasso/w;)Lcom/squareup/picasso/w;

    move-result-object v4

    if-eq v4, v1, :cond_1

    .line 8
    iput v0, v4, Lcom/squareup/picasso/w;->a:I

    .line 9
    iput-wide p1, v4, Lcom/squareup/picasso/w;->b:J

    if-eqz v2, :cond_1

    .line 10
    invoke-virtual {v4}, Lcom/squareup/picasso/w;->d()Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "into "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v0, "changed"

    invoke-static {v3, v0, p1, p2}, Lcom/squareup/picasso/f0;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-object v4
.end method

.method private e()Landroid/graphics/drawable/Drawable;
    .locals 4

    .line 1
    iget v0, p0, Lcom/squareup/picasso/x;->f:I

    if-eqz v0, :cond_2

    .line 2
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_0

    .line 3
    iget-object v1, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/16 v0, 0x10

    if-lt v1, v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget-object v0, v0, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    iget v1, p0, Lcom/squareup/picasso/x;->f:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 6
    iget-object v1, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/squareup/picasso/x;->f:I

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources;->getValue(ILandroid/util/TypedValue;Z)V

    .line 7
    iget-object v1, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget-object v1, v1, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v0, v0, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/squareup/picasso/x;->j:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method private o(Lcom/squareup/picasso/v;)V
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/picasso/x;->h:I

    invoke-static {v0}, Lcom/squareup/picasso/p;->shouldReadFromMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1}, Lcom/squareup/picasso/a;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    sget-object v1, Lcom/squareup/picasso/Picasso$e;->MEMORY:Lcom/squareup/picasso/Picasso$e;

    invoke-virtual {p1, v0, v1}, Lcom/squareup/picasso/v;->b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$e;)V

    return-void

    .line 4
    :cond_0
    iget v0, p0, Lcom/squareup/picasso/x;->f:I

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1, v0}, Lcom/squareup/picasso/v;->o(I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/a;)V

    return-void
.end method


# virtual methods
.method public a()Lcom/squareup/picasso/x;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/x;->b:Lcom/squareup/picasso/w$b;

    const/16 v1, 0x11

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/w$b;->b(I)Lcom/squareup/picasso/w$b;

    return-object p0
.end method

.method b()Lcom/squareup/picasso/x;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/squareup/picasso/x;->l:Ljava/lang/Object;

    return-object p0
.end method

.method public d()Lcom/squareup/picasso/x;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->d:Z

    return-object p0
.end method

.method f()Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/x;->l:Ljava/lang/Object;

    return-object v0
.end method

.method public g(Landroid/widget/ImageView;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, p1, v0}, Lcom/squareup/picasso/x;->h(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    return-void
.end method

.method public h(Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V
    .locals 15

    move-object v0, p0

    move-object/from16 v3, p1

    move-object/from16 v11, p2

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 2
    invoke-static {}, Lcom/squareup/picasso/f0;->c()V

    if-eqz v3, :cond_b

    .line 3
    iget-object v4, v0, Lcom/squareup/picasso/x;->b:Lcom/squareup/picasso/w$b;

    invoke-virtual {v4}, Lcom/squareup/picasso/w$b;->c()Z

    move-result v4

    if-nez v4, :cond_1

    .line 4
    iget-object v1, v0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 5
    iget-boolean v1, v0, Lcom/squareup/picasso/x;->e:Z

    if-eqz v1, :cond_0

    .line 6
    invoke-direct {p0}, Lcom/squareup/picasso/x;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/squareup/picasso/t;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void

    .line 7
    :cond_1
    iget-boolean v4, v0, Lcom/squareup/picasso/x;->d:Z

    if-eqz v4, :cond_6

    .line 8
    iget-object v4, v0, Lcom/squareup/picasso/x;->b:Lcom/squareup/picasso/w$b;

    invoke-virtual {v4}, Lcom/squareup/picasso/w$b;->d()Z

    move-result v4

    if-nez v4, :cond_5

    .line 9
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getWidth()I

    move-result v4

    .line 10
    invoke-virtual/range {p1 .. p1}, Landroid/widget/ImageView;->getHeight()I

    move-result v5

    if-eqz v4, :cond_3

    if-nez v5, :cond_2

    goto :goto_0

    .line 11
    :cond_2
    iget-object v6, v0, Lcom/squareup/picasso/x;->b:Lcom/squareup/picasso/w$b;

    invoke-virtual {v6, v4, v5}, Lcom/squareup/picasso/w$b;->e(II)Lcom/squareup/picasso/w$b;

    goto :goto_1

    .line 12
    :cond_3
    :goto_0
    iget-boolean v1, v0, Lcom/squareup/picasso/x;->e:Z

    if-eqz v1, :cond_4

    .line 13
    invoke-direct {p0}, Lcom/squareup/picasso/x;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/squareup/picasso/t;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 14
    :cond_4
    iget-object v1, v0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    new-instance v2, Lcom/squareup/picasso/h;

    invoke-direct {v2, p0, v3, v11}, Lcom/squareup/picasso/h;-><init>(Lcom/squareup/picasso/x;Landroid/widget/ImageView;Lcom/squareup/picasso/e;)V

    invoke-virtual {v1, v3, v2}, Lcom/squareup/picasso/Picasso;->defer(Landroid/widget/ImageView;Lcom/squareup/picasso/h;)V

    return-void

    .line 15
    :cond_5
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with resize."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 16
    :cond_6
    :goto_1
    invoke-direct {p0, v1, v2}, Lcom/squareup/picasso/x;->c(J)Lcom/squareup/picasso/w;

    move-result-object v7

    .line 17
    invoke-static {v7}, Lcom/squareup/picasso/f0;->f(Lcom/squareup/picasso/w;)Ljava/lang/String;

    move-result-object v9

    .line 18
    iget v1, v0, Lcom/squareup/picasso/x;->h:I

    invoke-static {v1}, Lcom/squareup/picasso/p;->shouldReadFromMemoryCache(I)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 19
    iget-object v1, v0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v9}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v4

    if-eqz v4, :cond_9

    .line 20
    iget-object v1, v0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v3}, Lcom/squareup/picasso/Picasso;->cancelRequest(Landroid/widget/ImageView;)V

    .line 21
    iget-object v1, v0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget-object v2, v1, Lcom/squareup/picasso/Picasso;->context:Landroid/content/Context;

    sget-object v8, Lcom/squareup/picasso/Picasso$e;->MEMORY:Lcom/squareup/picasso/Picasso$e;

    iget-boolean v5, v0, Lcom/squareup/picasso/x;->c:Z

    iget-boolean v6, v1, Lcom/squareup/picasso/Picasso;->indicatorsEnabled:Z

    move-object/from16 v1, p1

    move-object v3, v4

    move-object v4, v8

    invoke-static/range {v1 .. v6}, Lcom/squareup/picasso/t;->c(Landroid/widget/ImageView;Landroid/content/Context;Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$e;ZZ)V

    .line 22
    iget-object v1, v0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget-boolean v1, v1, Lcom/squareup/picasso/Picasso;->loggingEnabled:Z

    if-eqz v1, :cond_7

    .line 23
    invoke-virtual {v7}, Lcom/squareup/picasso/w;->g()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "from "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Main"

    const-string v4, "completed"

    invoke-static {v3, v4, v1, v2}, Lcom/squareup/picasso/f0;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_7
    if-eqz v11, :cond_8

    .line 24
    invoke-interface/range {p2 .. p2}, Lcom/squareup/picasso/e;->onSuccess()V

    :cond_8
    return-void

    .line 25
    :cond_9
    iget-boolean v1, v0, Lcom/squareup/picasso/x;->e:Z

    if-eqz v1, :cond_a

    .line 26
    invoke-direct {p0}, Lcom/squareup/picasso/x;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    invoke-static {v3, v1}, Lcom/squareup/picasso/t;->d(Landroid/widget/ImageView;Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_a
    new-instance v13, Lcom/squareup/picasso/l;

    iget-object v2, v0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget v5, v0, Lcom/squareup/picasso/x;->h:I

    iget v6, v0, Lcom/squareup/picasso/x;->i:I

    iget v8, v0, Lcom/squareup/picasso/x;->g:I

    iget-object v10, v0, Lcom/squareup/picasso/x;->k:Landroid/graphics/drawable/Drawable;

    iget-object v12, v0, Lcom/squareup/picasso/x;->l:Ljava/lang/Object;

    iget-boolean v14, v0, Lcom/squareup/picasso/x;->c:Z

    move-object v1, v13

    move-object/from16 v3, p1

    move-object v4, v7

    move v7, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v11, p2

    move v12, v14

    invoke-direct/range {v1 .. v12}, Lcom/squareup/picasso/l;-><init>(Lcom/squareup/picasso/Picasso;Landroid/widget/ImageView;Lcom/squareup/picasso/w;IIILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;Lcom/squareup/picasso/e;Z)V

    .line 28
    iget-object v1, v0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, v13}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/a;)V

    return-void

    .line 29
    :cond_b
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Target must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public i(Landroid/widget/RemoteViews;IILandroid/app/Notification;)V
    .locals 6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    .line 1
    invoke-virtual/range {v0 .. v5}, Lcom/squareup/picasso/x;->j(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;)V

    return-void
.end method

.method public j(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;)V
    .locals 7

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 1
    invoke-virtual/range {v0 .. v6}, Lcom/squareup/picasso/x;->k(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;Lcom/squareup/picasso/e;)V

    return-void
.end method

.method public k(Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;Lcom/squareup/picasso/e;)V
    .locals 17

    move-object/from16 v0, p0

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    if-eqz p1, :cond_3

    if-eqz p4, :cond_2

    .line 2
    iget-boolean v3, v0, Lcom/squareup/picasso/x;->d:Z

    if-nez v3, :cond_1

    .line 3
    iget-object v3, v0, Lcom/squareup/picasso/x;->j:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    iget v3, v0, Lcom/squareup/picasso/x;->f:I

    if-nez v3, :cond_0

    iget-object v3, v0, Lcom/squareup/picasso/x;->k:Landroid/graphics/drawable/Drawable;

    if-nez v3, :cond_0

    .line 4
    invoke-direct {v0, v1, v2}, Lcom/squareup/picasso/x;->c(J)Lcom/squareup/picasso/w;

    move-result-object v5

    .line 5
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {v5, v1}, Lcom/squareup/picasso/f0;->g(Lcom/squareup/picasso/w;Ljava/lang/StringBuilder;)Ljava/lang/String;

    move-result-object v13

    .line 6
    new-instance v1, Lcom/squareup/picasso/v$a;

    iget-object v4, v0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget v11, v0, Lcom/squareup/picasso/x;->h:I

    iget v12, v0, Lcom/squareup/picasso/x;->i:I

    iget-object v14, v0, Lcom/squareup/picasso/x;->l:Ljava/lang/Object;

    iget v15, v0, Lcom/squareup/picasso/x;->g:I

    move-object v3, v1

    move-object/from16 v6, p1

    move/from16 v7, p2

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v16, p6

    invoke-direct/range {v3 .. v16}, Lcom/squareup/picasso/v$a;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/w;Landroid/widget/RemoteViews;IILandroid/app/Notification;Ljava/lang/String;IILjava/lang/String;Ljava/lang/Object;ILcom/squareup/picasso/e;)V

    .line 7
    invoke-direct {v0, v1}, Lcom/squareup/picasso/x;->o(Lcom/squareup/picasso/v;)V

    return-void

    .line 8
    :cond_0
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Cannot use placeholder or error drawables with remote views."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 9
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Fit cannot be used with RemoteViews."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 10
    :cond_2
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "Notification must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 11
    :cond_3
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string v2, "RemoteViews must not be null."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public l(Lcom/squareup/picasso/c0;)V
    .locals 14

    .line 1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v0

    .line 2
    invoke-static {}, Lcom/squareup/picasso/f0;->c()V

    if-eqz p1, :cond_5

    .line 3
    iget-boolean v2, p0, Lcom/squareup/picasso/x;->d:Z

    if-nez v2, :cond_4

    .line 4
    iget-object v2, p0, Lcom/squareup/picasso/x;->b:Lcom/squareup/picasso/w$b;

    invoke-virtual {v2}, Lcom/squareup/picasso/w$b;->c()Z

    move-result v2

    const/4 v3, 0x0

    if-nez v2, :cond_1

    .line 5
    iget-object v0, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/c0;)V

    .line 6
    iget-boolean v0, p0, Lcom/squareup/picasso/x;->e:Z

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/squareup/picasso/x;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_0
    invoke-interface {p1, v3}, Lcom/squareup/picasso/c0;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    return-void

    .line 7
    :cond_1
    invoke-direct {p0, v0, v1}, Lcom/squareup/picasso/x;->c(J)Lcom/squareup/picasso/w;

    move-result-object v7

    .line 8
    invoke-static {v7}, Lcom/squareup/picasso/f0;->f(Lcom/squareup/picasso/w;)Ljava/lang/String;

    move-result-object v11

    .line 9
    iget v0, p0, Lcom/squareup/picasso/x;->h:I

    invoke-static {v0}, Lcom/squareup/picasso/p;->shouldReadFromMemoryCache(I)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 10
    iget-object v0, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v0, v11}, Lcom/squareup/picasso/Picasso;->quickMemoryCacheCheck(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v1, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {v1, p1}, Lcom/squareup/picasso/Picasso;->cancelRequest(Lcom/squareup/picasso/c0;)V

    .line 12
    sget-object v1, Lcom/squareup/picasso/Picasso$e;->MEMORY:Lcom/squareup/picasso/Picasso$e;

    invoke-interface {p1, v0, v1}, Lcom/squareup/picasso/c0;->b(Landroid/graphics/Bitmap;Lcom/squareup/picasso/Picasso$e;)V

    return-void

    .line 13
    :cond_2
    iget-boolean v0, p0, Lcom/squareup/picasso/x;->e:Z

    if-eqz v0, :cond_3

    invoke-direct {p0}, Lcom/squareup/picasso/x;->e()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    :cond_3
    invoke-interface {p1, v3}, Lcom/squareup/picasso/c0;->onPrepareLoad(Landroid/graphics/drawable/Drawable;)V

    .line 14
    new-instance v0, Lcom/squareup/picasso/d0;

    iget-object v5, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    iget v8, p0, Lcom/squareup/picasso/x;->h:I

    iget v9, p0, Lcom/squareup/picasso/x;->i:I

    iget-object v10, p0, Lcom/squareup/picasso/x;->k:Landroid/graphics/drawable/Drawable;

    iget-object v12, p0, Lcom/squareup/picasso/x;->l:Ljava/lang/Object;

    iget v13, p0, Lcom/squareup/picasso/x;->g:I

    move-object v4, v0

    move-object v6, p1

    invoke-direct/range {v4 .. v13}, Lcom/squareup/picasso/d0;-><init>(Lcom/squareup/picasso/Picasso;Lcom/squareup/picasso/c0;Lcom/squareup/picasso/w;IILandroid/graphics/drawable/Drawable;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 15
    iget-object p1, p0, Lcom/squareup/picasso/x;->a:Lcom/squareup/picasso/Picasso;

    invoke-virtual {p1, v0}, Lcom/squareup/picasso/Picasso;->enqueueAndSubmit(Lcom/squareup/picasso/a;)V

    return-void

    .line 16
    :cond_4
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Fit cannot be used with a Target."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Target must not be null."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public m()Lcom/squareup/picasso/x;
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->c:Z

    return-object p0
.end method

.method public n()Lcom/squareup/picasso/x;
    .locals 2

    .line 1
    iget v0, p0, Lcom/squareup/picasso/x;->f:I

    if-nez v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/x;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->e:Z

    return-object p0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder image already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 5
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Placeholder resource already set."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public p(I)Lcom/squareup/picasso/x;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/squareup/picasso/x;->e:Z

    if-eqz v0, :cond_2

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/squareup/picasso/x;->j:Landroid/graphics/drawable/Drawable;

    if-nez v0, :cond_0

    .line 3
    iput p1, p0, Lcom/squareup/picasso/x;->f:I

    return-object p0

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Placeholder image already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Placeholder image resource invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 6
    :cond_2
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Already explicitly declared as no placeholder."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public q(II)Lcom/squareup/picasso/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/x;->b:Lcom/squareup/picasso/w$b;

    invoke-virtual {v0, p1, p2}, Lcom/squareup/picasso/w$b;->e(II)Lcom/squareup/picasso/w$b;

    return-object p0
.end method

.method public r(Ljava/lang/Object;)Lcom/squareup/picasso/x;
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/x;->l:Ljava/lang/Object;

    if-nez v0, :cond_0

    .line 2
    iput-object p1, p0, Lcom/squareup/picasso/x;->l:Ljava/lang/Object;

    return-object p0

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Tag already set."

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 4
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag invalid."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public s(Lcom/squareup/picasso/e0;)Lcom/squareup/picasso/x;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/squareup/picasso/x;->b:Lcom/squareup/picasso/w$b;

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/w$b;->f(Lcom/squareup/picasso/e0;)Lcom/squareup/picasso/w$b;

    return-object p0
.end method

.method t()Lcom/squareup/picasso/x;
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/squareup/picasso/x;->d:Z

    return-object p0
.end method
