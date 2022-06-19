.class public final Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;
.super Lcom/truecaller/background_work/TrackedWorker;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0018\u0000 /2\u00020\u0001:\u0001\tB\u0017\u0012\u0006\u0010*\u001a\u00020)\u0012\u0006\u0010,\u001a\u00020+\u00a2\u0006\u0004\u0008-\u0010.J\u000f\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007R\"\u0010\u000f\u001a\u00020\u00088\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\t\u0010\n\u001a\u0004\u0008\u000b\u0010\u000c\"\u0004\u0008\r\u0010\u000eR(\u0010\u0018\u001a\u0008\u0012\u0004\u0012\u00020\u00110\u00108\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0014\u0010\u0015\"\u0004\u0008\u0016\u0010\u0017R\"\u0010 \u001a\u00020\u00198\u0000@\u0000X\u0081.\u00a2\u0006\u0012\n\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u001c\u0010\u001d\"\u0004\u0008\u001e\u0010\u001fR\"\u0010(\u001a\u00020!8\u0016@\u0016X\u0097.\u00a2\u0006\u0012\n\u0004\u0008\"\u0010#\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'\u00a8\u00060"
    }
    d2 = {
        "Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;",
        "Lcom/truecaller/background_work/TrackedWorker;",
        "",
        "q",
        "()Z",
        "Landroidx/work/ListenableWorker$a;",
        "r",
        "()Landroidx/work/ListenableWorker$a;",
        "Le/a/q2/a;",
        "a",
        "Le/a/q2/a;",
        "n",
        "()Le/a/q2/a;",
        "setAnalytics",
        "(Le/a/q2/a;)V",
        "analytics",
        "Ljavax/inject/Provider;",
        "Le/a/a/r0/c;",
        "c",
        "Ljavax/inject/Provider;",
        "getSpamSearcher$truecaller_googlePlayRelease",
        "()Ljavax/inject/Provider;",
        "setSpamSearcher$truecaller_googlePlayRelease",
        "(Ljavax/inject/Provider;)V",
        "spamSearcher",
        "Le/a/a/r0/a;",
        "d",
        "Le/a/a/r0/a;",
        "getSpamSearchTrigger$truecaller_googlePlayRelease",
        "()Le/a/a/r0/a;",
        "setSpamSearchTrigger$truecaller_googlePlayRelease",
        "(Le/a/a/r0/a;)V",
        "spamSearchTrigger",
        "Le/a/u3/g;",
        "b",
        "Le/a/u3/g;",
        "o",
        "()Le/a/u3/g;",
        "setFeaturesRegistry",
        "(Le/a/u3/g;)V",
        "featuresRegistry",
        "Landroid/content/Context;",
        "context",
        "Landroidx/work/WorkerParameters;",
        "params",
        "<init>",
        "(Landroid/content/Context;Landroidx/work/WorkerParameters;)V",
        "e",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final e:Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$a;


# instance fields
.field public a:Le/a/q2/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/u3/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Ljavax/inject/Provider;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavax/inject/Provider<",
            "Le/a/a/r0/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/a/r0/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;->e:Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$a;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/truecaller/background_work/TrackedWorker;-><init>(Landroid/content/Context;Landroidx/work/WorkerParameters;)V

    .line 2
    sget-object p1, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {p1}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object p1

    invoke-interface {p1, p0}, Le/a/k2;->H(Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;)V

    return-void
.end method


# virtual methods
.method public n()Le/a/q2/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;->a:Le/a/q2/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "analytics"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public o()Le/a/u3/g;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;->b:Le/a/u3/g;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "featuresRegistry"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;->d:Le/a/a/r0/a;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/a/r0/a;->b()Z

    move-result v0

    return v0

    :cond_0
    const-string v0, "spamSearchTrigger"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public r()Landroidx/work/ListenableWorker$a;
    .locals 3

    .line 1
    new-instance v0, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker$b;-><init>(Lcom/truecaller/messaging/conversationlist/ConversationSpamSearchWorker;Ls1/w/d;)V

    const/4 v2, 0x1

    invoke-static {v1, v0, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "runBlocking { if (spamSe\u2026) else Result.failure() }"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroidx/work/ListenableWorker$a;

    return-object v0
.end method
