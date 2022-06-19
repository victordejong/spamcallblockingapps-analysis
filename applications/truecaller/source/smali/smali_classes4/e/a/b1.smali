.class public Le/a/b1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/s/a/b;


# instance fields
.field public final synthetic a:Le/a/r1;


# direct methods
.method public constructor <init>(Le/a/r1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/b1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/b1;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;

    invoke-direct {v1, p1, p2}, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 5
    invoke-virtual {v0}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object p1

    .line 6
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;->a:Le/a/k/c/r0;

    .line 7
    iget-object p1, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/u3/g;

    .line 8
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;->b:Le/a/u3/g;

    .line 9
    iget-object p1, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a;

    .line 10
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;->c:Le/a/q2/a;

    .line 11
    new-instance p1, Le/a/k/c/l0;

    invoke-virtual {v0}, Le/a/r1;->Lc()Le/a/k/k;

    move-result-object v3

    invoke-virtual {v0}, Le/a/r1;->Kc()Le/a/k/c/n1;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->tb()Le/a/k/c/e0;

    move-result-object v5

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v0}, Le/a/r1;->Hc()Le/a/k/c/s0;

    move-result-object v7

    move-object v2, p1

    invoke-direct/range {v2 .. v7}, Le/a/k/c/l0;-><init>(Le/a/k/j;Le/a/k/c/k1;Le/a/k/c/d0;Landroid/content/Context;Le/a/k/c/r0;)V

    .line 12
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/ShareVideoUpdateWorker;->d:Le/a/k/c/k0;

    return-object v1
.end method
