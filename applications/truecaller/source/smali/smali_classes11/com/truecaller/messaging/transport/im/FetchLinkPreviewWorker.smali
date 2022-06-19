.class public final Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;
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
        "\u0000V\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u00105\u001a\u000204\u0012\u0006\u00107\u001a\u000206\u00a2\u0006\u0004\u00088\u00109J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004R(\u0010\r\u001a\u0008\u0012\u0004\u0012\u00020\u00060\u00058\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0007\u0010\u0008\u001a\u0004\u0008\t\u0010\n\"\u0004\u0008\u000b\u0010\u000cR(\u0010\u0016\u001a\u0008\u0012\u0004\u0012\u00020\u000f0\u000e8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013\"\u0004\u0008\u0014\u0010\u0015R\"\u0010\u001e\u001a\u00020\u00178\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0018\u0010\u0019\u001a\u0004\u0008\u001a\u0010\u001b\"\u0004\u0008\u001c\u0010\u001dR\"\u0010&\u001a\u00020\u001f8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008 \u0010!\u001a\u0004\u0008\"\u0010#\"\u0004\u0008$\u0010%R\"\u0010.\u001a\u00020\'8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008(\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R.\u00103\u001a\u000e\u0012\n\u0012\u0008\u0012\u0004\u0012\u00020/0\u00050\u000e8\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u00080\u0010\u0011\u001a\u0004\u00081\u0010\u0013\"\u0004\u00082\u0010\u0015\u00a8\u0006:"
    }
    d2 = {
        "Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;",
        "Landroidx/work/Worker;",
        "Landroidx/work/ListenableWorker$a;",
        "doWork",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/r2/f;",
        "Le/a/a/g/m;",
        "a",
        "Le/a/r2/f;",
        "getMessagesStorage$truecaller_googlePlayRelease",
        "()Le/a/r2/f;",
        "setMessagesStorage$truecaller_googlePlayRelease",
        "(Le/a/r2/f;)V",
        "messagesStorage",
        "Lo3/a;",
        "Le/a/a/g/w;",
        "c",
        "Lo3/a;",
        "getReadMessageStorage$truecaller_googlePlayRelease",
        "()Lo3/a;",
        "setReadMessageStorage$truecaller_googlePlayRelease",
        "(Lo3/a;)V",
        "readMessageStorage",
        "Le/a/a/k/t;",
        "d",
        "Le/a/a/k/t;",
        "getTransportManager$truecaller_googlePlayRelease",
        "()Le/a/a/k/t;",
        "setTransportManager$truecaller_googlePlayRelease",
        "(Le/a/a/k/t;)V",
        "transportManager",
        "Le/a/q2/a;",
        "f",
        "Le/a/q2/a;",
        "getAnalytics$truecaller_googlePlayRelease",
        "()Le/a/q2/a;",
        "setAnalytics$truecaller_googlePlayRelease",
        "(Le/a/q2/a;)V",
        "analytics",
        "Le/a/a/v0/a;",
        "b",
        "Le/a/a/v0/a;",
        "getLinkMetaDataExtractor$truecaller_googlePlayRelease",
        "()Le/a/a/v0/a;",
        "setLinkMetaDataExtractor$truecaller_googlePlayRelease",
        "(Le/a/a/v0/a;)V",
        "linkMetaDataExtractor",
        "Le/a/a/k/i;",
        "e",
        "getMessagesProcessor$truecaller_googlePlayRelease",
        "setMessagesProcessor$truecaller_googlePlayRelease",
        "messagesProcessor",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "workerParams",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public a:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/a/g/m;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/a/v0/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/a/g/w;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/a/k/t;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/r2/f<",
            "Le/a/a/k/i;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "workerParams"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/work/Worker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    sget-object p1, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {p1}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/k2;->i(Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;)V

    return-void
.end method


# virtual methods
.method public doWork()Landroidx/work/ListenableWorker$a;
    .locals 8

    .line 1
    new-instance v0, Ls1/z/c/b0;

    invoke-direct {v0}, Ls1/z/c/b0;-><init>()V

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v1

    const-string v2, "message_id"

    const-wide/16 v3, -0x1

    invoke-virtual {v1, v2, v3, v4}, Ln3/m0/f;->e(Ljava/lang/String;J)J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->longValue()J

    move-result-wide v5

    cmp-long v2, v5, v3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    const/4 v5, 0x0

    if-eqz v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, v5

    :goto_1
    const-string v2, "Result.success()"

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v6

    iput-wide v6, v0, Ls1/z/c/b0;->a:J

    .line 2
    new-instance v1, Ls1/z/c/c0;

    invoke-direct {v1}, Ls1/z/c/c0;-><init>()V

    invoke-virtual {p0}, Landroidx/work/ListenableWorker;->getInputData()Ln3/m0/f;

    move-result-object v6

    const-string v7, "text"

    invoke-virtual {v6, v7}, Ln3/m0/f;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_8

    const-string v7, "it"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_2

    move v7, v4

    goto :goto_2

    :cond_2
    move v7, v3

    :goto_2
    if-eqz v7, :cond_3

    goto :goto_3

    :cond_3
    move-object v6, v5

    :goto_3
    if-eqz v6, :cond_8

    iput-object v6, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 3
    new-instance v6, Ls1/z/c/c0;

    invoke-direct {v6}, Ls1/z/c/c0;-><init>()V

    new-instance v7, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;

    invoke-direct {v7, p0, v1, v5}, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$b;-><init>(Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {v5, v7, v4, v5}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/linkpreviews/LinkMetaData;

    if-eqz v1, :cond_7

    iput-object v1, v6, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 4
    new-instance v1, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$a;

    invoke-direct {v1, p0, v0, v6, v5}, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker$a;-><init>(Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;Ls1/z/c/b0;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {v5, v1, v4, v5}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/data/types/Message;

    if-eqz v0, :cond_6

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->e:Lo3/a;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/r2/f;

    invoke-interface {v1}, Le/a/r2/f;->a()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/a/k/i;

    .line 6
    iget-object v4, p0, Lcom/truecaller/messaging/transport/im/FetchLinkPreviewWorker;->d:Le/a/a/k/t;

    if-eqz v4, :cond_4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Le/a/a/k/t;->x(I)Le/a/a/k/q;

    move-result-object v4

    .line 7
    new-instance v5, Landroid/content/Intent;

    const-string v6, "update_message"

    invoke-direct {v5, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v6, "message"

    invoke-virtual {v5, v6, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 8
    invoke-interface {v1, v4, v5, v3}, Le/a/a/k/i;->i(Le/a/a/k/q;Landroid/content/Intent;I)Le/a/r2/x;

    move-result-object v0

    .line 9
    invoke-virtual {v0}, Le/a/r2/x;->c()Ljava/lang/Object;

    .line 10
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 11
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    :cond_4
    const-string v0, "transportManager"

    .line 12
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    :cond_5
    const-string v0, "messagesProcessor"

    .line 13
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 14
    :cond_6
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 15
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 16
    :cond_7
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 17
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 18
    :cond_8
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 19
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0

    .line 20
    :cond_9
    new-instance v0, Landroidx/work/ListenableWorker$a$c;

    invoke-direct {v0}, Landroidx/work/ListenableWorker$a$c;-><init>()V

    .line 21
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
