.class public final Le/a/y/c/g;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/y/c/e;
.implements Le/a/y/c/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/y/c/f;",
        ">;",
        "Le/a/y/c/e;",
        "Le/a/y/c/a;"
    }
.end annotation


# instance fields
.field public final d:Ls1/w/f;

.field public final e:Ls1/w/f;

.field public final f:Le/a/y/c/k;

.field public final g:Le/a/y/b/g0;

.field public final h:Le/a/y/b/h;

.field public final i:Le/a/y/b/m;

.field public final j:Le/a/y/h/a;

.field public final k:Le/a/y/b/q;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/y/c/k;Le/a/y/b/g0;Le/a/y/b/h;Le/a/y/b/m;Le/a/y/h/a;Le/a/y/b/q;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "asyncContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashRequestHandler"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fileUtils"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashMediaHelper"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashNotificationManager"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/y/c/g;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/y/c/g;->e:Ls1/w/f;

    iput-object p3, p0, Le/a/y/c/g;->f:Le/a/y/c/k;

    iput-object p4, p0, Le/a/y/c/g;->g:Le/a/y/b/g0;

    iput-object p5, p0, Le/a/y/c/g;->h:Le/a/y/b/h;

    iput-object p6, p0, Le/a/y/c/g;->i:Le/a/y/b/m;

    iput-object p7, p0, Le/a/y/c/g;->j:Le/a/y/h/a;

    iput-object p8, p0, Le/a/y/c/g;->k:Le/a/y/b/q;

    return-void
.end method


# virtual methods
.method public final Ij(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/flashsdk/models/ImageFlash;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/y/c/g$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/y/c/g$a;

    iget v1, v0, Le/a/y/c/g$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/y/c/g$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/y/c/g$a;

    invoke-direct {v0, p0, p2}, Le/a/y/c/g$a;-><init>(Le/a/y/c/g;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/y/c/g$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/y/c/g$a;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/y/c/g$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/flashsdk/models/ImageFlash;

    iget-object p1, v0, Le/a/y/c/g$a;->g:Ljava/lang/Object;

    check-cast p1, Le/a/y/c/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/y/c/g$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/flashsdk/models/ImageFlash;

    iget-object v2, v0, Le/a/y/c/g$a;->g:Ljava/lang/Object;

    check-cast v2, Le/a/y/c/g;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, p0, Le/a/y/c/g;->f:Le/a/y/c/k;

    iput-object p0, v0, Le/a/y/c/g$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/y/c/g$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/y/c/g$a;->e:I

    invoke-interface {p2, p1, v0}, Le/a/y/c/k;->c(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 5
    :goto_1
    check-cast p2, Lcom/truecaller/flashsdk/models/MediaUrl;

    if-eqz p2, :cond_5

    .line 6
    iput-object p2, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->j:Lcom/truecaller/flashsdk/models/MediaUrl;

    .line 7
    iput-object v2, v0, Le/a/y/c/g$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/y/c/g$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/y/c/g$a;->e:I

    invoke-virtual {v2, p1, v0}, Le/a/y/c/g;->Jj(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_7

    return-object v1

    .line 8
    :cond_5
    iget-object p2, v2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/y/c/f;

    if-eqz p2, :cond_6

    invoke-interface {p2, p1}, Le/a/y/c/f;->f(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    .line 9
    :cond_6
    iget-object p2, v2, Le/a/y/c/g;->j:Le/a/y/h/a;

    invoke-interface {p2, p1}, Le/a/y/h/a;->g(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    .line 10
    :cond_7
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final Jj(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/flashsdk/models/ImageFlash;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    sget-object v0, Ls1/s;->a:Ls1/s;

    instance-of v1, p2, Le/a/y/c/g$b;

    if-eqz v1, :cond_0

    move-object v1, p2

    check-cast v1, Le/a/y/c/g$b;

    iget v2, v1, Le/a/y/c/g$b;->e:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Le/a/y/c/g$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v1, Le/a/y/c/g$b;

    invoke-direct {v1, p0, p2}, Le/a/y/c/g$b;-><init>(Le/a/y/c/g;Ls1/w/d;)V

    :goto_0
    iget-object p2, v1, Le/a/y/c/g$b;->d:Ljava/lang/Object;

    sget-object v2, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v3, v1, Le/a/y/c/g$b;->e:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object p1, v1, Le/a/y/c/g$b;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/flashsdk/models/ImageFlash;

    iget-object v1, v1, Le/a/y/c/g$b;->g:Ljava/lang/Object;

    check-cast v1, Le/a/y/c/g;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    :catch_0
    move-exception p2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v1, Le/a/y/c/g$b;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/flashsdk/models/ImageFlash;

    iget-object v3, v1, Le/a/y/c/g$b;->g:Ljava/lang/Object;

    check-cast v3, Le/a/y/c/g;

    :try_start_1
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    :catch_1
    move-exception p2

    move-object v1, v3

    goto :goto_3

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    iget-object p2, p0, Le/a/y/c/g;->j:Le/a/y/h/a;

    invoke-interface {p2, p1}, Le/a/y/h/a;->d(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    .line 5
    iget-object p2, p0, Le/a/y/c/g;->f:Le/a/y/c/k;

    iput-object p0, v1, Le/a/y/c/g$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/y/c/g$b;->h:Ljava/lang/Object;

    iput v5, v1, Le/a/y/c/g$b;->e:I

    invoke-interface {p2, p1, v1}, Le/a/y/c/k;->d(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    if-ne p2, v2, :cond_4

    return-object v2

    :cond_4
    move-object v3, p0

    :goto_1
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 6
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    iput-boolean v5, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->k:Z

    .line 8
    iget-object p2, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/y/c/f;

    if-eqz p2, :cond_5

    invoke-interface {p2}, Le/a/y/c/f;->a()V

    .line 9
    :cond_5
    invoke-virtual {v3, p1}, Le/a/y/c/g;->Kj(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    .line 10
    iput-object v3, v1, Le/a/y/c/g$b;->g:Ljava/lang/Object;

    iput-object p1, v1, Le/a/y/c/g$b;->h:Ljava/lang/Object;

    iput v4, v1, Le/a/y/c/g$b;->e:I

    .line 11
    iget-object p2, v3, Le/a/y/c/g;->i:Le/a/y/b/m;

    .line 12
    iget-object v4, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->i:Landroid/net/Uri;

    .line 13
    invoke-interface {p2, v4, v1}, Le/a/y/b/m;->b(Landroid/net/Uri;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v2, :cond_6

    goto :goto_2

    :cond_6
    move-object p1, v0

    :goto_2
    if-ne p1, v2, :cond_a

    return-object v2

    .line 14
    :cond_7
    iget-object p2, v3, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/y/c/f;

    if-eqz p2, :cond_8

    invoke-interface {p2, p1}, Le/a/y/c/f;->b(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    .line 15
    :cond_8
    iget-object p2, v3, Le/a/y/c/g;->j:Le/a/y/h/a;

    invoke-interface {p2, p1}, Le/a/y/h/a;->g(Lcom/truecaller/flashsdk/models/ImageFlash;)V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_4

    :catch_2
    move-exception p2

    move-object v1, p0

    .line 16
    :goto_3
    invoke-static {p2}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 17
    iget-object p2, v1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/y/c/f;

    if-eqz p2, :cond_9

    invoke-interface {p2, p1}, Le/a/y/c/f;->b(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    .line 18
    :cond_9
    iget-object p2, v1, Le/a/y/c/g;->j:Le/a/y/h/a;

    invoke-interface {p2, p1}, Le/a/y/h/a;->g(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    :cond_a
    :goto_4
    return-object v0
.end method

.method public final Kj(Lcom/truecaller/flashsdk/models/ImageFlash;)V
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/y/c/g;->j:Le/a/y/h/a;

    invoke-interface {v0, p1}, Le/a/y/h/a;->c(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    .line 2
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->j:Lcom/truecaller/flashsdk/models/MediaUrl;

    .line 3
    new-instance v7, Lcom/truecaller/flashsdk/models/FlashExtras;

    const/4 v2, 0x0

    new-instance v3, Lcom/truecaller/flashsdk/models/FlashImageEntity;

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/MediaUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v1

    const-string v4, "image/jpg"

    invoke-direct {v3, v1, v4}, Lcom/truecaller/flashsdk/models/FlashImageEntity;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x5

    const/4 v6, 0x0

    move-object v1, v7

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/flashsdk/models/FlashExtras;-><init>(Ljava/util/List;Lcom/truecaller/flashsdk/models/FlashImageEntity;Lcom/truecaller/flashsdk/models/FlashLocationExtras;ILs1/z/c/f;)V

    .line 4
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v2, "flash.payload"

    .line 5
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/MediaUrl;->getDownloadUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/truecaller/flashsdk/models/Payload;->f(Ljava/lang/String;)V

    .line 6
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 7
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/y/c/g;->k:Le/a/y/b/q;

    invoke-interface {v1, v7}, Le/a/y/b/q;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/truecaller/flashsdk/models/Payload;->g(Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le/a/y/c/g;->f:Le/a/y/c/k;

    .line 9
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->m:Ljava/lang/String;

    const-string v2, "flash.screenContext"

    .line 10
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x1

    invoke-interface {v0, p1, v1, v2, p0}, Le/a/y/c/k;->b(Lcom/truecaller/flashsdk/models/ImageFlash;Ljava/lang/String;ZLe/a/y/c/a;)V

    return-void
.end method

.method public U9(Lcom/truecaller/flashsdk/models/ImageFlash;II)V
    .locals 0

    const-string p2, "flash"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/y/c/f;

    if-eqz p2, :cond_0

    invoke-interface {p2}, Le/a/y/c/f;->d()V

    .line 2
    :cond_0
    iget-object p2, p0, Le/a/y/c/g;->j:Le/a/y/h/a;

    invoke-interface {p2, p1}, Le/a/y/h/a;->h(Lcom/truecaller/flashsdk/models/ImageFlash;)V

    return-void
.end method

.method public n4(Ljava/lang/String;Lcom/truecaller/flashsdk/models/Flash;Lcom/truecaller/flashsdk/models/ImageFlash;)I
    .locals 7

    const-string v0, "action_image_download"

    .line 1
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    const/4 v0, 0x0

    if-eqz p1, :cond_7

    if-eqz p2, :cond_9

    .line 2
    iget-object p1, p0, Le/a/y/c/g;->k:Le/a/y/b/q;

    .line 3
    iget-object p3, p2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v1, "flash.payload"

    .line 4
    invoke-static {p3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p3}, Lcom/truecaller/flashsdk/models/Payload;->b()Ljava/lang/String;

    move-result-object p3

    const-string v2, "flash.payload.extra"

    invoke-static {p3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-class v2, Lcom/truecaller/flashsdk/models/FlashExtras;

    invoke-interface {p1, p3, v2}, Le/a/y/b/q;->b(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/flashsdk/models/FlashExtras;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/FlashExtras;->getMedia()Lcom/truecaller/flashsdk/models/FlashImageEntity;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/FlashImageEntity;->getImageUrl()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    move-object p1, v0

    :goto_0
    const/4 p3, 0x0

    if-nez p1, :cond_3

    .line 5
    iget-object v2, p2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 6
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move v2, p3

    goto :goto_2

    :cond_2
    :goto_1
    const/4 v2, 0x1

    :goto_2
    if-nez v2, :cond_3

    .line 7
    iget-object p1, p2, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    .line 8
    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Payload;->a()Ljava/lang/String;

    move-result-object p1

    const-string v1, "flash.payload.attachment"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, ","

    filled-new-array {v1}, [Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x6

    invoke-static {p1, v1, p3, p3, v2}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p1

    invoke-interface {p1, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    :cond_3
    if-eqz p1, :cond_6

    .line 9
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/y/c/f;

    if-eqz v1, :cond_4

    iget-object v2, p0, Le/a/y/c/g;->g:Le/a/y/b/g0;

    sget v3, Lcom/truecaller/flashsdk/R$string;->flash_downloading:I

    new-array v4, p3, [Ljava/lang/Object;

    invoke-interface {v2, v3, v4}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Le/a/y/c/f;->l(Ljava/lang/String;)V

    .line 10
    :cond_4
    iget-object v1, p0, Le/a/y/c/g;->h:Le/a/y/b/h;

    .line 11
    iget-object p2, p2, Lcom/truecaller/flashsdk/models/Flash;->a:Lcom/truecaller/flashsdk/models/Sender;

    const-string v2, "flash.sender"

    .line 12
    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/Sender;->c()Ljava/lang/Long;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p2

    const-string v2, ".jpg"

    .line 13
    invoke-interface {v1, p2, v2}, Le/a/y/b/h;->d(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 14
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/y/c/f;

    if-eqz v1, :cond_5

    iget-object v0, p0, Le/a/y/c/g;->g:Le/a/y/b/g0;

    sget v2, Lcom/truecaller/flashsdk/R$string;->true_flash:I

    new-array v3, p3, [Ljava/lang/Object;

    invoke-interface {v0, v2, v3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, p1, p2, v0}, Le/a/y/c/f;->c(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Ls1/s;->a:Ls1/s;

    :cond_5
    if-eqz v0, :cond_6

    goto :goto_3

    .line 15
    :cond_6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/y/c/f;

    if-eqz p1, :cond_9

    iget-object p2, p0, Le/a/y/c/g;->g:Le/a/y/b/g0;

    sget v0, Lcom/truecaller/flashsdk/R$string;->flash_download_failed:I

    new-array p3, p3, [Ljava/lang/Object;

    invoke-interface {p2, v0, p3}, Le/a/y/b/g0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p2}, Le/a/y/c/f;->l(Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz p3, :cond_9

    .line 16
    iget-object p1, p3, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    if-eqz p1, :cond_8

    .line 17
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object p1, p0, Le/a/y/c/g;->e:Ls1/w/f;

    iget-object p2, p0, Le/a/y/c/g;->d:Ls1/w/f;

    invoke-interface {p1, p2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v2

    const/4 v3, 0x0

    new-instance v4, Le/a/y/c/g$c;

    invoke-direct {v4, p3, v0, p0}, Le/a/y/c/g$c;-><init>(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;Le/a/y/c/g;)V

    const/4 v5, 0x2

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    goto :goto_3

    .line 18
    :cond_8
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Flash must\'ve a payload set"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_9
    :goto_3
    const/4 p1, 0x2

    return p1
.end method

.method public tg(Lcom/truecaller/flashsdk/models/ImageFlash;)V
    .locals 1

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/y/c/f;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/y/c/f;->e()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/y/c/g;->j:Le/a/y/h/a;

    invoke-interface {v0, p1}, Le/a/y/h/a;->a(Lcom/truecaller/flashsdk/models/Flash;)V

    return-void
.end method
