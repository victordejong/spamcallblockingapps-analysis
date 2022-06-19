.class public final Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010#\u001a\u00020\"\u0012\u0006\u0010%\u001a\u00020$\u00a2\u0006\u0004\u0008&\u0010\'J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0017\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\u00088\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR\"\u0010\u0017\u001a\u00020\u00108\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014\"\u0004\u0008\u0015\u0010\u0016R(\u0010!\u001a\u00020\u00188\u0016@\u0016X\u0097.\u00a2\u0006\u0018\n\u0004\u0008\u0019\u0010\u001a\u0012\u0004\u0008\u001f\u0010 \u001a\u0004\u0008\u001b\u0010\u001c\"\u0004\u0008\u001d\u0010\u001e\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/b/a/a/b/d/b;",
        "a",
        "Le/a/b/a/a/b/d/b;",
        "getBizProfileRemoteDataSource",
        "()Le/a/b/a/a/b/d/b;",
        "setBizProfileRemoteDataSource",
        "(Le/a/b/a/a/b/d/b;)V",
        "bizProfileRemoteDataSource",
        "Le/a/q2/a;",
        "b",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "Le/a/u3/g;",
        "c",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "getFeaturesRegistry$annotations",
        "()V",
        "featuresRegistry",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/b/a/a/b/d/b;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    invoke-static {p1}, Le/a/n/g0;->l(Landroid/content/Context;)Le/a/b/a/g/b;

    move-result-object p1

    check-cast p1, Le/a/b/a/g/e;

    .line 3
    new-instance p2, Le/a/b/a/a/b/d/b;

    invoke-direct {p2}, Le/a/b/a/a/b/d/b;-><init>()V

    .line 4
    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;->a:Le/a/b/a/a/b/d/b;

    .line 5
    iget-object p2, p1, Le/a/b/a/g/e;->h:Le/a/q2/e;

    invoke-interface {p2}, Le/a/q2/e;->C4()Le/a/q2/a;

    move-result-object p2

    const-string v0, "Cannot return null from a non-@Nullable component method"

    .line 6
    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object p2, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;->b:Le/a/q2/a;

    .line 8
    iget-object p1, p1, Le/a/b/a/g/e;->b:Le/a/b0/c;

    invoke-interface {p1}, Le/a/b0/c;->i5()Le/a/u3/g;

    move-result-object p1

    .line 9
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;->c:Le/a/u3/g;

    return-void
.end method


# virtual methods
.method public n()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;->b:Le/a/q2/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;->c:Le/a/u3/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "featuresRegistry"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 6

    .line 1
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    sget-object v1, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->Companion:Lcom/truecaller/bizmon/newBusiness/workers/ImageType$a;

    .line 2
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v2

    .line 3
    sget-object v3, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->GALLERY:Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    invoke-virtual {v3}, Lcom/truecaller/bizmon/newBusiness/workers/ImageType;->getValue()I

    move-result v3

    const-string v4, "keyImageType"

    .line 4
    invoke-virtual {v2, v4, v3}, Ln3/m0/f;->c(Ljava/lang/String;I)I

    move-result v2

    .line 5
    invoke-virtual {v1, v2}, Lcom/truecaller/bizmon/newBusiness/workers/ImageType$a;->a(I)Lcom/truecaller/bizmon/newBusiness/workers/ImageType;

    move-result-object v1

    const-string v2, "Result.failure()"

    if-eqz v1, :cond_8

    iput-object v1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Le/a/b0/q/s;->e(Landroid/content/Context;)Landroid/net/Uri;

    move-result-object v3

    if-eqz v3, :cond_7

    const-string v4, "<this>"

    .line 7
    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual {v3}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v4

    const-string v5, "file"

    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 9
    invoke-virtual {v3}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_5

    new-instance v3, Ljava/io/File;

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 10
    new-instance v4, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;

    const/4 v5, 0x0

    invoke-direct {v4, v3, v5}, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$a;-><init>(Ljava/io/File;Ls1/w/d;)V

    const/4 v3, 0x1

    invoke-static {v5, v4, v3, v5}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_7

    .line 11
    iput-object v4, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 12
    :try_start_0
    new-instance v4, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;

    invoke-direct {v4, p0, v0, v1, v5}, Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker$b;-><init>(Lcom/truecaller/bizmon/newBusiness/workers/ImageUploadWorker;Ls1/z/c/c0;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {v5, v4, v3, v5}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b/a/a/b/d/a;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 13
    instance-of v1, v0, Ljava/net/UnknownHostException;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    instance-of v1, v0, Ljava/io/IOException;

    if-eqz v1, :cond_1

    .line 14
    :goto_0
    new-instance v0, Le/a/b/a/a/b/d/a$b$d;

    const/16 v1, 0x259

    invoke-direct {v0, v1}, Le/a/b/a/a/b/d/a$b$d;-><init>(I)V

    goto :goto_1

    .line 15
    :cond_1
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 16
    new-instance v1, Le/a/b/a/a/b/d/a$b$f;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v3, v0}, Le/a/b/a/a/b/d/a$b$f;-><init>(ILjava/lang/String;)V

    move-object v0, v1

    .line 17
    :goto_1
    nop

    instance-of v1, v0, Le/a/b/a/a/b/d/a$c;

    if-eqz v1, :cond_2

    .line 18
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 19
    check-cast v0, Le/a/b/a/a/b/d/a$c;

    .line 20
    iget-object v0, v0, Le/a/b/a/a/b/d/a$c;->a:Ljava/lang/Object;

    .line 21
    check-cast v0, Ljava/lang/String;

    const-string v2, "imageUploadedUrl"

    .line 22
    invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    new-instance v0, Ln3/m0/f;

    invoke-direct {v0, v1}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 24
    invoke-static {v0}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 25
    new-instance v1, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v1, v0}, Landroidx/work/ListenableWorker$a$c;-><init>(Ln3/m0/f;)V

    const-string v0, "Result.success(Data.Buil\u2026ploadedUrl.body).build())"

    .line 26
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 27
    :cond_2
    instance-of v1, v0, Le/a/b/a/a/b/d/a$b;

    if-eqz v1, :cond_4

    .line 28
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    .line 29
    check-cast v0, Le/a/b/a/a/b/d/a$b;

    invoke-static {v0}, Le/a/n/g0;->H(Le/a/b/a/a/b/d/a$b;)Ljava/lang/Integer;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v5

    :cond_3
    const-string v0, "errorStringResInt"

    .line 30
    invoke-virtual {v1, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    new-instance v0, Ln3/m0/f;

    invoke-direct {v0, v1}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 32
    invoke-static {v0}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 33
    new-instance v1, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v1, v0}, Landroidx/work/ListenableWorker$a$a;-><init>(Ln3/m0/f;)V

    const-string v0, "Result.failure(Data.Buil\u2026d()?.toString()).build())"

    .line 34
    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_2
    return-object v1

    .line 35
    :cond_4
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 36
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_5
    const-string v0, "Uri path is null: "

    .line 37
    invoke-static {v0, v3}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_6
    const-string v0, "Uri lacks \'file\' scheme: "

    .line 38
    invoke-static {v0, v3}, Ls1/z/c/l;->j(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 39
    :cond_7
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 40
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 41
    :cond_8
    new-instance v0, Landroidx/work/ListenableWorker$a$a;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$a;-><init>()V

    .line 42
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
