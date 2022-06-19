.class public Le/a/n1;
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
    iput-object p1, p0, Le/a/n1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/n1;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    new-instance v1, Lcom/truecaller/ugc/EnhancedSearchStateWorker;

    iget-object v2, v0, Le/a/r1;->X:Ljavax/inject/Provider;

    invoke-interface {v2}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/b0/e/l;

    iget-object v0, v0, Le/a/r1;->m1:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/n5/g;

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/truecaller/ugc/EnhancedSearchStateWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/b0/e/l;Le/a/n5/g;)V

    return-object v1
.end method
