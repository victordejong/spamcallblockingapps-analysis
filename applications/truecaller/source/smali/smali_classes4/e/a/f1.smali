.class public Le/a/f1;
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
    iput-object p1, p0, Le/a/f1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/f1;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;

    invoke-direct {v1, p1, p2}, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 5
    new-instance p1, Le/a/d/y/a/g;

    .line 6
    new-instance p2, Le/a/d/y/a/h;

    invoke-virtual {v0}, Le/a/r1;->j()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p2, v2}, Le/a/d/y/a/h;-><init>(Landroid/content/Context;)V

    .line 7
    iget-object v2, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v2}, Le/a/e/a2;->X(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v2

    iget-object v3, v0, Le/a/r1;->f:Le/a/p5/q0/b;

    invoke-static {v3}, Le/a/e/a2;->W(Le/a/p5/q0/b;)Ls1/w/f;

    move-result-object v3

    invoke-direct {p1, p2, v2, v3}, Le/a/d/y/a/g;-><init>(Le/a/d/y/a/d;Ls1/w/f;Ls1/w/f;)V

    .line 8
    iput-object p1, v1, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->a:Le/a/d/y/a/c;

    .line 9
    invoke-virtual {v0}, Le/a/r1;->Wc()Le/a/d/m;

    move-result-object p1

    .line 10
    iput-object p1, v1, Lcom/truecaller/voip/notification/blocked/VoipBlockedCallsWorker;->b:Le/a/d/c0/j1;

    return-object v1
.end method
