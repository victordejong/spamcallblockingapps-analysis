.class public final Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$c;
.super Ls1/z/c/m;
.source "SourceFile"

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
        "Ljava/lang/Long;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;


# direct methods
.method public constructor <init>(Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$c;->b:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$c;->b:Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;

    invoke-virtual {v0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v0

    const-wide/16 v1, -0x1

    const-string v3, "contact_aggregated_id"

    invoke-virtual {v0, v3, v1, v2}, Ln3/m0/f;->e(Ljava/lang/String;J)J

    move-result-wide v0

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    return-object v0
.end method
