.class public final Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\r\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\n\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u00089\u0010\u001bJ#\u0010\u0007\u001a\u00020\u00062\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0016\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u0013\u0010\t\u001a\u00020\u0006H\u0082@\u00f8\u0001\u0000\u00a2\u0006\u0004\u0008\t\u0010\nR(\u0010\u0013\u001a\u0008\u0012\u0004\u0012\u00020\u000c0\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\"\u0004\u0008\u0011\u0010\u0012R(\u0010\u001c\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\t\u0010\u0015\u0012\u0004\u0008\u001a\u0010\u001b\u001a\u0004\u0008\u0016\u0010\u0017\"\u0004\u0008\u0018\u0010\u0019R(\u0010!\u001a\u00020\u00148\u0006@\u0006X\u0087.\u00a2\u0006\u0018\n\u0004\u0008\u001d\u0010\u0015\u0012\u0004\u0008 \u0010\u001b\u001a\u0004\u0008\u001e\u0010\u0017\"\u0004\u0008\u001f\u0010\u0019R(\u0010%\u001a\u0008\u0012\u0004\u0012\u00020\"0\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008#\u0010\u000e\u001a\u0004\u0008#\u0010\u0010\"\u0004\u0008$\u0010\u0012R(\u0010*\u001a\u0008\u0012\u0004\u0012\u00020&0\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\'\u0010\u000e\u001a\u0004\u0008(\u0010\u0010\"\u0004\u0008)\u0010\u0012R(\u0010/\u001a\u0008\u0012\u0004\u0012\u00020+0\u000b8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008,\u0010\u000e\u001a\u0004\u0008-\u0010\u0010\"\u0004\u0008.\u0010\u0012R\u0016\u00103\u001a\u0002008\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u00081\u00102R\"\u0010\u0003\u001a\u00020\u00028\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u00084\u00105\u001a\u0004\u00084\u00106\"\u0004\u00087\u00108\u0082\u0002\u0004\n\u0002\u0008\u0019\u00a8\u0006:"
    }
    d2 = {
        "Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;",
        "Landroid/content/BroadcastReceiver;",
        "Landroid/content/Context;",
        "context",
        "Landroid/content/Intent;",
        "intent",
        "Ls1/s;",
        "onReceive",
        "(Landroid/content/Context;Landroid/content/Intent;)V",
        "a",
        "(Ls1/w/d;)Ljava/lang/Object;",
        "Lo3/a;",
        "Le/a/i4/e;",
        "f",
        "Lo3/a;",
        "getAnalyticsNotificationManager",
        "()Lo3/a;",
        "setAnalyticsNotificationManager",
        "(Lo3/a;)V",
        "analyticsNotificationManager",
        "Ls1/w/f;",
        "Ls1/w/f;",
        "getUiContext",
        "()Ls1/w/f;",
        "setUiContext",
        "(Ls1/w/f;)V",
        "getUiContext$annotations",
        "()V",
        "uiContext",
        "b",
        "getAsyncContext",
        "setAsyncContext",
        "getAsyncContext$annotations",
        "asyncContext",
        "Le/a/h/q0/a;",
        "d",
        "setReminderManager",
        "reminderManager",
        "Le/a/k3/j/b;",
        "g",
        "getAggregatedContactDao",
        "setAggregatedContactDao",
        "aggregatedContactDao",
        "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;",
        "e",
        "getInitiateCallHelper",
        "setInitiateCallHelper",
        "initiateCallHelper",
        "Ln3/k/a/x;",
        "h",
        "Ln3/k/a/x;",
        "notificationManager",
        "c",
        "Landroid/content/Context;",
        "()Landroid/content/Context;",
        "setContext",
        "(Landroid/content/Context;)V",
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


# instance fields
.field public a:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Ls1/w/f;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Landroid/content/Context;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/h/q0/a;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Lcom/truecaller/calling/initiate_call/InitiateCallHelper;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public f:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/i4/e;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public g:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/k3/j/b;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public h:Ln3/k/a/x;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method public static final b(Landroid/content/Context;Lcom/truecaller/calling/missedcallreminder/MissedCallReminder;)Landroid/content/Intent;
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "reminder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    .line 3
    invoke-virtual {v1, v0, p1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string p0, "com.truecaller.intent.action.MISSED_CALL_POST_REMINDER"

    .line 5
    invoke-virtual {p1, p0}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "reminderBundle"

    .line 6
    invoke-virtual {p0, p1, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    move-result-object p0

    const-string p1, "Intent(context, MissedCa\u2026ER_BUNDLE, wrapperBundle)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method


# virtual methods
.method public final synthetic a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->a:Ls1/w/f;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    new-instance v2, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$a;

    invoke-direct {v2, p0, v1}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$a;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Ls1/w/d;)V

    invoke-static {v0, v2, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_1
    const-string p1, "uiContext"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public final c()Landroid/content/Context;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->c:Landroid/content/Context;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "context"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public final d()Lo3/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lo3/a<",
            "Le/a/h/q0/a;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->d:Lo3/a;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "reminderManager"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6

    if-eqz p1, :cond_2

    if-nez p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object v0, Le/a/k2;->a:Le/a/k2$a;

    invoke-virtual {v0}, Le/a/k2$a;->a()Le/a/k2;

    move-result-object v0

    invoke-interface {v0, p0}, Le/a/k2;->I(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;)V

    .line 2
    new-instance v0, Ln3/k/a/x;

    invoke-direct {v0, p1}, Ln3/k/a/x;-><init>(Landroid/content/Context;)V

    const-string p1, "NotificationManagerCompat.from(context)"

    .line 3
    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->h:Ln3/k/a/x;

    .line 4
    invoke-virtual {p0}, Landroid/content/BroadcastReceiver;->goAsync()Landroid/content/BroadcastReceiver$PendingResult;

    move-result-object p1

    .line 5
    sget-object v0, Lq3/a/h1;->a:Lq3/a/h1;

    iget-object v1, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->a:Ls1/w/f;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    const/4 v3, 0x0

    new-instance v4, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;

    invoke-direct {v4, p0, p2, p1, v2}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ls1/w/d;)V

    const/4 p1, 0x2

    const/4 v5, 0x0

    move-object v2, v3

    move-object v3, v4

    move v4, p1

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void

    :cond_1
    const-string p1, "uiContext"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_2
    :goto_0
    return-void
.end method
