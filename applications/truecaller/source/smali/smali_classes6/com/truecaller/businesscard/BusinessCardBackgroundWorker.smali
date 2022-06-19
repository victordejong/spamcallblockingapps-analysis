.class public final Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;
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
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001BG\u0008\u0001\u0012\u0008\u0008\u0001\u0010\u001a\u001a\u00020\u0019\u0012\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u001b\u0012\u0006\u0010\u0010\u001a\u00020\r\u0012\u0008\u0008\u0001\u0010\u0014\u001a\u00020\u0011\u0012\u0006\u0010\u0018\u001a\u00020\u0015\u0012\u0006\u0010\u000c\u001a\u00020\t\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\u001d\u0010\u001eJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007R\u0016\u0010\u000c\u001a\u00020\t8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\n\u0010\u000bR\u0016\u0010\u0010\u001a\u00020\r8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000e\u0010\u000fR\u0016\u0010\u0014\u001a\u00020\u00118\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0012\u0010\u0013R\u0016\u0010\u0018\u001a\u00020\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0017\u00a8\u0006\u001f"
    }
    d2 = {
        "Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;",
        "Landroidx/work/Worker;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/b0/o/a;",
        "e",
        "Le/a/b0/o/a;",
        "coreSettings",
        "Le/a/d3/b;",
        "d",
        "Le/a/d3/b;",
        "businessCardIOUtils",
        "Le/a/b0/e/l;",
        "a",
        "Le/a/b0/e/l;",
        "accountManager",
        "Le/a/u3/g;",
        "b",
        "Le/a/u3/g;",
        "featuresRegistry",
        "Le/a/d3/d;",
        "c",
        "Le/a/d3/d;",
        "businessCardManager",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/u3/g;Le/a/d3/d;Le/a/d3/b;Le/a/b0/o/a;)V",
        "businesscard_release"
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

.field public final b:Le/a/u3/g;

.field public final c:Le/a/d3/d;

.field public final d:Le/a/d3/b;

.field public final e:Le/a/b0/o/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/u3/g;Le/a/d3/d;Le/a/d3/b;Le/a/b0/o/a;)V
    .locals 1
    .param p4    # Le/a/u3/g;
        .annotation runtime Ljavax/inject/Named;
            value = "features_registry"
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCardManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "businessCardIOUtils"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->a:Le/a/b0/e/l;

    iput-object p4, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->b:Le/a/u3/g;

    iput-object p5, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->c:Le/a/d3/d;

    iput-object p6, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->d:Le/a/d3/b;

    iput-object p7, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->e:Le/a/b0/o/a;

    return-void
.end method

.method public static final n(J)V
    .locals 4

    .line 1
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 2
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 3
    sget-object v1, Ln3/m0/h;->a:Ln3/m0/h;

    .line 4
    new-instance v2, Ln3/m0/r$a;

    const-class v3, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;

    invoke-direct {v2, v3}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 5
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v2, p0, p1, v3}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object p0

    check-cast p0, Ln3/m0/r$a;

    .line 6
    new-instance p1, Ln3/m0/d$a;

    invoke-direct {p1}, Ln3/m0/d$a;-><init>()V

    sget-object v2, Ln3/m0/q;->b:Ln3/m0/q;

    .line 7
    iput-object v2, p1, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 8
    new-instance v2, Ln3/m0/d;

    invoke-direct {v2, p1}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 9
    iget-object p1, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v2, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 10
    invoke-virtual {p0}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object p0

    check-cast p0, Ln3/m0/r;

    const-string p1, "BusinessCardBackgroundWorker"

    .line 11
    invoke-virtual {v0, p1, v1, p0}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->a:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    const-string v1, "Result.success()"

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->b:Le/a/u3/g;

    invoke-virtual {v0}, Le/a/u3/g;->f0()Le/a/u3/b;

    move-result-object v0

    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->e:Le/a/b0/o/a;

    invoke-static {v0}, Le/a/l4/k;->I(Le/a/b0/o/a;)Ljava/lang/String;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-eqz v0, :cond_1

    goto/16 :goto_1

    .line 2
    :cond_1
    iget-object v0, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->c:Le/a/d3/d;

    invoke-interface {v0}, Le/a/d3/d;->b()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 3
    iget-object v0, p0, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;->d:Le/a/d3/b;

    invoke-interface {v0}, Le/a/d3/b;->a()Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;->getMetadata()Lcom/truecaller/api/services/callerid/v1/model/SignatureMetadata;

    move-result-object v2

    const-string v3, "it.metadata"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/api/services/callerid/v1/model/SignatureMetadata;->getExpireDate()I

    move-result v2

    int-to-long v4, v2

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/SignedBusinessCard;->getMetadata()Lcom/truecaller/api/services/callerid/v1/model/SignatureMetadata;

    move-result-object v0

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/api/services/callerid/v1/model/SignatureMetadata;->getIssueDate()I

    move-result v0

    int-to-long v2, v0

    sub-long/2addr v4, v2

    .line 5
    sget-object v0, Ljava/util/concurrent/TimeUnit;->DAYS:Ljava/util/concurrent/TimeUnit;

    const-wide/16 v2, 0x1

    invoke-virtual {v0, v2, v3}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide v2

    sub-long/2addr v4, v2

    .line 6
    invoke-static {}, Le/a/b0/g/a;->L()Le/a/b0/g/a;

    move-result-object v0

    .line 7
    invoke-static {v0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object v0

    .line 8
    sget-object v2, Ln3/m0/h;->a:Ln3/m0/h;

    .line 9
    new-instance v3, Ln3/m0/r$a;

    const-class v6, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;

    invoke-direct {v3, v6}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 10
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v4, v5, v6}, Ln3/m0/z$a;->f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;

    move-result-object v3

    check-cast v3, Ln3/m0/r$a;

    .line 11
    new-instance v4, Ln3/m0/d$a;

    invoke-direct {v4}, Ln3/m0/d$a;-><init>()V

    sget-object v5, Ln3/m0/q;->b:Ln3/m0/q;

    .line 12
    iput-object v5, v4, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 13
    new-instance v5, Ln3/m0/d;

    invoke-direct {v5, v4}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 14
    iget-object v4, v3, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v5, v4, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 15
    invoke-virtual {v3}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v3

    check-cast v3, Ln3/m0/r;

    const-string v4, "BusinessCardBackgroundWorker"

    .line 16
    invoke-virtual {v0, v4, v2, v3}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    .line 17
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 18
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 19
    :cond_2
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 20
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 21
    :cond_3
    new-instance v0, Landroidx/work/ListenableWorker$a$b;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$b;-><init>()V

    const-string v1, "Result.retry()"

    .line 22
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 23
    :cond_4
    :goto_1
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 24
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
