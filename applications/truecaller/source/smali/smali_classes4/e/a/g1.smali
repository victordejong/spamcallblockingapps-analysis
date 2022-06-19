.class public Le/a/g1;
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
    iput-object p1, p0, Le/a/g1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g1;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    new-instance v1, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;

    invoke-virtual {v0}, Le/a/r1;->M9()Le/a/q/f/g;

    move-result-object v0

    invoke-direct {v1, p1, p2, v0}, Lcom/truecaller/contactfeedback/workers/VoteCommentWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q/f/a;)V

    return-object v1
.end method
