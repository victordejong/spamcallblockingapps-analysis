.class public Le/a/z0;
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
    iput-object p1, p0, Le/a/z0;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/z0;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    new-instance v1, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;

    iget-object v0, v0, Le/a/r1;->sa:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/j/c/b;

    invoke-direct {v1, p1, p2, v0}, Lcom/truecaller/surveys/data/PostSurveyAnswersWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/j/c/b;)V

    return-object v1
.end method
