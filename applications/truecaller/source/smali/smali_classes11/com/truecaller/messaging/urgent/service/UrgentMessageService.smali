.class public final Lcom/truecaller/messaging/urgent/service/UrgentMessageService;
.super Landroid/app/Service;
.source "SourceFile"

# interfaces
.implements Le/a/a/h1/o/j;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0008\u0006*\u0001/\u0018\u00002\u00020\u00012\u00020\u0002:\u0001\u0012B\u0007\u00a2\u0006\u0004\u00083\u0010\u0005J\u000f\u0010\u0004\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J\u000f\u0010\u0006\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0006\u0010\u0005J\u0017\u0010\n\u001a\u00020\t2\u0006\u0010\u0008\u001a\u00020\u0007H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u000bJ)\u0010\u000f\u001a\u00020\u000c2\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u00072\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000cH\u0016\u00a2\u0006\u0004\u0008\u000f\u0010\u0010J\u000f\u0010\u0011\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0011\u0010\u0005J\u000f\u0010\u0012\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0012\u0010\u0005J\u000f\u0010\u0013\u001a\u00020\u0003H\u0016\u00a2\u0006\u0004\u0008\u0013\u0010\u0005J\u000f\u0010\u0015\u001a\u00020\u0014H\u0016\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0019\u001a\u00020\u00032\u0006\u0010\u0018\u001a\u00020\u0017H\u0016\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u0016\u0010\u001d\u001a\u00020\u001b8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u001cR\u0016\u0010 \u001a\u00020\u001e8\u0002@\u0002X\u0082.\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u001fR\"\u0010\'\u001a\u00020!8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0012\u0010\"\u001a\u0004\u0008#\u0010$\"\u0004\u0008%\u0010&R\"\u0010.\u001a\u00020(8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u0011\u0010)\u001a\u0004\u0008*\u0010+\"\u0004\u0008,\u0010-R\u0016\u00102\u001a\u00020/8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u00080\u00101\u00a8\u00064"
    }
    d2 = {
        "Lcom/truecaller/messaging/urgent/service/UrgentMessageService;",
        "Landroid/app/Service;",
        "Le/a/a/h1/o/j;",
        "Ls1/s;",
        "onCreate",
        "()V",
        "onDestroy",
        "Landroid/content/Intent;",
        "intent",
        "Landroid/os/IBinder;",
        "onBind",
        "(Landroid/content/Intent;)Landroid/os/IBinder;",
        "",
        "flags",
        "startId",
        "onStartCommand",
        "(Landroid/content/Intent;II)I",
        "b",
        "a",
        "c",
        "",
        "d",
        "()Z",
        "Landroid/content/res/Configuration;",
        "newConfig",
        "onConfigurationChanged",
        "(Landroid/content/res/Configuration;)V",
        "Le/a/a/h1/o/n;",
        "Le/a/a/h1/o/n;",
        "presenterView",
        "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;",
        "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;",
        "binder",
        "Le/a/h4/n;",
        "Le/a/h4/n;",
        "getNotificationManager",
        "()Le/a/h4/n;",
        "setNotificationManager",
        "(Le/a/h4/n;)V",
        "notificationManager",
        "Le/a/a/h1/o/i;",
        "Le/a/a/h1/o/i;",
        "getPresenter",
        "()Le/a/a/h1/o/i;",
        "setPresenter",
        "(Le/a/a/h1/o/i;)V",
        "presenter",
        "com/truecaller/messaging/urgent/service/UrgentMessageService$b",
        "e",
        "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;",
        "dismissReceiver",
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
.field public a:Le/a/h4/n;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public b:Le/a/a/h1/o/i;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public c:Le/a/a/h1/o/n;

.field public d:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

.field public final e:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/app/Service;-><init>()V

    .line 2
    new-instance v0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;-><init>(Lcom/truecaller/messaging/urgent/service/UrgentMessageService;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->e:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;

    return-void
.end method

.method public static final e(Landroid/content/Context;J)V
    .locals 2

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p0

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.truecaller.messaging.urgent.ACTION_DISMISS_CONVERSATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v1, "conversation_id"

    .line 3
    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Ln3/x/a/a;->d(Landroid/content/Intent;)Z

    return-void
.end method

.method public static final f(Landroid/content/Context;Lcom/truecaller/messaging/data/types/Conversation;)V
    .locals 3

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "conversation"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;

    invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "new_message"

    .line 2
    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 3
    invoke-virtual {v1, v0, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    move-result-object p1

    const-string v0, "Intent(context, UrgentMe\u2026NVERSATION, conversation)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1a

    if-lt v0, v1, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Landroid/content/Context;->startForegroundService(Landroid/content/Intent;)Landroid/content/ComponentName;

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const-string v0, "context"

    .line 1
    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/urgent/conversations/UrgentConversationsActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 3
    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    move-result-object v0

    const-string v1, "Intent(context, UrgentCo\u2026t.FLAG_ACTIVITY_NEW_TASK)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public b()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Landroid/app/Service;->stopSelf()V

    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x10000000

    .line 2
    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 3
    invoke-virtual {p0, v0}, Landroid/app/Service;->startActivity(Landroid/content/Intent;)V

    return-void
.end method

.method public d()Z
    .locals 2

    const-string v0, "keyguard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Service;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    return v0
.end method

.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
    .locals 1

    const-string v0, "intent"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->d:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

    if-eqz p1, :cond_0

    return-object p1

    :cond_0
    const-string p1, "binder"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1

    const-string v0, "newConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/app/Service;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->c:Le/a/a/h1/o/n;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p1, Le/a/a/h1/o/n;->e:Landroid/view/View;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    return-void

    :cond_0
    const-string p1, "presenterView"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method

.method public onCreate()V
    .locals 11

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onCreate()V

    .line 2
    invoke-virtual {p0}, Landroid/app/Service;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.GraphHolder"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Le/a/w1;

    invoke-interface {v0}, Le/a/w1;->s()Le/a/j2;

    move-result-object v0

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    const-class v1, Le/a/j2;

    invoke-static {v0, v1}, Le/q/f/a/d/a;->s(Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5
    invoke-interface {v0}, Le/a/j2;->a1()Le/a/h4/n;

    move-result-object v1

    const-string v2, "Cannot return null from a non-@Nullable component method"

    .line 6
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 7
    iput-object v1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->a:Le/a/h4/n;

    .line 8
    new-instance v1, Le/a/a/h1/o/l;

    invoke-interface {v0}, Le/a/j2;->g()Ls1/w/f;

    move-result-object v4

    .line 9
    invoke-static {v4, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 10
    invoke-interface {v0}, Le/a/j2;->i()Le/a/p5/c0;

    move-result-object v5

    .line 11
    invoke-static {v5, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 12
    invoke-interface {v0}, Le/a/j2;->k()Le/a/p5/c;

    move-result-object v6

    .line 13
    invoke-static {v6, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 14
    invoke-interface {v0}, Le/a/j2;->W()Le/a/p5/g;

    move-result-object v7

    .line 15
    invoke-static {v7, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 16
    invoke-interface {v0}, Le/a/j2;->S()Le/a/a/i0;

    move-result-object v8

    .line 17
    invoke-static {v8, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 18
    invoke-interface {v0}, Le/a/j2;->o4()Le/a/q2/i0;

    move-result-object v9

    .line 19
    invoke-static {v9, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 20
    new-instance v10, Le/a/a/h1/g;

    invoke-interface {v0}, Le/a/j2;->b()Le/a/u3/g;

    move-result-object v3

    .line 21
    invoke-static {v3, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 22
    invoke-interface {v0}, Le/a/j2;->K6()Le/a/p4/b;

    move-result-object v0

    .line 23
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 24
    invoke-direct {v10, v3, v0}, Le/a/a/h1/g;-><init>(Le/a/u3/g;Le/a/p4/b;)V

    move-object v3, v1

    .line 25
    invoke-direct/range {v3 .. v10}, Le/a/a/h1/o/l;-><init>(Ls1/w/f;Le/a/p5/c0;Le/a/p5/c;Le/a/p5/g;Le/a/a/i0;Le/a/q2/i0;Le/a/a/h1/g;)V

    .line 26
    iput-object v1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    .line 27
    new-instance v0, Le/a/a/h1/o/n;

    const/4 v1, 0x1

    invoke-static {p0, v1}, Le/a/l4/k;->E(Landroid/content/Context;Z)Landroid/view/ContextThemeWrapper;

    move-result-object v1

    iget-object v2, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    const-string v3, "presenter"

    const/4 v4, 0x0

    if-eqz v2, :cond_4

    invoke-direct {v0, v1, v2}, Le/a/a/h1/o/n;-><init>(Landroid/content/Context;Le/a/a/h1/o/i;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->c:Le/a/a/h1/o/n;

    .line 28
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    if-eqz v0, :cond_3

    invoke-interface {v0, p0}, Le/a/u2/a/f;->F3(Ljava/lang/Object;)V

    .line 29
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    if-eqz v0, :cond_2

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->c:Le/a/a/h1/o/n;

    if-eqz v1, :cond_1

    invoke-interface {v0, v1}, Le/a/u2/a/e;->Y0(Ljava/lang/Object;)V

    .line 30
    new-instance v0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    if-eqz v1, :cond_0

    invoke-direct {v0, v1}, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;-><init>(Le/a/a/h1/o/i;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->d:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

    .line 31
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 32
    iget-object v1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->e:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "com.truecaller.messaging.urgent.ACTION_DISMISS_CONVERSATION"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1, v2}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void

    .line 33
    :cond_0
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_1
    const-string v0, "presenterView"

    .line 34
    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    :cond_2
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 35
    :cond_3
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4

    .line 36
    :cond_4
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v4
.end method

.method public onDestroy()V
    .locals 3

    .line 1
    invoke-super {p0}, Landroid/app/Service;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    const/4 v1, 0x0

    const-string v2, "presenter"

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/u2/a/e;->c()V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/u2/a/f;->xb()V

    .line 4
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    .line 5
    iget-object v1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->e:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$b;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void

    .line 6
    :cond_0
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 7
    :cond_1
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1
.end method

.method public onStartCommand(Landroid/content/Intent;II)I
    .locals 5

    .line 1
    invoke-super {p0, p1, p2, p3}, Landroid/app/Service;->onStartCommand(Landroid/content/Intent;II)I

    const/4 p2, 0x0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object p3

    goto :goto_0

    :cond_0
    move-object p3, p2

    :goto_0
    if-nez p3, :cond_1

    goto/16 :goto_2

    :cond_1
    invoke-virtual {p3}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0xc88b068

    const-string v2, "presenter"

    const-string v3, "notification_tapped"

    if-eq v0, v1, :cond_4

    const p1, 0x47be5060    # 97440.75f

    if-eq v0, p1, :cond_2

    goto/16 :goto_2

    .line 3
    :cond_2
    invoke-virtual {p3, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_8

    .line 4
    iget-object p1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/a/h1/o/i;->K8()V

    goto/16 :goto_2

    :cond_3
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_4
    const-string v0, "new_message"

    .line 5
    invoke-virtual {p3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p3

    if-eqz p3, :cond_8

    .line 6
    sget p3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v0, 0x1a

    if-lt p3, v0, :cond_6

    const p3, 0x7f0a1343

    .line 7
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v3}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    const/4 v1, 0x0

    const/high16 v3, 0xc000000

    .line 8
    invoke-static {p0, v1, v0, v3}, Landroid/app/PendingIntent;->getForegroundService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    .line 9
    iget-object v1, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->a:Le/a/h4/n;

    if-eqz v1, :cond_5

    const-string v3, "urgent_messages"

    invoke-interface {v1, v3}, Le/a/h4/n;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 10
    new-instance v3, Landroid/app/Notification$Builder;

    invoke-direct {v3, p0, v1}, Landroid/app/Notification$Builder;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    const v1, 0x7f080591

    .line 11
    invoke-virtual {v3, v1}, Landroid/app/Notification$Builder;->setSmallIcon(I)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x7f12101c

    .line 12
    invoke-virtual {p0, v3}, Landroid/app/Service;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setContentTitle(Ljava/lang/CharSequence;)Landroid/app/Notification$Builder;

    move-result-object v1

    const v3, 0x7f06068b

    .line 13
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 14
    invoke-static {p0, v3}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 15
    invoke-virtual {v1, v3}, Landroid/app/Notification$Builder;->setColor(I)Landroid/app/Notification$Builder;

    move-result-object v1

    .line 16
    invoke-virtual {v1, v0}, Landroid/app/Notification$Builder;->setContentIntent(Landroid/app/PendingIntent;)Landroid/app/Notification$Builder;

    move-result-object v0

    .line 17
    invoke-virtual {v0}, Landroid/app/Notification$Builder;->build()Landroid/app/Notification;

    move-result-object v0

    const-string v1, "Notification.Builder(thi\u2026ent)\n            .build()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    invoke-virtual {p0, p3, v0}, Landroid/app/Service;->startForeground(ILandroid/app/Notification;)V

    goto :goto_1

    :cond_5
    const-string p1, "notificationManager"

    .line 19
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_6
    :goto_1
    const-string p3, "conversation"

    .line 20
    invoke-virtual {p1, p3}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/truecaller/messaging/data/types/Conversation;

    .line 21
    iget-object p3, p0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;->b:Le/a/a/h1/o/i;

    if-eqz p3, :cond_7

    invoke-interface {p3, p1}, Le/a/a/h1/o/i;->B6(Lcom/truecaller/messaging/data/types/Conversation;)V

    goto :goto_2

    :cond_7
    invoke-static {v2}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw p2

    :cond_8
    :goto_2
    const/4 p1, 0x2

    return p1
.end method
