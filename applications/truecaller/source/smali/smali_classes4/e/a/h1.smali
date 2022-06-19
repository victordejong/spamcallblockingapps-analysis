.class public Le/a/h1;
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
    iput-object p1, p0, Le/a/h1;->a:Le/a/r1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;Landroidx/work/WorkerParameters;)Landroidx/work/ListenableWorker;
    .locals 8

    .line 1
    iget-object v0, p0, Le/a/h1;->a:Le/a/r1;

    .line 2
    iget-object v0, v0, Le/a/r1;->P:Le/a/r1;

    .line 3
    new-instance v7, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    new-instance v4, Le/a/p5/d;

    invoke-direct {v4}, Le/a/p5/d;-><init>()V

    invoke-virtual {v0}, Le/a/r1;->R9()Le/a/q/h/g;

    move-result-object v5

    invoke-virtual {v0}, Le/a/r1;->R6()Le/a/k3/j/b;

    move-result-object v6

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    invoke-direct/range {v1 .. v6}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/p5/c;Le/a/q/h/f;Le/a/k3/j/b;)V

    return-object v7
.end method
