.class public Le/a/q1;
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
    iput-object p1, p0, Le/a/q1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/q1;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    new-instance v9, Lcom/truecaller/insights/workers/InsightsReSyncWorker;

    iget-object v1, v0, Le/a/r1;->T:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/a/q2/a;

    iget-object v1, v0, Le/a/r1;->S0:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v5, v1

    check-cast v5, Le/a/u3/g;

    iget-object v1, v0, Le/a/r1;->H3:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/a/c/b/j;

    invoke-virtual {v0}, Le/a/r1;->Za()Le/a/c/i/m/g;

    move-result-object v7

    iget-object v0, v0, Le/a/r1;->la:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/c/i/m/c;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/insights/workers/InsightsReSyncWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q2/a;Le/a/u3/g;Le/a/c/b/j;Le/a/c/i/m/f;Le/a/c/i/m/c;)V

    return-object v9
.end method
