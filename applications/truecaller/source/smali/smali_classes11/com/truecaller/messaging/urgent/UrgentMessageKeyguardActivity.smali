.class public final Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;
.super Ln3/b/a/h;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000G\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0008\u0006*\u0003\u0013\u001b#\u0018\u00002\u00020\u0001B\u0007\u00a2\u0006\u0004\u0008\'\u0010\u0008J\u0019\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0014\u00a2\u0006\u0004\u0008\u0005\u0010\u0006J\u000f\u0010\u0007\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\u0007\u0010\u0008J\u000f\u0010\t\u001a\u00020\u0004H\u0014\u00a2\u0006\u0004\u0008\t\u0010\u0008J\u000f\u0010\n\u001a\u00020\u0004H\u0016\u00a2\u0006\u0004\u0008\n\u0010\u0008J\u000f\u0010\u000b\u001a\u00020\u0004H\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0008J\u000f\u0010\r\u001a\u00020\u000cH\u0002\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u0016\u0010\u0012\u001a\u00020\u000f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0016\u001a\u00020\u00138\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0014\u0010\u0015R\u0018\u0010\u001a\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001e\u001a\u00020\u001b8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001c\u0010\u001dR\u0016\u0010\"\u001a\u00020\u001f8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008 \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008$\u0010%\u00a8\u0006("
    }
    d2 = {
        "Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;",
        "Ln3/b/a/h;",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Ls1/s;",
        "onCreate",
        "(Landroid/os/Bundle;)V",
        "onResume",
        "()V",
        "onDestroy",
        "finish",
        "qa",
        "",
        "pa",
        "()Z",
        "Ljava/lang/Runnable;",
        "c",
        "Ljava/lang/Runnable;",
        "tryToFinishAgainRunnable",
        "com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b",
        "e",
        "Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;",
        "finishSelfReceiver",
        "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;",
        "a",
        "Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;",
        "binder",
        "com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c",
        "d",
        "Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;",
        "serviceConnection",
        "Landroid/os/Handler;",
        "b",
        "Landroid/os/Handler;",
        "handler",
        "com/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a",
        "f",
        "Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a;",
        "dismissListener",
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
.field public static final synthetic g:I


# instance fields
.field public a:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

.field public final b:Landroid/os/Handler;

.field public final c:Ljava/lang/Runnable;

.field public final d:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;

.field public final e:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;

.field public final f:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/b/a/h;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->b:Landroid/os/Handler;

    .line 3
    new-instance v0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$d;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$d;-><init>(Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->c:Ljava/lang/Runnable;

    .line 4
    new-instance v0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;-><init>(Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->d:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;

    .line 5
    new-instance v0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;-><init>(Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->e:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;

    .line 6
    new-instance v0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a;

    invoke-direct {v0, p0}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a;-><init>(Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;)V

    iput-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->f:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a;

    return-void
.end method


# virtual methods
.method public finish()V
    .locals 1

    .line 1
    invoke-super {p0}, Landroid/app/Activity;->finish()V

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p0, v0, v0}, Landroid/app/Activity;->overridePendingTransition(II)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3

    .line 1
    invoke-super {p0, p1}, Ln3/r/a/l;->onCreate(Landroid/os/Bundle;)V

    .line 2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object p1

    const/high16 v0, 0x280000

    invoke-virtual {p1, v0, v0}, Landroid/view/Window;->setFlags(II)V

    const p1, 0x1020002

    .line 3
    invoke-virtual {p0, p1}, Ln3/b/a/h;->findViewById(I)Landroid/view/View;

    move-result-object p1

    .line 4
    sget-object v0, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v0, 0x7f060699

    .line 5
    invoke-static {p0, v0}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V

    .line 7
    new-instance p1, Landroid/content/Intent;

    const-class v0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService;

    invoke-direct {p1, p0, v0}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->d:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;

    const/4 v1, 0x0

    invoke-virtual {p0, p1, v0, v1}, Landroid/app/Activity;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    .line 8
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object p1

    .line 9
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->e:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;

    new-instance v1, Landroid/content/IntentFilter;

    const-string v2, "com.truecaller.messaging.urgent.ACTION_FINISH_UM_KEYGUARD_ACTIVITY"

    invoke-direct {v1, v2}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1, v0, v1}, Ln3/x/a/a;->c(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    .line 1
    invoke-super {p0}, Ln3/b/a/h;->onDestroy()V

    .line 2
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->d:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$c;

    invoke-virtual {p0, v0}, Landroid/app/Activity;->unbindService(Landroid/content/ServiceConnection;)V

    .line 4
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->qa()V

    .line 5
    invoke-static {p0}, Ln3/x/a/a;->b(Landroid/content/Context;)Ln3/x/a/a;

    move-result-object v0

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->e:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$b;

    invoke-virtual {v0, v1}, Ln3/x/a/a;->e(Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    .line 1
    invoke-super {p0}, Ln3/r/a/l;->onResume()V

    .line 2
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->pa()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->c:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->b:Landroid/os/Handler;

    iget-object v1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->c:Ljava/lang/Runnable;

    const-wide/16 v2, 0x64

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_0
    return-void
.end method

.method public final pa()Z
    .locals 2

    const-string v0, "keyguard"

    .line 1
    invoke-virtual {p0, v0}, Landroid/app/Activity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.KeyguardManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/KeyguardManager;

    .line 2
    invoke-virtual {v0}, Landroid/app/KeyguardManager;->isKeyguardLocked()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isDestroyed()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->finish()V

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public final qa()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->a:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->a:Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;

    .line 3
    iget-object v1, p0, Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity;->f:Lcom/truecaller/messaging/urgent/UrgentMessageKeyguardActivity$a;

    const-string v2, "listener"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Lcom/truecaller/messaging/urgent/service/UrgentMessageService$a;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/a/h1/o/i;

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/a/h1/o/i;->J5(Le/a/a/h1/o/c;)V

    :cond_0
    return-void
.end method
