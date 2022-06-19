.class public final Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker;
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
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0007\u0018\u00002\u00020\u0001B%\u0008\u0001\u0012\u0008\u0008\u0001\u0010\n\u001a\u00020\t\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u000b\u0012\u0006\u0010\u0008\u001a\u00020\u0005\u00a2\u0006\u0004\u0008\r\u0010\u000eJ\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R\u0016\u0010\u0008\u001a\u00020\u00058\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0006\u0010\u0007\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker;",
        "Landroidx/work/Worker;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/q/h/f;",
        "a",
        "Le/a/q/h/f;",
        "contactFeedbackRepository",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q/h/f;)V",
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
.field public final a:Le/a/q/h/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;Le/a/q/h/f;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactFeedbackRepository"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    iput-object p3, p0, Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker;->a:Le/a/q/h/f;

    return-void
.end method

.method public static final n(Landroid/content/Context;)V
    .locals 4

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p0}, Ln3/m0/c0/l;->n(Landroid/content/Context;)Ln3/m0/c0/l;

    move-result-object p0

    .line 3
    sget-object v0, Ln3/m0/h;->a:Ln3/m0/h;

    .line 4
    new-instance v1, Ln3/m0/r$a;

    const-class v2, Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker;

    invoke-direct {v1, v2}, Ln3/m0/r$a;-><init>(Ljava/lang/Class;)V

    .line 5
    new-instance v2, Ln3/m0/d$a;

    invoke-direct {v2}, Ln3/m0/d$a;-><init>()V

    sget-object v3, Ln3/m0/q;->b:Ln3/m0/q;

    .line 6
    iput-object v3, v2, Ln3/m0/d$a;->c:Ln3/m0/q;

    .line 7
    new-instance v3, Ln3/m0/d;

    invoke-direct {v3, v2}, Ln3/m0/d;-><init>(Ln3/m0/d$a;)V

    .line 8
    iget-object v2, v1, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object v3, v2, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 9
    invoke-virtual {v1}, Ln3/m0/z$a;->b()Ln3/m0/z;

    move-result-object v1

    const-string v2, "OneTimeWorkRequest.Build\u2026d())\n            .build()"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v1, Ln3/m0/r;

    const-string v2, "UploadContactFeedbackWorker"

    .line 10
    invoke-virtual {p0, v2, v0, v1}, Ln3/m0/y;->i(Ljava/lang/String;Ln3/m0/h;Ln3/m0/r;)Ln3/m0/s;

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker$a;-><init>(Lcom/truecaller/contactfeedback/workers/UploadContactFeedbackWorker;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runBlocking {\n          \u2026)\n            }\n        }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/ListenableWorker$a;

    return-object v0
.end method
