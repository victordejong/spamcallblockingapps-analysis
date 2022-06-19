.class public final Lcom/truecaller/ugc/EnhancedSearchStateWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B-\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u000e\u001a\u00020\r\u0012\u0008\u0008\u0001\u0010\u0010\u001a\u00020\u000f\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u0012\u0006\u0010\u000c\u001a\u00020\t\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000b\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/truecaller/ugc/EnhancedSearchStateWorker;",
        "Landroidx/work/Worker;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/b0/e/l;",
        "a",
        "Le/a/b0/e/l;",
        "accountManager",
        "Le/a/n5/g;",
        "b",
        "Le/a/n5/g;",
        "ugcSettings",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/n5/g;)V",
        "ugc_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Le/a/b0/e/l;

.field public final b:Le/a/n5/g;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/n5/g;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ugcSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/ugc/EnhancedSearchStateWorker;->a:Le/a/b0/e/l;

    iput-object p4, p0, Lcom/truecaller/ugc/EnhancedSearchStateWorker;->b:Le/a/n5/g;

    return-void
.end method

.method public static final n(ZLandroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p1

    .line 3
    sget-object v0, Ln3/m0/h;->a:Ln3/m0/h;

    .line 4
    new-instance v1, Ln3/m0/r$a;

    const-class v2, Lcom/truecaller/ugc/EnhancedSearchStateWorker;

    invoke-direct {v1, v2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 5
    new-instance v2, Ln3/m0/d$a;

    invoke-direct {v2}, Ln3/m0/d$a;-><init>()V

    sget-object v3, Ln3/m0/q;->b:Ln3/m0/q;

    .line 6
    iput-object v3, v2, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 7
    new-instance v3, Ln3/m0/d;

    invoke-direct {v3, v2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 8
    iget-object v2, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v3, v2, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 9
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    .line 10
    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p0

    const-string v3, "enhanced_search_value"

    invoke-virtual {v2, v3, p0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    new-instance p0, Ln3/m0/f;

    invoke-direct {p0, v2}, Ln3/m0/f;-><init>(Ljava/util/Map;)V

    .line 12
    invoke-static {p0}, Ln3/m0/f;->g(Ln3/m0/f;)[B

    .line 13
    iget-object v2, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p0, v2, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 14
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p0

    check-cast p0, Ln3/m0/r;

    const-string v1, "EnhancedSearchStateWorker"

    .line 15
    invoke-virtual {p1, v1, v0, p0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 14

    .line 1
    iget-object v0, p0, Lcom/truecaller/ugc/EnhancedSearchStateWorker;->a:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    const-string v1, "Result.success()"

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 3
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 4
    :cond_0
    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v2, "enhanced_search_value"

    const/4 v3, 0x0

    invoke-virtual {v0, v2, v3}, Ln3/m0/f;->b(Ljava/lang/String;Z)Z

    move-result v0

    .line 5
    :try_start_0
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->PHONEBOOK:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v4, Le/a/n5/a;

    invoke-static {v2, v4}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/n5/a;

    .line 6
    sget-object v4, Le/a/b0/b/a/c;->a:Lu3/c0;

    const-string v5, "{}"

    const-string v6, "$this$toRequestBody"

    .line 7
    invoke-static {v5, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    sget-object v7, Ls1/f0/b;->a:Ljava/nio/charset/Charset;

    if-eqz v4, :cond_2

    .line 9
    sget-object v8, Lu3/c0;->d:Ljava/util/regex/Pattern;

    const/4 v8, 0x0

    .line 10
    invoke-virtual {v4, v8}, Lu3/c0;->a(Ljava/nio/charset/Charset;)Ljava/nio/charset/Charset;

    move-result-object v8

    if-nez v8, :cond_1

    .line 11
    sget-object v8, Lu3/c0;->f:Lu3/c0$a;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v4, "; charset=utf-8"

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v4

    goto :goto_0

    :cond_1
    move-object v7, v8

    .line 12
    :cond_2
    :goto_0
    invoke-virtual {v5, v7}, Ljava/lang/String;->getBytes(Ljava/nio/charset/Charset;)[B

    move-result-object v5

    const-string v7, "(this as java.lang.String).getBytes(charset)"

    invoke-static {v5, v7}, Ls1/z/c/l;->b(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v7, v5

    .line 14
    invoke-static {v5, v6}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    array-length v6, v5

    int-to-long v8, v6

    int-to-long v10, v3

    int-to-long v12, v7

    invoke-static/range {v8 .. v13}, Lu3/p0/c;->c(JJJ)V

    .line 16
    new-instance v6, Lu3/j0$a$a;

    invoke-direct {v6, v5, v4, v7, v3}, Lu3/j0$a$a;-><init>([BLu3/c0;II)V

    .line 17
    invoke-interface {v2, v0, v6}, Le/a/n5/a;->a(ZLu3/j0;)Lx3/b;

    move-result-object v0

    .line 18
    invoke-interface {v0}, Lx3/b;->execute()Lx3/a0;

    move-result-object v0

    const-string v2, "response"

    .line 19
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lx3/a0;->b()Z

    move-result v2

    if-eqz v2, :cond_4

    .line 20
    iget-object v0, v0, Lx3/a0;->b:Ljava/lang/Object;

    .line 21
    check-cast v0, Le/a/b0/b/m/a;

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Le/a/b0/b/m/a;->a()Le/a/b0/b/m/b;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {v0}, Le/a/b0/b/m/b;->a()Z

    move-result v3

    .line 22
    :cond_3
    iget-object v0, p0, Lcom/truecaller/ugc/EnhancedSearchStateWorker;->b:Le/a/n5/g;

    const-string v2, "backup"

    invoke-interface {v0, v2, v3}, Le/a/n5/g;->putBoolean(Ljava/lang/String;Z)V

    .line 23
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 24
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    .line 25
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    goto :goto_1

    :catch_1
    move-exception v0

    .line 26
    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    .line 27
    :cond_4
    :goto_1
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v1, "Result.retry()"

    .line 28
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
