.class public final Lcom/truecaller/service/MissedCallsNotificationService;
.super Ln3/k/a/a0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/service/MissedCallsNotificationService$b;,
        Lcom/truecaller/service/MissedCallsNotificationService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0092\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0008\u0018\u00002\u00020\u0001:\u0002\u0003\u001cB\u0007\u00a2\u0006\u0004\u0008a\u0010\u0007J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u000f\u0010\u0006\u001a\u00020\u0005H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J\u0017\u0010\n\u001a\u00020\u00052\u0006\u0010\t\u001a\u00020\u0008H\u0014\u00a2\u0006\u0004\u0008\n\u0010\u000bJ#\u0010\u0010\u001a\u00020\u00052\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000f\u001a\u00020\u000eH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0010\u0010\u0011J\u001b\u0010\u0014\u001a\u00020\u000c2\u0006\u0010\u0013\u001a\u00020\u0012H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u001f\u0010\u0018\u001a\u0004\u0018\u00010\u000c2\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0016H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u001f\u0010\u001c\u001a\u0004\u0018\u00010\u000e2\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\u001c\u0010\u001dJ#\u0010 \u001a\u00020\u00052\u0006\u0010\u0013\u001a\u00020\u00122\u0006\u0010\u001f\u001a\u00020\u001eH\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008 \u0010!R(\u0010)\u001a\u00020\"8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u001c\u0010#\u0012\u0004\u0008(\u0010\u0007\u001a\u0004\u0008$\u0010%\"\u0004\u0008&\u0010\'R\"\u00101\u001a\u00020*8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008+\u0010,\u001a\u0004\u0008-\u0010.\"\u0004\u0008/\u00100R\"\u00108\u001a\u0002028\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008 \u00103\u001a\u0004\u00084\u00105\"\u0004\u00086\u00107R(\u0010<\u001a\u00020\"8\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u0003\u0010#\u0012\u0004\u0008;\u0010\u0007\u001a\u0004\u00089\u0010%\"\u0004\u0008:\u0010\'R\"\u0010D\u001a\u00020=8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008>\u0010?\u001a\u0004\u0008@\u0010A\"\u0004\u0008B\u0010CR\"\u0010K\u001a\u00020E8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00089\u0010F\u001a\u0004\u0008G\u0010H\"\u0004\u0008I\u0010JR\"\u0010R\u001a\u00020L8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0010\u0010M\u001a\u0004\u0008N\u0010O\"\u0004\u0008P\u0010QR(\u0010Y\u001a\u0008\u0012\u0004\u0012\u00020T0S8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00084\u0010U\u001a\u0004\u0008>\u0010V\"\u0004\u0008W\u0010XR\"\u0010`\u001a\u00020Z8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0014\u0010[\u001a\u0004\u0008\\\u0010]\"\u0004\u0008^\u0010_\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006b"
    }
    d2 = {
        "Lcom/truecaller/service/MissedCallsNotificationService;",
        "Ln3/k/a/a0;",
        "Ln3/k/a/q;",
        "a",
        "()Ln3/k/a/q;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "Landroid/content/Intent;",
        "intent",
        "onHandleWork",
        "(Landroid/content/Intent;)V",
        "Landroid/app/Notification;",
        "notification",
        "",
        "contextName",
        "i",
        "(Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;",
        "Le/a/l0/u/d/b;",
        "missedCalls",
        "g",
        "(Le/a/l0/u/d/b;Ls1/w/d;)Ljava/lang/Object;",
        "Lcom/truecaller/data/entity/HistoryEvent;",
        "missedCall",
        "j",
        "(Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)Ljava/lang/Object;",
        "Lcom/truecaller/data/entity/Contact;",
        "contact",
        "b",
        "(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;",
        "Landroid/content/Context;",
        "context",
        "f",
        "(Le/a/l0/u/d/b;Landroid/content/Context;Ls1/w/d;)Ljava/lang/Object;",
        "Ls1/w/f;",
        "Ls1/w/f;",
        "getCpuCoroutineContext",
        "()Ls1/w/f;",
        "setCpuCoroutineContext",
        "(Ls1/w/f;)V",
        "getCpuCoroutineContext$annotations",
        "cpuCoroutineContext",
        "Le/a/x4/g;",
        "h",
        "Le/a/x4/g;",
        "getSearchWarningsHelper",
        "()Le/a/x4/g;",
        "setSearchWarningsHelper",
        "(Le/a/x4/g;)V",
        "searchWarningsHelper",
        "Lcom/truecaller/settings/CallingSettings;",
        "Lcom/truecaller/settings/CallingSettings;",
        "c",
        "()Lcom/truecaller/settings/CallingSettings;",
        "setCallingSettings",
        "(Lcom/truecaller/settings/CallingSettings;)V",
        "callingSettings",
        "e",
        "setUiCoroutineContext",
        "getUiCoroutineContext$annotations",
        "uiCoroutineContext",
        "Le/a/i4/e;",
        "d",
        "Le/a/i4/e;",
        "getNotificationManager",
        "()Le/a/i4/e;",
        "setNotificationManager",
        "(Le/a/i4/e;)V",
        "notificationManager",
        "Le/a/h4/n;",
        "Le/a/h4/n;",
        "getSystemNotificationManager",
        "()Le/a/h4/n;",
        "setSystemNotificationManager",
        "(Le/a/h4/n;)V",
        "systemNotificationManager",
        "Le/a/k3/j/j;",
        "Le/a/k3/j/j;",
        "getRawContactDao",
        "()Le/a/k3/j/j;",
        "setRawContactDao",
        "(Le/a/k3/j/j;)V",
        "rawContactDao",
        "Le/a/r2/f;",
        "Le/a/l0/c;",
        "Le/a/r2/f;",
        "()Le/a/r2/f;",
        "setHistoryManager",
        "(Le/a/r2/f;)V",
        "historyManager",
        "Le/a/p5/a0;",
        "Le/a/p5/a0;",
        "getPermissionUtil",
        "()Le/a/p5/a0;",
        "setPermissionUtil",
        "(Le/a/p5/a0;)V",
        "permissionUtil",
        "<init>",
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
.field public static final synthetic j:I


# instance fields
.field public a:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/r2/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Le/a/i4/e;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Le/a/h4/n;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Lcom/truecaller/settings/CallingSettings;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Le/a/p5/a0;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Le/a/x4/g;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public i:Le/a/k3/j/j;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/k/a/a0;-><init>()V

    return-void
.end method

.method public static final h(Landroid/content/Context;)V
    .locals 3

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    const-class v0, Lcom/truecaller/service/MissedCallsNotificationService;

    .line 3
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const v2, 0x7f0a0bc9

    .line 4
    invoke-static {p0, v0, v2, v1}, Ln3/k/a/i;->enqueueWork(Landroid/content/Context;Ljava/lang/Class;ILandroid/content/Intent;)V

    return-void
.end method


# virtual methods
.method public final a()Ln3/k/a/q;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService;->e:Le/a/h4/n;

    if-eqz v0, :cond_0

    const-string v1, "missed_calls"

    invoke-interface {v0, v1}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    new-instance v1, Ln3/k/a/q;

    invoke-direct {v1, p0, v0}, Ln3/k/a/q;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v1

    :cond_0
    const-string v0, "systemNotificationManager"

    .line 3
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final synthetic b(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/Contact;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lcom/truecaller/service/MissedCallsNotificationService$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lcom/truecaller/service/MissedCallsNotificationService$c;

    iget v1, v0, Lcom/truecaller/service/MissedCallsNotificationService$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lcom/truecaller/service/MissedCallsNotificationService$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Lcom/truecaller/service/MissedCallsNotificationService$c;

    invoke-direct {v0, p0, p2}, Lcom/truecaller/service/MissedCallsNotificationService$c;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Lcom/truecaller/service/MissedCallsNotificationService$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Lcom/truecaller/service/MissedCallsNotificationService$c;->e:I

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz p1, :cond_8

    .line 4
    invoke-static {p1}, Le/a/m0/a1$k;->J0(Lcom/truecaller/data/entity/Contact;)Z

    move-result p2

    if-nez p2, :cond_3

    goto :goto_3

    .line 5
    :cond_3
    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->getTcId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_5

    .line 6
    iget-object p2, p0, Lcom/truecaller/service/MissedCallsNotificationService;->i:Le/a/k3/j/j;

    if-eqz p2, :cond_4

    invoke-virtual {p2, p1}, Le/a/k3/j/j;->g(Ljava/lang/String;)Lcom/truecaller/data/entity/Contact;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->Y()Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_5

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/data/entity/SearchWarning;

    goto :goto_1

    :cond_4
    const-string p1, "rawContactDao"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_5
    move-object p1, v4

    :goto_1
    if-eqz p1, :cond_8

    .line 7
    iget-object p2, p0, Lcom/truecaller/service/MissedCallsNotificationService;->h:Le/a/x4/g;

    if-eqz p2, :cond_7

    iput v3, v0, Lcom/truecaller/service/MissedCallsNotificationService$c;->e:I

    invoke-interface {p2, p1, v0}, Le/a/x4/g;->a(Lcom/truecaller/data/entity/SearchWarning;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    :goto_2
    check-cast p2, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;

    if-eqz p2, :cond_8

    .line 8
    invoke-virtual {p2}, Lcom/truecaller/searchwarnings/data/SearchWarningViewModel;->getMessage()Ljava/lang/String;

    move-result-object v4

    goto :goto_3

    :cond_7
    const-string p1, "searchWarningsHelper"

    .line 9
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_8
    :goto_3
    return-object v4
.end method

.method public final c()Lcom/truecaller/settings/CallingSettings;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService;->f:Lcom/truecaller/settings/CallingSettings;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "callingSettings"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Le/a/r2/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/r2/f<",
            "Le/a/l0/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService;->c:Le/a/r2/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "historyManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final e()Ls1/w/f;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService;->a:Ls1/w/f;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "uiCoroutineContext"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final f(Le/a/l0/u/d/b;Landroid/content/Context;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l0/u/d/b;",
            "Landroid/content/Context;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-wide/16 v0, 0x0

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 2
    invoke-interface {p1}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v2

    if-eqz v2, :cond_0

    const-string v3, "missedCalls.historyEvent ?: continue"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-wide v2, v2, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 4
    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v0

    goto :goto_0

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcom/truecaller/service/MissedCallsNotificationService;->a()Ln3/k/a/q;

    move-result-object p1

    const/4 v2, 0x4

    .line 6
    invoke-virtual {p1, v2}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const v2, 0x7f06068b

    .line 7
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 8
    invoke-static {p2, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v2

    .line 9
    iput v2, p1, Ln3/k/a/q;->D:I

    const v2, 0x7f08057e

    .line 10
    iget-object v3, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v2, v3, Landroid/app/Notification;->icon:I

    const/16 v2, 0x10

    const/4 v3, 0x1

    .line 11
    invoke-virtual {p1, v2, v3}, Ln3/k/a/q;->p(IZ)V

    const-string v2, "createNotificationBuilde\u2026     .setAutoCancel(true)"

    .line 12
    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v2, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v0, v2, Landroid/app/Notification;->when:J

    .line 14
    new-instance v2, Landroid/content/Intent;

    const-class v4, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;

    invoke-direct {v2, p2, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "com.truecaller.CLEAR_ALTERNATIVE_MISSED_CALLS"

    .line 15
    invoke-virtual {v2, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v4, "lastTimestamp"

    .line 16
    invoke-virtual {v2, v4, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(context, MissedCa\u2026AST_TIMESTAMP, timestamp)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0e42

    const/high16 v2, 0x14000000

    .line 17
    invoke-static {p2, v1, v0, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 18
    iget-object v1, p1, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 19
    iput v3, p1, Ln3/k/a/q;->l:I

    const v0, 0x7f120d6a

    .line 20
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const v0, 0x7f120d69

    .line 21
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string v0, "calls"

    const-string v1, "notification"

    .line 22
    invoke-static {p2, v0, v1}, Lcom/truecaller/ui/TruecallerInit;->xa(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 23
    sget-object v1, Lcom/truecaller/premium/util/NotificationAccessSource;->MISSED_CALL_NOTIFICATION:Lcom/truecaller/premium/util/NotificationAccessSource;

    const v3, 0x7f120336

    const-string v4, "goBackIntent"

    .line 24
    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-static {p2, v1, v3, v0}, Lcom/truecaller/ui/NotificationAccessActivity$a;->a(Landroid/content/Context;Lcom/truecaller/premium/util/NotificationAccessSource;ILandroid/content/Intent;)Landroid/content/Intent;

    move-result-object v0

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 27
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const v0, 0x7f0a0e45

    .line 28
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_3

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    new-array v3, v3, [Landroid/content/Intent;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/content/Intent;

    .line 30
    new-instance v3, Landroid/content/Intent;

    const/4 v4, 0x0

    aget-object v5, v1, v4

    invoke-direct {v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    const v5, 0x1000c000

    invoke-virtual {v3, v5}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v3

    aput-object v3, v1, v4

    const/4 v3, 0x0

    .line 31
    invoke-static {p2, v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivities(Landroid/content/Context;I[Landroid/content/Intent;ILandroid/os/Bundle;)Landroid/app/PendingIntent;

    move-result-object p2

    const v0, 0x7f120d6f

    .line 32
    invoke-virtual {p0, v0}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v4, v0, p2}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    .line 33
    iput-object p2, p1, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 34
    invoke-virtual {p0}, Landroid/app/Service;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const v0, 0x7f0f0001

    invoke-static {p2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object p2

    invoke-virtual {p1, p2}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    .line 35
    invoke-virtual {p1}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object p1

    const-string p2, "builder.build()"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "notificationMissedCallPromo"

    invoke-virtual {p0, p1, p2, p3}, Lcom/truecaller/service/MissedCallsNotificationService;->i(Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_2

    return-object p1

    .line 36
    :cond_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 37
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "No intents added to TaskStackBuilder; cannot getPendingIntent"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Le/a/l0/u/d/b;Ls1/w/d;)Ljava/lang/Object;
    .locals 25
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l0/u/d/b;",
            "Ls1/w/d<",
            "-",
            "Landroid/app/Notification;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    instance-of v2, v1, Lcom/truecaller/service/MissedCallsNotificationService$e;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lcom/truecaller/service/MissedCallsNotificationService$e;

    iget v3, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->e:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->e:I

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/truecaller/service/MissedCallsNotificationService$e;

    invoke-direct {v2, v0, v1}, Lcom/truecaller/service/MissedCallsNotificationService$e;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V

    :goto_0
    iget-object v1, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->d:Ljava/lang/Object;

    sget-object v3, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v4, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->e:I

    const-string v5, "tel:"

    const-string v6, "builder.build()"

    const/4 v7, 0x2

    const/4 v8, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v8, :cond_2

    if-ne v4, v7, :cond_1

    iget-object v2, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->g:Ljava/lang/Object;

    check-cast v2, Ln3/k/a/q;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_10

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget v4, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->q:I

    iget-wide v7, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->r:J

    iget v9, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->p:I

    iget v10, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->o:I

    iget-object v11, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->n:Ljava/lang/Object;

    check-cast v11, Lcom/truecaller/data/entity/Contact;

    iget-object v12, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->m:Ljava/lang/Object;

    check-cast v12, Ljava/lang/String;

    iget-object v13, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->l:Ljava/lang/Object;

    check-cast v13, Lcom/truecaller/data/entity/HistoryEvent;

    iget-object v14, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->k:Ljava/lang/Object;

    check-cast v14, Ljava/lang/String;

    iget-object v15, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->j:Ljava/lang/Object;

    check-cast v15, Ln3/k/a/s;

    move-object/from16 p2, v3

    iget-object v3, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->i:Ljava/lang/Object;

    check-cast v3, Ln3/k/a/q;

    move-object/from16 p1, v3

    iget-object v3, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->h:Ljava/lang/Object;

    check-cast v3, Le/a/l0/u/d/b;

    move-object/from16 v16, v3

    iget-object v3, v2, Lcom/truecaller/service/MissedCallsNotificationService$e;->g:Ljava/lang/Object;

    check-cast v3, Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v0, p1

    move-object/from16 v17, v15

    move-object v15, v14

    move-object v14, v13

    move v13, v9

    move-object/from16 v21, v5

    move-object/from16 v5, p2

    move-object/from16 v22, v6

    move-object/from16 v6, v21

    move-wide/from16 v23, v7

    move-object/from16 v7, v22

    move v8, v10

    move-wide/from16 v9, v23

    goto/16 :goto_5

    :cond_3
    move-object/from16 p2, v3

    invoke-static {v1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-interface/range {p1 .. p1}, Landroid/database/Cursor;->getCount()I

    move-result v1

    const v3, 0x7f120d71

    .line 5
    invoke-virtual {v0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.missed_calls_notification_text)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x1

    new-array v7, v4, [Ljava/lang/Object;

    .line 6
    new-instance v8, Ljava/lang/Integer;

    invoke-direct {v8, v1}, Ljava/lang/Integer;-><init>(I)V

    const/4 v9, 0x0

    aput-object v8, v7, v9

    const-string v8, "java.lang.String.format(format, *args)"

    .line 7
    invoke-static {v7, v4, v3, v8}, Le/d/c/a/a;->v([Ljava/lang/Object;ILjava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 8
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/service/MissedCallsNotificationService;->a()Ln3/k/a/q;

    move-result-object v4

    const/4 v7, 0x4

    .line 9
    invoke-virtual {v4, v7}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const v7, 0x7f06068b

    .line 10
    sget-object v8, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 11
    invoke-static {v0, v7}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v7

    .line 12
    iput v7, v4, Ln3/k/a/q;->D:I

    const v7, 0x7f08057e

    .line 13
    iget-object v8, v4, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v7, v8, Landroid/app/Notification;->icon:I

    const/16 v7, 0x10

    const/4 v8, 0x1

    .line 14
    invoke-virtual {v4, v7, v8}, Ln3/k/a/q;->p(IZ)V

    .line 15
    invoke-static/range {p0 .. p0}, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v7

    .line 16
    iput-object v7, v4, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    const v7, 0x7f120d72

    .line 17
    invoke-virtual {v0, v7}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v4, v7}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 18
    invoke-virtual {v4, v3}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    const-string v7, "createNotificationBuilde\u2026ext(numMissedCallsString)"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    new-instance v7, Ln3/k/a/s;

    invoke-direct {v7}, Ln3/k/a/s;-><init>()V

    .line 20
    invoke-virtual {v7, v3}, Ln3/k/a/s;->l(Ljava/lang/CharSequence;)Ln3/k/a/s;

    const-wide/16 v8, 0x0

    const/4 v3, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x1

    move-object v15, v7

    move-object v12, v10

    move v13, v11

    move v11, v1

    move-object v7, v5

    move-wide v9, v8

    move-object/from16 v1, p1

    move-object/from16 v5, p2

    move-object v8, v6

    move v6, v3

    move-object v3, v2

    move-object v2, v4

    move-object v4, v0

    .line 21
    :goto_1
    invoke-interface {v1}, Landroid/database/Cursor;->moveToNext()Z

    move-result v14

    if-eqz v14, :cond_15

    .line 22
    invoke-interface {v1}, Le/a/l0/u/d/b;->n()Lcom/truecaller/data/entity/HistoryEvent;

    move-result-object v14

    if-eqz v14, :cond_14

    const-string v0, "missedCalls.historyEvent ?: continue"

    invoke-static {v14, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 23
    invoke-static {v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget v0, v14, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    move-object/from16 v16, v8

    const/4 v8, 0x3

    if-ne v0, v8, :cond_4

    const/4 v0, 0x1

    goto :goto_2

    :cond_4
    const/4 v0, 0x0

    :goto_2
    if-eqz v0, :cond_5

    move-object/from16 p1, v7

    goto/16 :goto_d

    :cond_5
    if-nez v12, :cond_6

    .line 25
    iget-object v0, v14, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    move-object v8, v0

    move v0, v11

    goto :goto_3

    :cond_6
    if-eqz v13, :cond_7

    .line 26
    iget-object v0, v14, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 27
    invoke-static {v12, v0}, Lw3/c/a/a/a/h;->e(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    move v13, v0

    :cond_7
    move v0, v11

    move-object v8, v12

    .line 28
    :goto_3
    iget-wide v11, v14, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 29
    invoke-static {v9, v10, v11, v12}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v9

    const/4 v11, 0x5

    if-lt v6, v11, :cond_8

    if-nez v13, :cond_8

    goto/16 :goto_f

    .line 30
    :cond_8
    iget-object v12, v14, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 31
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_9

    const v11, 0x7f1202d2

    .line 32
    invoke-virtual {v4, v11}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v12

    move-object/from16 p1, v7

    goto :goto_4

    .line 33
    :cond_9
    iget-object v11, v14, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-nez v11, :cond_a

    .line 34
    invoke-static {v7}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    move-object/from16 p1, v7

    .line 35
    iget-object v7, v14, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    .line 36
    invoke-virtual {v11, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v2, v7}, Ln3/k/a/q;->c(Ljava/lang/String;)Ln3/k/a/q;

    :goto_4
    move-object/from16 v7, p1

    move v11, v0

    move-object/from16 p1, v1

    move-object/from16 p2, v2

    move-object v0, v15

    move-object v15, v8

    move-object/from16 v8, v16

    goto/16 :goto_b

    :cond_a
    move-object/from16 p1, v7

    .line 37
    iput-object v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->g:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->h:Ljava/lang/Object;

    iput-object v2, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->i:Ljava/lang/Object;

    iput-object v15, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->j:Ljava/lang/Object;

    iput-object v8, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->k:Ljava/lang/Object;

    iput-object v14, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->l:Ljava/lang/Object;

    iput-object v12, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->m:Ljava/lang/Object;

    iput-object v11, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->n:Ljava/lang/Object;

    iput v0, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->o:I

    iput v13, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->p:I

    iput-wide v9, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->r:J

    iput v6, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->q:I

    const/4 v7, 0x1

    iput v7, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->e:I

    invoke-virtual {v4, v11, v3}, Lcom/truecaller/service/MissedCallsNotificationService;->b(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_b

    return-object v5

    :cond_b
    move-object/from16 v17, v15

    move-object v15, v8

    move v8, v0

    move-object v0, v2

    move-object v2, v3

    move-object v3, v4

    move v4, v6

    move-object/from16 v6, p1

    move-object/from16 v21, v16

    move-object/from16 v16, v1

    move-object v1, v7

    move-object/from16 v7, v21

    .line 38
    :goto_5
    check-cast v1, Ljava/lang/String;

    .line 39
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lw3/c/a/a/a/h;->l(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_f

    if-eqz v1, :cond_d

    .line 40
    invoke-static {v1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v18

    if-eqz v18, :cond_c

    goto :goto_6

    :cond_c
    const/16 v18, 0x0

    goto :goto_7

    :cond_d
    :goto_6
    const/16 v18, 0x1

    :goto_7
    if-eqz v18, :cond_e

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    .line 41
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    aput-object v18, v1, v19

    const/16 v18, 0x1

    aput-object v12, v1, v18

    const v12, 0x7f120412

    invoke-virtual {v3, v12, v1}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    goto :goto_8

    :cond_e
    const/4 v12, 0x2

    const/16 v18, 0x0

    const/16 v19, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    .line 42
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v20

    aput-object v20, v12, v18

    aput-object v1, v12, v19

    const v1, 0x7f120412

    invoke-virtual {v3, v1, v12}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    :goto_8
    move-object v12, v1

    .line 43
    :cond_f
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v1

    if-eqz v1, :cond_11

    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_11

    .line 44
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v1

    if-eqz v1, :cond_10

    move-object/from16 p1, v2

    const-string v2, "phonebookId"

    .line 45
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object v11

    invoke-static {v1, v2, v11}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 46
    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    .line 47
    invoke-virtual {v0, v1}, Ln3/k/a/q;->c(Ljava/lang/String;)Ln3/k/a/q;

    goto :goto_a

    :cond_10
    move-object/from16 p1, v2

    goto :goto_a

    :cond_11
    move-object/from16 p1, v2

    .line 48
    invoke-virtual {v11}, Lcom/truecaller/data/entity/Contact;->M()Ljava/util/List;

    move-result-object v1

    const-string v2, "contact.numbers"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 49
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_9
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_12

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/data/entity/Number;

    .line 50
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 p2, v1

    const-string v1, "number"

    .line 51
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->l()Ljava/lang/String;

    move-result-object v1

    .line 52
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Number;->e()Ljava/lang/String;

    move-result-object v2

    .line 53
    invoke-static {v1, v2}, Lw3/c/a/a/a/h;->c(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 54
    invoke-virtual {v0, v1}, Ln3/k/a/q;->c(Ljava/lang/String;)Ln3/k/a/q;

    move-object/from16 v1, p2

    goto :goto_9

    :cond_12
    :goto_a
    move-object/from16 p2, v0

    move v11, v8

    move-object/from16 v0, v17

    move-object v8, v7

    move-object v7, v6

    move v6, v4

    move-object v4, v3

    move-object/from16 v3, p1

    move-object/from16 p1, v16

    .line 55
    :goto_b
    iget-wide v1, v14, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 56
    invoke-static {v1, v2}, Landroid/text/format/DateUtils;->isToday(J)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 57
    iget-wide v1, v14, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 58
    invoke-static {v4, v1, v2}, Le/a/b0/q/m;->f(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    goto :goto_c

    .line 59
    :cond_13
    iget-wide v1, v14, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    .line 60
    invoke-static {v4, v1, v2}, Le/a/b0/q/m;->c(Landroid/content/Context;J)Ljava/lang/String;

    move-result-object v1

    :goto_c
    const-string v2, "if (DateUtils.isToday(mi\u2026.timestamp)\n            }"

    .line 61
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v14, 0x0

    aput-object v1, v2, v14

    const/4 v1, 0x1

    aput-object v12, v2, v1

    const v12, 0x7f120417

    .line 62
    invoke-virtual {v4, v12, v2}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ln3/k/a/s;->k(Ljava/lang/CharSequence;)Ln3/k/a/s;

    add-int/2addr v6, v1

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object v12, v15

    move-object v15, v0

    goto :goto_e

    :cond_14
    move-object/from16 p1, v7

    move-object/from16 v16, v8

    :goto_d
    move v0, v11

    move-object/from16 v7, p1

    move v11, v0

    move-object/from16 v8, v16

    :goto_e
    move-object/from16 v0, p0

    goto/16 :goto_1

    :cond_15
    move-object/from16 v16, v8

    move v0, v11

    :goto_f
    const/4 v1, 0x1

    const/4 v6, 0x5

    if-le v0, v6, :cond_16

    const v6, 0x7f120d70

    new-array v7, v1, [Ljava/lang/Object;

    add-int/lit8 v11, v0, -0x5

    .line 63
    new-instance v0, Ljava/lang/Integer;

    invoke-direct {v0, v11}, Ljava/lang/Integer;-><init>(I)V

    const/4 v8, 0x0

    aput-object v0, v7, v8

    .line 64
    invoke-virtual {v4, v6, v7}, Landroid/app/Service;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 65
    invoke-virtual {v15, v0}, Ln3/k/a/s;->m(Ljava/lang/CharSequence;)Ln3/k/a/s;

    .line 66
    :cond_16
    invoke-virtual {v2, v15}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 67
    iput v1, v2, Ln3/k/a/q;->l:I

    .line 68
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;

    invoke-direct {v0, v4, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "com.truecaller.CLEAR_MISSED_CALLS"

    .line 69
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "lastTimestamp"

    .line 70
    invoke-virtual {v0, v1, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(this, MissedCalls\u2026AST_TIMESTAMP, timestamp)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v1, 0x7f0a0e42

    const/high16 v6, 0x14000000

    .line 71
    invoke-static {v4, v1, v0, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 72
    iget-object v1, v2, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v0, v1, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    .line 73
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result v0

    if-nez v0, :cond_17

    .line 74
    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    move-object/from16 v6, v16

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->g:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->h:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->i:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->j:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->k:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->l:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->m:Ljava/lang/Object;

    iput-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->n:Ljava/lang/Object;

    const/4 v1, 0x2

    iput v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$e;->e:I

    const-string v1, "notificationMissedCall"

    invoke-virtual {v4, v0, v1, v3}, Lcom/truecaller/service/MissedCallsNotificationService;->i(Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v5, :cond_18

    return-object v5

    :cond_17
    move-object/from16 v6, v16

    .line 75
    :cond_18
    :goto_10
    invoke-virtual {v2}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v0

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final synthetic i(Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Notification;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/service/MissedCallsNotificationService;->a:Ls1/w/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/truecaller/service/MissedCallsNotificationService$f;

    invoke-direct {v2, p0, p1, p2, v1}, Lcom/truecaller/service/MissedCallsNotificationService$f;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v2, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_1
    const-string p1, "uiCoroutineContext"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final j(Lcom/truecaller/data/entity/HistoryEvent;Ls1/w/d;)Ljava/lang/Object;
    .locals 28
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/data/entity/HistoryEvent;",
            "Ls1/w/d<",
            "-",
            "Landroid/app/Notification;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    instance-of v3, v2, Lcom/truecaller/service/MissedCallsNotificationService$g;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lcom/truecaller/service/MissedCallsNotificationService$g;

    iget v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->e:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v3, Lcom/truecaller/service/MissedCallsNotificationService$g;

    invoke-direct {v3, v0, v2}, Lcom/truecaller/service/MissedCallsNotificationService$g;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V

    :goto_0
    iget-object v2, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->d:Ljava/lang/Object;

    sget-object v4, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v5, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->e:I

    const-string v6, "notificationMissedCall"

    const-string v7, "builder.build()"

    const-string v8, "context"

    const/4 v9, 0x3

    const/4 v10, 0x2

    const/4 v11, 0x4

    const/4 v12, 0x1

    const/4 v13, 0x0

    if-eqz v5, :cond_5

    if-eq v5, v12, :cond_4

    if-eq v5, v10, :cond_3

    if-eq v5, v9, :cond_2

    if-ne v5, v11, :cond_1

    iget-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->g:Ljava/lang/Object;

    check-cast v1, Ln3/k/a/q;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto/16 :goto_12

    .line 2
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3
    :cond_2
    iget-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->i:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v5, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->h:Ljava/lang/Object;

    check-cast v5, Ln3/k/a/q;

    iget-object v8, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->g:Ljava/lang/Object;

    check-cast v8, Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v26, v2

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v4, v26

    move-object/from16 v27, v7

    move-object v7, v6

    move-object/from16 v6, v27

    goto/16 :goto_10

    :cond_3
    iget-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->l:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v5, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->k:Ljava/lang/Object;

    check-cast v5, Ln3/k/a/q;

    iget-object v9, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->j:Ljava/lang/Object;

    check-cast v9, Lcom/truecaller/data/entity/Contact;

    iget-object v10, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->i:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->h:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    iget-object v12, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->g:Ljava/lang/Object;

    check-cast v12, Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v2, v1

    move-object v1, v4

    move-object/from16 v26, v7

    move-object v7, v6

    move-object/from16 v6, v26

    goto/16 :goto_c

    :cond_4
    iget-object v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->l:Ljava/lang/Object;

    check-cast v1, Ln3/k/a/q;

    iget-object v5, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->k:Ljava/lang/Object;

    check-cast v5, Ln3/k/a/q;

    iget-object v9, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->j:Ljava/lang/Object;

    check-cast v9, Lcom/truecaller/data/entity/Contact;

    iget-object v10, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->i:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    iget-object v11, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->h:Ljava/lang/Object;

    check-cast v11, Landroid/content/Context;

    iget-object v12, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->g:Ljava/lang/Object;

    check-cast v12, Lcom/truecaller/service/MissedCallsNotificationService;

    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    move-object/from16 v26, v5

    move-object v5, v1

    move-object v1, v4

    move-object/from16 v4, v26

    goto/16 :goto_9

    :cond_5
    invoke-static {v2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    if-eqz v1, :cond_7

    .line 4
    iget v2, v1, Lcom/truecaller/data/entity/HistoryEvent;->t:I

    if-ne v2, v9, :cond_6

    const/4 v2, 0x1

    goto :goto_1

    :cond_6
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_7

    return-object v13

    .line 5
    :cond_7
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v11

    const v2, 0x7f1202d2

    .line 6
    invoke-virtual {v0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    const-string v5, "getString(R.string.HistoryHiddenNumber)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_8

    .line 7
    iget-object v5, v1, Lcom/truecaller/data/entity/HistoryEvent;->b:Ljava/lang/String;

    goto :goto_2

    :cond_8
    move-object v5, v13

    :goto_2
    if-eqz v5, :cond_a

    .line 8
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v9

    if-nez v9, :cond_9

    goto :goto_3

    :cond_9
    const/4 v9, 0x0

    goto :goto_4

    :cond_a
    :goto_3
    const/4 v9, 0x1

    :goto_4
    if-nez v9, :cond_10

    .line 9
    iget-object v2, v1, Lcom/truecaller/data/entity/HistoryEvent;->f:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_c

    .line 10
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_c

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->t0()Z

    move-result v9

    if-eqz v9, :cond_c

    .line 11
    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v9

    if-eqz v9, :cond_b

    goto :goto_5

    :cond_b
    const-wide/16 v9, -0x1

    .line 12
    new-instance v12, Ljava/lang/Long;

    invoke-direct {v12, v9, v10}, Ljava/lang/Long;-><init>(J)V

    move-object v9, v12

    :goto_5
    const-string v10, "contact.phonebookId ?: -1"

    .line 13
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v9

    invoke-virtual {v2}, Lcom/truecaller/data/entity/Contact;->T()Ljava/lang/String;

    move-result-object v12

    invoke-static {v9, v10, v12}, Landroid/provider/ContactsContract$Contacts;->getLookupUri(JLjava/lang/String;)Landroid/net/Uri;

    move-result-object v9

    invoke-virtual {v9}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v13

    :cond_c
    if-nez v13, :cond_d

    const-string v9, "tel:"

    .line 14
    invoke-static {v9, v5}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 15
    :cond_d
    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v9, v1, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    const-string v10, "missedCall.callLogId"

    .line 17
    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 18
    invoke-static {v11, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "number"

    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    sget v12, Landroid/os/Build$VERSION;->SDK_INT:I

    move-object/from16 p2, v2

    const-string v2, "PendingIntent.getActivit\u2026MUTABLE\n                )"

    move-object/from16 v22, v13

    const-string v13, "PendingIntent.getBroadca\u2026MUTABLE\n                )"

    move-object/from16 v23, v6

    const-string v6, "Intent(context, MissedCa\u2026A_CALL_LOG_ID, callLogId)"

    move-object/from16 v24, v7

    const-string v7, "callLogId"

    move-object/from16 v25, v4

    const/16 v4, 0x1f

    if-lt v12, v4, :cond_e

    .line 20
    sget-object v4, Lcom/truecaller/notifications/support/NotificationTrampolineActivity;->j:Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;

    .line 21
    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v18

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x30

    const-string v16, "notification"

    move-object v14, v4

    move-object v15, v11

    move-object/from16 v17, v5

    .line 22
    invoke-static/range {v14 .. v21}, Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;->b(Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/String;ZI)Landroid/content/Intent;

    move-result-object v4

    const/high16 v14, 0x14000000

    const v15, 0x7f0a0e41

    .line 23
    invoke-static {v11, v15, v4, v14}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v4, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v16, v3

    goto :goto_6

    .line 24
    :cond_e
    new-instance v4, Landroid/content/Intent;

    move-object/from16 v16, v3

    const-class v3, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;

    invoke-direct {v4, v11, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "com.truecaller.CALL"

    .line 25
    invoke-virtual {v4, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 26
    invoke-virtual {v3, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v3

    .line 27
    invoke-virtual {v3, v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v3

    invoke-static {v3, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v4, 0x7f0a0e41

    const/high16 v14, 0x14000000

    .line 28
    invoke-static {v11, v4, v3, v14}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v4

    invoke-static {v4, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 29
    :goto_6
    iget-object v3, v1, Lcom/truecaller/data/entity/HistoryEvent;->g:Ljava/lang/Long;

    .line 30
    invoke-static {v3, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v14

    .line 31
    invoke-static {v11, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v3, 0x7f0a0e46

    const/16 v10, 0x1f

    if-lt v12, v10, :cond_f

    .line 32
    sget-object v6, Lcom/truecaller/notifications/support/NotificationTrampolineActivity;->j:Lcom/truecaller/notifications/support/NotificationTrampolineActivity$a;

    invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    .line 33
    invoke-static {v11, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    new-instance v7, Landroid/content/Intent;

    const-class v10, Lcom/truecaller/notifications/support/NotificationTrampolineActivity;

    invoke-direct {v7, v11, v10}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v10, "notification-name"

    const-string v12, "com.truecaller.intent.action.SMS"

    .line 35
    invoke-virtual {v7, v10, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 36
    invoke-virtual {v7, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    const-string v9, "call-log-id"

    .line 37
    invoke-virtual {v7, v9, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    move-result-object v6

    const-string v7, "Intent(context, Notifica\u2026A_CALL_LOG_ID, callLogId)"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v7, 0x14000000

    .line 38
    invoke-static {v11, v3, v6, v7}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_f
    const/high16 v2, 0x14000000

    .line 39
    new-instance v10, Landroid/content/Intent;

    const-class v12, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;

    invoke-direct {v10, v11, v12}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v12, "com.truecaller.SMS"

    .line 40
    invoke-virtual {v10, v12}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    .line 41
    invoke-virtual {v10, v9, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v9

    .line 42
    invoke-virtual {v9, v7, v14, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object v7

    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 43
    invoke-static {v11, v3, v7, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-static {v3, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_7
    move-object/from16 v9, p2

    move-object v10, v5

    move-object/from16 v13, v22

    goto :goto_8

    :cond_10
    move-object/from16 v16, v3

    move-object/from16 v25, v4

    move-object/from16 v23, v6

    move-object/from16 v24, v7

    const/4 v13, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v10, v2

    move-object v9, v5

    .line 44
    :goto_8
    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;

    invoke-direct {v2, v11, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.truecaller.CLEAR_MISSED_CALLS"

    .line 45
    invoke-virtual {v2, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    const-string v5, "Intent(context, MissedCa\u2026CTION_CLEAR_MISSED_CALLS)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_11

    .line 46
    iget-wide v5, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    const-string v7, "lastTimestamp"

    .line 47
    invoke-virtual {v2, v7, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_11
    const v5, 0x7f0a0e42

    const/high16 v6, 0x14000000

    .line 48
    invoke-static {v11, v5, v2, v6}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    .line 49
    invoke-virtual/range {p0 .. p0}, Lcom/truecaller/service/MissedCallsNotificationService;->a()Ln3/k/a/q;

    move-result-object v5

    const/4 v6, 0x4

    .line 50
    invoke-virtual {v5, v6}, Ln3/k/a/q;->o(I)Ln3/k/a/q;

    const v6, 0x7f06068b

    .line 51
    sget-object v7, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 52
    invoke-static {v11, v6}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v6

    .line 53
    iput v6, v5, Ln3/k/a/q;->D:I

    const v6, 0x7f08057e

    .line 54
    iget-object v7, v5, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput v6, v7, Landroid/app/Notification;->icon:I

    const/16 v6, 0x10

    const/4 v7, 0x1

    .line 55
    invoke-virtual {v5, v6, v7}, Ln3/k/a/q;->p(IZ)V

    .line 56
    iget-object v6, v5, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-object v2, v6, Landroid/app/Notification;->deleteIntent:Landroid/app/PendingIntent;

    const-string v2, "createNotificationBuilde\u2026eleteIntent(clearPending)"

    .line 57
    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_12

    .line 58
    iget-wide v1, v1, Lcom/truecaller/data/entity/HistoryEvent;->h:J

    const-wide/16 v6, 0x0

    cmp-long v6, v1, v6

    if-lez v6, :cond_12

    .line 59
    iget-object v6, v5, Ln3/k/a/q;->R:Landroid/app/Notification;

    iput-wide v1, v6, Landroid/app/Notification;->when:J

    :cond_12
    if-eqz v4, :cond_13

    const v1, 0x7f08057b

    const v2, 0x7f120d6b

    .line 60
    invoke-virtual {v0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2, v4}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    :cond_13
    if-eqz v3, :cond_14

    const v1, 0x7f080589

    const v2, 0x7f120d6d

    .line 61
    invoke-virtual {v0, v2}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v1, v2, v3}, Ln3/k/a/q;->a(ILjava/lang/CharSequence;Landroid/app/PendingIntent;)Ln3/k/a/q;

    :cond_14
    const/4 v1, 0x1

    .line 62
    iput v1, v5, Ln3/k/a/q;->l:I

    if-eqz v13, :cond_15

    .line 63
    invoke-virtual {v5, v13}, Ln3/k/a/q;->c(Ljava/lang/String;)Ln3/k/a/q;

    :cond_15
    if-eqz v9, :cond_18

    move-object/from16 v3, v16

    .line 64
    iput-object v0, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->g:Ljava/lang/Object;

    iput-object v11, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->h:Ljava/lang/Object;

    iput-object v10, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->i:Ljava/lang/Object;

    iput-object v9, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->j:Ljava/lang/Object;

    iput-object v5, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->k:Ljava/lang/Object;

    iput-object v5, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->l:Ljava/lang/Object;

    const/4 v1, 0x1

    iput v1, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->e:I

    .line 65
    invoke-virtual/range {p0 .. p0}, Landroid/app/Service;->getBaseContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1303ad

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    const-string v2, "baseContext.apply { setT\u2026me(R.style.ThemeX_Dark) }"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 66
    iget-object v2, v0, Lcom/truecaller/service/MissedCallsNotificationService;->b:Ls1/w/f;

    if-eqz v2, :cond_17

    .line 67
    new-instance v4, Le/a/b0/a/a0/a;

    .line 68
    sget v6, Lcom/truecaller/common/ui/R$dimen;->notification_tcx_call_avatar_size:I

    invoke-direct {v4, v1, v2, v6}, Le/a/b0/a/a0/a;-><init>(Landroid/content/Context;Ls1/w/f;I)V

    const/4 v1, 0x7

    const/4 v2, 0x0

    const/4 v6, 0x0

    .line 69
    invoke-static {v9, v2, v2, v6, v1}, Le/m/d/y/n;->s(Lcom/truecaller/data/entity/Contact;ZZLjava/lang/String;I)Lcom/truecaller/common/ui/avatar/AvatarXConfig;

    move-result-object v1

    const/4 v7, 0x2

    invoke-static {v4, v1, v2, v7, v6}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    .line 70
    iget v1, v4, Le/a/b0/a/a0/a;->W:I

    invoke-virtual {v4, v1, v3}, Le/a/b0/a/a0/a;->rk(ILs1/w/d;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v1, v25

    if-ne v2, v1, :cond_16

    return-object v1

    :cond_16
    move-object v12, v0

    move-object v4, v5

    .line 71
    :goto_9
    check-cast v2, Landroid/graphics/Bitmap;

    invoke-virtual {v5, v2}, Ln3/k/a/q;->q(Landroid/graphics/Bitmap;)Ln3/k/a/q;

    move-object v5, v4

    goto :goto_a

    :cond_17
    const-string v1, "cpuCoroutineContext"

    .line 72
    invoke-static {v1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v1, 0x0

    throw v1

    :cond_18
    move-object/from16 v3, v16

    move-object/from16 v1, v25

    move-object v12, v0

    .line 73
    :goto_a
    new-instance v2, Ls1/z/c/c0;

    invoke-direct {v2}, Ls1/z/c/c0;-><init>()V

    if-eqz v9, :cond_19

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lw3/c/a/a/a/h;->l(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_19

    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    goto :goto_b

    :cond_19
    move-object v4, v10

    :goto_b
    iput-object v4, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    const v4, 0x7f120d6e

    .line 74
    invoke-virtual {v12, v4}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v5, v4}, Ln3/k/a/q;->n(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 75
    iget-object v4, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 76
    invoke-static {v12}, Lcom/truecaller/notifications/MissedCallsNotificationActionReceiver;->b(Landroid/content/Context;)Landroid/app/PendingIntent;

    move-result-object v4

    .line 77
    iput-object v4, v5, Ln3/k/a/q;->g:Landroid/app/PendingIntent;

    .line 78
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result v4

    if-nez v4, :cond_1a

    .line 79
    invoke-virtual {v5}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v4

    move-object/from16 v6, v24

    invoke-static {v4, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->g:Ljava/lang/Object;

    iput-object v11, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->h:Ljava/lang/Object;

    iput-object v10, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->i:Ljava/lang/Object;

    iput-object v9, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->j:Ljava/lang/Object;

    iput-object v5, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->k:Ljava/lang/Object;

    iput-object v2, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->l:Ljava/lang/Object;

    const/4 v7, 0x2

    iput v7, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->e:I

    move-object/from16 v7, v23

    invoke-virtual {v12, v4, v7, v3}, Lcom/truecaller/service/MissedCallsNotificationService;->i(Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_1b

    return-object v1

    :cond_1a
    move-object/from16 v7, v23

    move-object/from16 v6, v24

    :cond_1b
    :goto_c
    if-nez v9, :cond_1f

    .line 80
    invoke-static {v11, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 81
    invoke-virtual {v12}, Landroid/app/Service;->getApplication()Landroid/app/Application;

    move-result-object v4

    const-string v8, "null cannot be cast to non-null type com.truecaller.common.app.ApplicationBase"

    invoke-static {v4, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Le/a/b0/g/a;

    .line 82
    invoke-virtual {v4}, Le/a/b0/g/a;->W()Z

    move-result v4

    if-nez v4, :cond_1c

    goto :goto_d

    .line 83
    :cond_1c
    invoke-static {v10}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_1d

    goto :goto_d

    .line 84
    :cond_1d
    :try_start_0
    new-instance v4, Le/a/f4/g/p;

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v8

    const-string v9, "notification"

    invoke-direct {v4, v11, v8, v9}, Le/a/f4/g/p;-><init>(Landroid/content/Context;Ljava/util/UUID;Ljava/lang/String;)V

    const/4 v8, 0x6

    .line 85
    iput v8, v4, Le/a/f4/g/p;->o:I

    .line 86
    iput-object v10, v4, Le/a/f4/g/p;->p:Ljava/lang/String;

    .line 87
    invoke-virtual {v4}, Le/a/f4/g/p;->d()Le/a/f4/g/p;

    .line 88
    invoke-virtual {v4}, Le/a/f4/g/p;->a()Le/a/f4/g/t;

    move-result-object v4

    if-eqz v4, :cond_1e

    .line 89
    invoke-virtual {v4}, Le/a/f4/g/t;->a()Lcom/truecaller/data/entity/Contact;

    move-result-object v4
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_e

    :catch_0
    :cond_1e
    :goto_d
    const/4 v4, 0x0

    :goto_e
    move-object v9, v4

    if-nez v9, :cond_1f

    const/4 v1, 0x0

    return-object v1

    .line 90
    :cond_1f
    invoke-virtual {v9}, Lcom/truecaller/data/entity/Contact;->w()Ljava/lang/String;

    move-result-object v4

    .line 91
    invoke-static {v4}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v8

    if-eqz v8, :cond_20

    goto :goto_f

    :cond_20
    move-object v10, v4

    .line 92
    :goto_f
    iput-object v10, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 93
    iput-object v12, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->g:Ljava/lang/Object;

    iput-object v5, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->h:Ljava/lang/Object;

    iput-object v2, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->i:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->j:Ljava/lang/Object;

    iput-object v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->k:Ljava/lang/Object;

    iput-object v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->l:Ljava/lang/Object;

    const/4 v4, 0x3

    iput v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->e:I

    invoke-virtual {v12, v9, v3}, Lcom/truecaller/service/MissedCallsNotificationService;->b(Lcom/truecaller/data/entity/Contact;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v4

    if-ne v4, v1, :cond_21

    return-object v1

    :cond_21
    move-object v8, v12

    :goto_10
    check-cast v4, Ljava/lang/String;

    if-eqz v4, :cond_23

    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v9

    xor-int/lit8 v9, v9, 0x1

    .line 94
    invoke-static {v9}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v9

    .line 95
    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_22

    goto :goto_11

    :cond_22
    const/4 v4, 0x0

    :goto_11
    if-eqz v4, :cond_23

    .line 96
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v10, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v10, Ljava/lang/String;

    const-string v11, ": "

    invoke-static {v9, v10, v11, v4}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 97
    new-instance v9, Ln3/k/a/o;

    invoke-direct {v9}, Ln3/k/a/o;-><init>()V

    invoke-virtual {v9, v4}, Ln3/k/a/o;->k(Ljava/lang/CharSequence;)Ln3/k/a/o;

    invoke-virtual {v5, v9}, Ln3/k/a/q;->x(Ln3/k/a/u;)Ln3/k/a/q;

    .line 98
    :cond_23
    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-virtual {v5, v2}, Ln3/k/a/q;->m(Ljava/lang/CharSequence;)Ln3/k/a/q;

    .line 99
    invoke-static {}, Le/a/p5/p;->a()Z

    move-result v2

    if-nez v2, :cond_25

    .line 100
    invoke-virtual {v5}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v2

    invoke-static {v2, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v5, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->g:Ljava/lang/Object;

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->h:Ljava/lang/Object;

    iput-object v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->i:Ljava/lang/Object;

    const/4 v4, 0x4

    iput v4, v3, Lcom/truecaller/service/MissedCallsNotificationService$g;->e:I

    invoke-virtual {v8, v2, v7, v3}, Lcom/truecaller/service/MissedCallsNotificationService;->i(Landroid/app/Notification;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v1, :cond_24

    return-object v1

    :cond_24
    move-object v1, v5

    :goto_12
    move-object v5, v1

    .line 101
    :cond_25
    invoke-virtual {v5}, Ln3/k/a/q;->d()Landroid/app/Notification;

    move-result-object v1

    return-object v1
.end method

.method public onCreate()V
    .locals 1

    .line 1
    invoke-super {p0}, Ln3/k/a/i;->onCreate()V

    .line 2
    sget-object v0, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {v0}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/k2;->x(Lcom/truecaller/service/MissedCallsNotificationService;)V

    return-void
.end method

.method public onHandleWork(Landroid/content/Intent;)V
    .locals 2

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lcom/truecaller/service/MissedCallsNotificationService$d;

    const/4 v0, 0x0

    invoke-direct {p1, p0, v0}, Lcom/truecaller/service/MissedCallsNotificationService$d;-><init>(Lcom/truecaller/service/MissedCallsNotificationService;Ls1/w/d;)V

    const/4 v1, 0x1

    invoke-static {v0, p1, v1, v0}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
