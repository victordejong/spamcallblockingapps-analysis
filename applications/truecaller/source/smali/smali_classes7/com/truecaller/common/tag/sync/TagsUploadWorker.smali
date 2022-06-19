.class public final Lcom/truecaller/common/tag/sync/TagsUploadWorker;
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
        "Lcom/truecaller/common/tag/sync/TagsUploadWorker;",
        "Landroidx/work/Worker;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/b0/e/l;",
        "a",
        "Le/a/b0/e/l;",
        "accountManager",
        "Le/a/b0/p/d;",
        "b",
        "Le/a/b0/p/d;",
        "tagManager",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/b0/p/d;)V",
        "common_release"
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

.field public final b:Le/a/b0/p/d;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/b0/p/d;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "tagManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/common/tag/sync/TagsUploadWorker;->a:Le/a/b0/e/l;

    iput-object p4, p0, Lcom/truecaller/common/tag/sync/TagsUploadWorker;->b:Le/a/b0/p/d;

    return-void
.end method

.method public static final n(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p0

    .line 3
    sget-object v0, Ln3/m0/h;->a:Ln3/m0/h;

    .line 4
    new-instance v1, Ln3/m0/r$a;

    const-class v2, Lcom/truecaller/common/tag/sync/TagsUploadWorker;

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
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    check-cast v1, Ln3/m0/r;

    const-string v2, "TagsUploadWorker"

    .line 10
    invoke-virtual {p0, v2, v0, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/tag/sync/TagsUploadWorker;->a:Le/a/b0/e/l;

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
    iget-object v0, p0, Lcom/truecaller/common/tag/sync/TagsUploadWorker;->b:Le/a/b0/p/d;

    invoke-interface {v0}, Le/a/b0/p/d;->e()Z

    move-result v0

    .line 5
    iget-object v2, p0, Lcom/truecaller/common/tag/sync/TagsUploadWorker;->b:Le/a/b0/p/d;

    invoke-interface {v2}, Le/a/b0/p/d;->k()Z

    move-result v2

    if-eqz v0, :cond_1

    if-eqz v2, :cond_1

    .line 6
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 7
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 8
    :cond_1
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v1, "Result.retry()"

    .line 9
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
