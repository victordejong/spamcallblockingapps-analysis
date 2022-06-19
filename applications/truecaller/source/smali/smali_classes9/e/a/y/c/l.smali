.class public final Le/a/y/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/y/c/k;


# instance fields
.field public final a:Le/a/y/c/b;

.field public final b:Ls1/w/f;

.field public c:Le/a/y/c/j;

.field public final d:Ls1/w/f;

.field public final e:Le/a/y/c/p;

.field public final f:Le/a/y/b/f;

.field public final g:Le/a/y/b/m;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/y/c/p;Le/a/y/b/f;Le/a/y/b/m;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashRestAdapter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceUtils"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "flashMediaHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/y/c/l;->d:Ls1/w/f;

    iput-object p2, p0, Le/a/y/c/l;->e:Le/a/y/c/p;

    iput-object p3, p0, Le/a/y/c/l;->f:Le/a/y/b/f;

    iput-object p4, p0, Le/a/y/c/l;->g:Le/a/y/b/m;

    .line 2
    invoke-static {}, Le/a/y/c/c;->b()Le/a/y/c/b;

    move-result-object p2

    iput-object p2, p0, Le/a/y/c/l;->a:Le/a/y/c/b;

    .line 3
    iput-object p1, p0, Le/a/y/c/l;->b:Ls1/w/f;

    return-void
.end method

.method public static final e(Le/a/y/c/l;Ljava/lang/String;)Lq3/a/n0;
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/y/c/l;->b:Ls1/w/f;

    .line 2
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 3
    invoke-interface {v1, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    const/4 v2, 0x0

    new-instance v3, Le/a/y/c/m;

    const/4 v4, 0x0

    invoke-direct {v3, p0, p1, v4}, Le/a/y/c/m;-><init>(Le/a/y/c/l;Ljava/lang/String;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p0

    return-object p0
.end method

.method public static final f(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;)V
    .locals 3

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget-object v0, p1, Lcom/truecaller/flashsdk/models/Flash;->f:Lcom/truecaller/flashsdk/models/Payload;

    const-string v1, "flash.payload"

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/flashsdk/models/Payload;->e()Ljava/lang/String;

    move-result-object v0

    const-string v1, "call_me_back"

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object p0, p0, Le/a/y/c/l;->a:Le/a/y/c/b;

    invoke-interface {p0}, Le/a/y/c/b;->z()Le/a/y/c/i;

    move-result-object p0

    if-eqz p0, :cond_0

    const/4 v0, 0x3

    .line 5
    iget-wide v1, p1, Lcom/truecaller/flashsdk/models/Flash;->b:J

    .line 6
    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    const/4 v1, 0x0

    invoke-interface {p0, v0, p1, v1}, Le/a/y/c/i;->j(ILjava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public static final g(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;II)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/y/c/l;->c:Le/a/y/c/j;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Le/a/y/c/j;->j(Lcom/truecaller/flashsdk/models/Flash;II)V

    .line 2
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/a/y/c/l;->i(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;)V

    return-void
.end method

.method public static final h(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/FlashRequest;)Lq3/a/n0;
    .locals 6

    .line 1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/y/c/l;->b:Ls1/w/f;

    .line 2
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 3
    invoke-interface {v1, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v1

    new-instance v3, Le/a/y/c/n;

    const/4 v2, 0x0

    invoke-direct {v3, p0, p1, v2}, Le/a/y/c/n;-><init>(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/FlashRequest;Ls1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public a(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;ZLe/a/y/c/j;)V
    .locals 6

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromScreen"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p4, p0, Le/a/y/c/l;->c:Le/a/y/c/j;

    .line 2
    iget-object p2, p0, Le/a/y/c/l;->f:Le/a/y/b/f;

    invoke-interface {p2}, Le/a/y/b/f;->b()Z

    move-result p2

    if-nez p2, :cond_1

    .line 3
    iget-object p2, p0, Le/a/y/c/l;->c:Le/a/y/c/j;

    const/16 p3, 0xa

    if-eqz p2, :cond_0

    invoke-interface {p2, p1, p3, p3}, Le/a/y/c/j;->j(Lcom/truecaller/flashsdk/models/Flash;II)V

    .line 4
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/a/y/c/l;->i(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;)V

    return-void

    .line 5
    :cond_1
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/y/c/l;->b:Ls1/w/f;

    const/4 v2, 0x0

    new-instance v3, Le/a/y/c/l$c;

    const/4 p2, 0x0

    invoke-direct {v3, p0, p1, p3, p2}, Le/a/y/c/l$c;-><init>(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/Flash;ZLs1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public b(Lcom/truecaller/flashsdk/models/ImageFlash;Ljava/lang/String;ZLe/a/y/c/a;)V
    .locals 9

    const-string v0, "flash"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fromScreen"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p2, p0, Le/a/y/c/l;->f:Le/a/y/b/f;

    invoke-interface {p2}, Le/a/y/b/f;->b()Z

    move-result p2

    if-nez p2, :cond_0

    const/16 p2, 0xa

    .line 2
    invoke-virtual {p0, p1, p2, p2, p4}, Le/a/y/c/l;->j(Lcom/truecaller/flashsdk/models/ImageFlash;IILe/a/y/c/a;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Le/a/y/c/l;->b:Ls1/w/f;

    const/4 v2, 0x0

    new-instance p2, Le/a/y/c/l$d;

    const/4 v8, 0x0

    move-object v3, p2

    move-object v4, p0

    move-object v5, p1

    move-object v6, p4

    move v7, p3

    invoke-direct/range {v3 .. v8}, Le/a/y/c/l$d;-><init>(Le/a/y/c/l;Lcom/truecaller/flashsdk/models/ImageFlash;Le/a/y/c/a;ZLs1/w/d;)V

    const/4 v4, 0x2

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/flashsdk/models/ImageFlash;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/flashsdk/models/MediaUrl;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/y/c/l$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/y/c/l$a;

    iget v1, v0, Le/a/y/c/l$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/y/c/l$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/y/c/l$a;

    invoke-direct {v0, p0, p2}, Le/a/y/c/l$a;-><init>(Le/a/y/c/l;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/y/c/l$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/y/c/l$a;->e:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/y/c/l$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/flashsdk/models/ImageFlash;

    iget-object v0, v0, Le/a/y/c/l$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/y/c/l;

    :try_start_0
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p2, p0, Le/a/y/c/l;->b:Ls1/w/f;

    .line 5
    sget-object v2, Lq3/a/t0;->d:Lq3/a/g0;

    .line 6
    invoke-interface {p2, v2}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object p2

    new-instance v2, Le/a/y/c/l$b;

    invoke-direct {v2, p0, v3}, Le/a/y/c/l$b;-><init>(Le/a/y/c/l;Ls1/w/d;)V

    iput-object p0, v0, Le/a/y/c/l$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/y/c/l$a;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/y/c/l$a;->e:I

    invoke-static {p2, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 7
    :goto_1
    :try_start_2
    check-cast p2, Lx3/a0;

    const-string v1, "result"

    .line 8
    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 9
    iget-object p1, p2, Lx3/a0;->b:Ljava/lang/Object;

    return-object p1

    .line 10
    :cond_4
    iget-object p2, p2, Lx3/a0;->a:Lu3/k0;

    .line 11
    iget p2, p2, Lu3/k0;->e:I

    .line 12
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/a/y/c/l;->i(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_2

    :catch_0
    move-object v0, p0

    :catch_1
    const/16 p2, 0xe

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/a/y/c/l;->i(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;)V

    :goto_2
    return-object v3
.end method

.method public d(Lcom/truecaller/flashsdk/models/ImageFlash;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/flashsdk/models/ImageFlash;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object p2, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->j:Lcom/truecaller/flashsdk/models/MediaUrl;

    .line 2
    iget-object v0, p0, Le/a/y/c/l;->g:Le/a/y/b/m;

    .line 3
    iget-object v1, p1, Lcom/truecaller/flashsdk/models/ImageFlash;->i:Landroid/net/Uri;

    const-string v2, "flash.imageUri"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Le/a/y/b/m;->a(Landroid/net/Uri;)Lu3/j0;

    move-result-object v0

    const-string v1, "file"

    const/4 v2, 0x0

    .line 5
    invoke-static {v1, v2, v0}, Lu3/d0$c;->b(Ljava/lang/String;Ljava/lang/String;Lu3/j0;)Lu3/d0$c;

    move-result-object v0

    .line 6
    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/MediaUrl;->getFormField()Lcom/truecaller/flashsdk/models/FormField;

    move-result-object v1

    invoke-static {v1}, Le/a/m0/a1$k;->v1(Lcom/truecaller/flashsdk/models/FormField;)Ljava/util/Map;

    move-result-object v1

    .line 7
    iget-object v2, p0, Le/a/y/c/l;->e:Le/a/y/c/p;

    invoke-virtual {p2}, Lcom/truecaller/flashsdk/models/MediaUrl;->getUploadUrl()Ljava/lang/String;

    move-result-object p2

    invoke-interface {v2, p2, v1, v0}, Le/a/y/c/p;->a(Ljava/lang/String;Ljava/util/Map;Lu3/d0$c;)Lx3/b;

    move-result-object p2

    invoke-interface {p2}, Lx3/b;->execute()Lx3/a0;

    move-result-object p2

    .line 8
    iget-object v0, p2, Lx3/a0;->a:Lu3/k0;

    .line 9
    iget v0, v0, Lu3/k0;->e:I

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/a/y/c/l;->i(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;)V

    const-string v0, "result"

    .line 11
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result p2

    .line 12
    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/16 p2, 0xe

    .line 13
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/a/y/c/l;->i(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;)V

    .line 14
    sget-object p1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p1
.end method

.method public final i(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Lcom/truecaller/flashsdk/models/Flash;->a()Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v2, 0x2

    if-le v0, v2, :cond_0

    const-string v0, "reply"

    goto :goto_0

    :cond_0
    const-string v0, "send"

    :goto_0
    const-string v2, "flashContext"

    .line 4
    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, "sentFailed"

    .line 5
    invoke-virtual {v1, v0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/truecaller/flashsdk/models/Flash;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, "UUID.randomUUID().toString()"

    .line 7
    invoke-static {p1}, Le/d/c/a/a;->e2(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    :goto_1
    const-string p2, "flashThreadId"

    invoke-virtual {v1, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/y/c/l;->a:Le/a/y/c/b;

    const-string p2, "FlashSentFailed"

    invoke-interface {p1, p2, v1}, Le/a/y/c/b;->j(Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method public final j(Lcom/truecaller/flashsdk/models/ImageFlash;IILe/a/y/c/a;)V
    .locals 0

    if-eqz p4, :cond_0

    .line 1
    invoke-interface {p4, p1, p2, p3}, Le/a/y/c/a;->U9(Lcom/truecaller/flashsdk/models/ImageFlash;II)V

    .line 2
    :cond_0
    invoke-static {p3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/a/y/c/l;->i(Lcom/truecaller/flashsdk/models/Flash;Ljava/lang/String;)V

    return-void
.end method
