.class public Le/a/o1;
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
    iput-object p1, p0, Le/a/o1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/o1;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    new-instance v1, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;

    invoke-virtual {v0}, Le/a/r1;->mc()Le/a/x4/k/f;

    move-result-object v2

    iget-object v0, v0, Le/a/r1;->Y:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/b0/o/a;

    invoke-direct {v1, p1, p2, v2, v0}, Lcom/truecaller/searchwarnings/supernova/GetSupernovaSettingsWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/x4/k/c;Le/a/b0/o/a;)V

    return-object v1
.end method
