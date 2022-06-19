.class public final Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;
.super Landroidx/work/Worker;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0005\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\t\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B5\u0008\u0001\u0012\u0008\u0008\u0001\u0010.\u001a\u00020-\u0012\u0008\u0008\u0001\u00100\u001a\u00020/\u0012\u0006\u0010\u001d\u001a\u00020\u001a\u0012\u0006\u0010\u0013\u001a\u00020\u0010\u0012\u0006\u0010&\u001a\u00020#\u00a2\u0006\u0004\u00081\u00102J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u001f\u0010\n\u001a\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0006\u0010\u0007\u001a\u0004\u0008\u0008\u0010\tR\u001d\u0010\u000f\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0007\u001a\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0013\u001a\u00020\u00108\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0011\u0010\u0012R\u001f\u0010\u0016\u001a\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0014\u0010\u0007\u001a\u0004\u0008\u0015\u0010\tR\u001f\u0010\u0019\u001a\u0004\u0018\u00010\u00058B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0007\u001a\u0004\u0008\u0018\u0010\tR\u0016\u0010\u001d\u001a\u00020\u001a8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u001cR\u001d\u0010\"\u001a\u00020\u001e8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u001f\u0010\u0007\u001a\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%R\u001d\u0010)\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\'\u0010\u0007\u001a\u0004\u0008(\u0010\u000eR\u001d\u0010,\u001a\u00020\u000b8B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008*\u0010\u0007\u001a\u0004\u0008+\u0010\u000e\u00a8\u00063"
    }
    d2 = {
        "Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;",
        "Landroidx/work/Worker;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "",
        "d",
        "Ls1/g;",
        "getSuggestedName",
        "()Ljava/lang/String;",
        "suggestedName",
        "",
        "e",
        "getSuggestedType",
        "()I",
        "suggestedType",
        "Le/a/q/h/f;",
        "i",
        "Le/a/q/h/f;",
        "contactFeedbackRepository",
        "c",
        "getExternalOriginalName",
        "externalOriginalName",
        "g",
        "getNameElectionAlgo",
        "nameElectionAlgo",
        "Le/a/p5/c;",
        "h",
        "Le/a/p5/c;",
        "clock",
        "",
        "a",
        "getAggregatedContactId",
        "()J",
        "aggregatedContactId",
        "Le/a/k3/j/b;",
        "j",
        "Le/a/k3/j/b;",
        "aggregatedContactDao",
        "f",
        "getNameSource",
        "nameSource",
        "b",
        "getFeedbackType",
        "feedbackType",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/p5/c;Le/a/q/h/f;Le/a/k3/j/b;)V",
        "contact-feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Le/a/p5/c;

.field public final i:Le/a/q/h/f;

.field public final j:Le/a/k3/j/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/p5/c;Le/a/q/h/f;Le/a/k3/j/b;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactFeedbackRepository"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "aggregatedContactDao"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->h:Le/a/p5/c;

    iput-object p4, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->i:Le/a/q/h/f;

    iput-object p5, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->j:Le/a/k3/j/b;

    .line 2
    new-instance p1, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$c;

    invoke-direct {p1, p0}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$c;-><init>(Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->a:Ls1/g;

    .line 3
    new-instance p1, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$b;

    const/4 p2, 0x0

    invoke-direct {p1, p2, p0}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$b;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->b:Ls1/g;

    .line 4
    new-instance p1, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;

    invoke-direct {p1, p2, p0}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->c:Ls1/g;

    .line 5
    new-instance p1, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;

    const/4 p2, 0x2

    invoke-direct {p1, p2, p0}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->d:Ls1/g;

    .line 6
    new-instance p1, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$b;

    invoke-direct {p1, p2, p0}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$b;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->e:Ls1/g;

    .line 7
    new-instance p1, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$b;

    const/4 p2, 0x1

    invoke-direct {p1, p2, p0}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$b;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->f:Ls1/g;

    .line 8
    new-instance p1, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;

    invoke-direct {p1, p2, p0}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;->g:Ls1/g;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker$d;-><init>(Lcom/truecaller/contactfeedback/workers/AddContactFeedbackWorker;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runBlocking {\n          \u2026esult.success()\n        }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/ListenableWorker$a;

    return-object v0
.end method
