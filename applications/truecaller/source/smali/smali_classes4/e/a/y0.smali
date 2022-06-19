.class public Le/a/y0;
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
    iput-object p1, p0, Le/a/y0;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/y0;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;

    invoke-direct {v1, p1, p2}, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 5
    new-instance p1, Le/a/d/y/c/j;

    iget-object p2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {p2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object p2

    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    .line 6
    new-instance v3, Le/a/d/y/c/d;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v0}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Le/a/d/y/c/d;-><init>(Landroid/content/Context;Le/a/d/c0/j1;)V

    .line 7
    new-instance v4, Le/a/d/c0/m0;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v5

    iget-object v6, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v6}, Le/a/e/a2;->V(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v6

    invoke-direct {v4, v5, v6}, Le/a/d/c0/m0;-><init>(Landroid/content/Context;Ls1/w/f;)V

    .line 8
    invoke-direct {p1, p2, v2, v3, v4}, Le/a/d/y/c/j;-><init>(Ls1/w/f;Ls1/w/f;Le/a/d/y/c/f;Le/a/d/c0/m0;)V

    .line 9
    iput-object p1, v1, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->a:Le/a/d/y/c/g;

    .line 10
    invoke-virtual {v0}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object p1

    .line 11
    iput-object p1, v1, Lcom/truecaller/voip/notification/missed/MissedVoipCallsWorker;->b:Le/a/d/c0/j1;

    return-object v1
.end method
