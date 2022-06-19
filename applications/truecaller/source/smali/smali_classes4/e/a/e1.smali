.class public Le/a/e1;
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
    iput-object p1, p0, Le/a/e1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/e1;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;

    invoke-direct {v1, p1, p2}, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 5
    iget-object p1, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/q2/a;

    .line 6
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->a:Le/a/q2/a;

    .line 7
    iget-object p1, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/u3/g;

    .line 8
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->b:Le/a/u3/g;

    .line 9
    iget-object p1, v0, Le/a/r1;->r6:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k/c/q;

    .line 10
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->c:Le/a/k/c/q;

    .line 11
    invoke-virtual {v0}, Le/a/r1;->Ic()Le/a/k/i;

    move-result-object p1

    .line 12
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->d:Le/a/k/h;

    .line 13
    invoke-virtual {v0}, Le/a/r1;->A9()Le/a/k/f;

    move-result-object p1

    .line 14
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->e:Le/a/k/d;

    .line 15
    iget-object p1, v0, Le/a/r1;->t6:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/k/q/e;

    .line 16
    iput-object p1, v1, Lcom/truecaller/videocallerid/worker/VideoCallerIdCachingWorker;->f:Le/a/k/q/e;

    return-object v1
.end method
