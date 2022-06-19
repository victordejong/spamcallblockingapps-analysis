.class public Le/a/k1;
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
    iput-object p1, p0, Le/a/k1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/k1;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    new-instance v9, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;

    iget-object v1, v0, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/a/b0/e/l;

    invoke-virtual {v0}, Le/a/r1;->E3()Le/a/u3/g;

    move-result-object v5

    iget-object v1, v0, Le/a/r1;->s5:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v6, v1

    check-cast v6, Le/a/d3/d;

    iget-object v1, v0, Le/a/r1;->p5:Ljavax/inject/Provider;

    invoke-interface {v1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Le/a/d3/b;

    iget-object v0, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, Le/a/b0/o/a;

    move-object v1, v9

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/businesscard/BusinessCardBackgroundWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/u3/g;Le/a/d3/d;Le/a/d3/b;Le/a/b0/o/a;)V

    return-object v9
.end method
