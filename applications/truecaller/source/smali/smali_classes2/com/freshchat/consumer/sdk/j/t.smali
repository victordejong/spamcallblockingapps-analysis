.class public Lcom/freshchat/consumer/sdk/j/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/freshchat/consumer/sdk/FreshchatImageLoader;


# instance fields
.field private final la:Lcom/squareup/picasso/Picasso;


# direct methods
.method public constructor <init>()V
    .locals 2

    const-string v0, "FRESHCHAT"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_0
    invoke-static {}, Lcom/squareup/picasso/Picasso;->get()Lcom/squareup/picasso/Picasso;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/NoSuchMethodError; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->hI:Lcom/freshchat/consumer/sdk/b/c;

    goto :goto_0

    :catch_1
    sget-object v1, Lcom/freshchat/consumer/sdk/b/c;->hH:Lcom/freshchat/consumer/sdk/b/c;

    :goto_0
    invoke-virtual {v1}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    :goto_1
    iput-object v0, p0, Lcom/freshchat/consumer/sdk/j/t;->la:Lcom/squareup/picasso/Picasso;

    return-void
.end method

.method private a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    return-void

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "FreshchatImageLoaderRequest instance must not be null in "

    invoke-static {v0, p2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static eL()Lcom/freshchat/consumer/sdk/j/t;
    .locals 2

    invoke-static {}, Lcom/freshchat/consumer/sdk/j/ba;->fZ()Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/freshchat/consumer/sdk/b/c;->kY:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {v0}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "FRESHCHAT_WARNING"

    invoke-static {v1, v0}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x0

    return-object v0

    :cond_0
    new-instance v0, Lcom/freshchat/consumer/sdk/j/t;

    invoke-direct {v0}, Lcom/freshchat/consumer/sdk/j/t;-><init>()V

    return-object v0
.end method


# virtual methods
.method public fetch(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;)V
    .locals 1

    const-string v0, "fetch"

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/t;->a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/t;->la:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->kK:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->d(Landroid/net/Uri;)Le/p/b/y;

    move-result-object p1

    invoke-virtual {p1}, Le/p/b/y;->b()V

    return-void
.end method

.method public get(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;)Landroid/graphics/Bitmap;
    .locals 2

    const-string v0, "get"

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/t;->a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/t;->la:Lcom/squareup/picasso/Picasso;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->kK:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "FRESHCHAT"

    invoke-static {v0, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v1

    :cond_0
    :try_start_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getUri()Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/squareup/picasso/Picasso;->d(Landroid/net/Uri;)Le/p/b/y;

    move-result-object p1

    invoke-virtual {p1}, Le/p/b/y;->c()Landroid/graphics/Bitmap;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    move-exception p1

    invoke-static {p1}, Lcom/freshchat/consumer/sdk/j/q;->a(Ljava/lang/Throwable;)V

    return-object v1
.end method

.method public load(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Landroid/widget/ImageView;)V
    .locals 5

    if-eqz p2, :cond_b

    const-string v0, "load"

    invoke-direct {p0, p1, v0}, Lcom/freshchat/consumer/sdk/j/t;->a(Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/freshchat/consumer/sdk/j/t;->la:Lcom/squareup/picasso/Picasso;

    if-nez v0, :cond_0

    sget-object p1, Lcom/freshchat/consumer/sdk/b/c;->kK:Lcom/freshchat/consumer/sdk/b/c;

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/b/c;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "FRESHCHAT"

    invoke-static {p2, p1}, Lcom/freshchat/consumer/sdk/j/ai;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getUri()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/squareup/picasso/Picasso;->d(Landroid/net/Uri;)Le/p/b/y;

    move-result-object v0

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTargetHeight()I

    move-result v1

    if-nez v1, :cond_1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTargetWidth()I

    move-result v1

    if-eqz v1, :cond_2

    :cond_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTargetWidth()I

    move-result v1

    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTargetHeight()I

    move-result v2

    .line 1
    iget-object v3, v0, Le/p/b/y;->b:Le/p/b/x$b;

    invoke-virtual {v3, v1, v2}, Le/p/b/x$b;->b(II)Le/p/b/x$b;

    .line 2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->shouldMaintainAspectRatio()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 3
    iget-object v1, v0, Le/p/b/y;->b:Le/p/b/x$b;

    const/4 v2, 0x1

    .line 4
    iput-boolean v2, v1, Le/p/b/x$b;->e:Z

    .line 5
    :cond_2
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getTransformToApply()Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    move-result-object v1

    sget-object v2, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;->CIRCULAR:Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest$TransformType;

    if-ne v1, v2, :cond_5

    new-instance v1, Lcom/freshchat/consumer/sdk/j/s;

    invoke-direct {v1}, Lcom/freshchat/consumer/sdk/j/s;-><init>()V

    .line 6
    iget-object v2, v0, Le/p/b/y;->b:Le/p/b/x$b;

    .line 7
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-interface {v1}, Le/p/b/d0;->key()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 9
    iget-object v3, v2, Le/p/b/x$b;->f:Ljava/util/List;

    if-nez v3, :cond_3

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    const/4 v4, 0x2

    invoke-direct {v3, v4}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v3, v2, Le/p/b/x$b;->f:Ljava/util/List;

    .line 11
    :cond_3
    iget-object v2, v2, Le/p/b/x$b;->f:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 12
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Transformation key must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_5
    :goto_0
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getPlaceholderResId()I

    move-result v1

    if-lez v1, :cond_8

    if-eqz v1, :cond_7

    .line 14
    iget-object v2, v0, Le/p/b/y;->e:Landroid/graphics/drawable/Drawable;

    if-nez v2, :cond_6

    .line 15
    iput v1, v0, Le/p/b/y;->c:I

    goto :goto_1

    .line 16
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Placeholder image already set."

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Placeholder image resource invalid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_8
    :goto_1
    invoke-virtual {p1}, Lcom/freshchat/consumer/sdk/FreshchatImageLoaderRequest;->getErrorResId()I

    move-result p1

    if-lez p1, :cond_a

    if-eqz p1, :cond_9

    .line 19
    iput p1, v0, Le/p/b/y;->d:I

    goto :goto_2

    .line 20
    :cond_9
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Error image resource invalid."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_a
    :goto_2
    const/4 p1, 0x0

    .line 21
    invoke-virtual {v0, p2, p1}, Le/p/b/y;->e(Landroid/widget/ImageView;Le/p/b/e;)V

    return-void

    .line 22
    :cond_b
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Target must not be null."

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
