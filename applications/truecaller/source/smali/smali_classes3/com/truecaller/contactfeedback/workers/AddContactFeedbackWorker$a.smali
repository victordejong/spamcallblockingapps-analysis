.class public final Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/p5/c;Le/a/q/h/f;Le/a/k3/j/b;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;->b:I

    iput-object p2, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "suggested_name"

    invoke-virtual {v0, v1}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "name_election_algo"

    invoke-virtual {v0, v1}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-string v1, "original_name"

    invoke-virtual {v0, v1}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
