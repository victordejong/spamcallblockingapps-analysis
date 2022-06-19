.class public final Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->onReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.missedcallreminder.MissedCallReminderNotificationReceiver$onReceive$1"
    f = "MissedCallReminderNotificationReceiver.kt"
    l = {
        0x6a
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

.field public final synthetic g:Landroid/content/Intent;

.field public final synthetic h:Landroid/content/BroadcastReceiver$PendingResult;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iput-object p2, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->g:Landroid/content/Intent;

    iput-object p3, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->h:Landroid/content/BroadcastReceiver$PendingResult;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;

    iget-object v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v1, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->g:Landroid/content/Intent;

    iget-object v2, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->h:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;

    iget-object v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v1, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->g:Landroid/content/Intent;

    iget-object v2, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->h:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Landroid/content/Intent;Landroid/content/BroadcastReceiver$PendingResult;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    sget-object v0, Ls1/s;->a:Ls1/s;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_1

    if-ne v2, v3, :cond_0

    :try_start_0
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    goto :goto_2

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    iget-object p1, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->f:Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;

    iget-object v2, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->g:Landroid/content/Intent;

    iput v3, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->e:I

    .line 5
    iget-object v3, p1, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;->b:Ls1/w/f;

    const/4 v4, 0x0

    if-eqz v3, :cond_4

    new-instance v5, Le/a/h/q0/f;

    invoke-direct {v5, p1, v2, v4}, Le/a/h/q0/f;-><init>(Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver;Landroid/content/Intent;Ls1/w/d;)V

    invoke-static {v3, v5, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-ne p1, v1, :cond_2

    goto :goto_0

    :cond_2
    move-object p1, v0

    :goto_0
    if-ne p1, v1, :cond_3

    return-object v1

    .line 6
    :cond_3
    :goto_1
    iget-object p1, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->h:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {p1}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    return-object v0

    :cond_4
    :try_start_2
    const-string p1, "asyncContext"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v4

    .line 8
    :goto_2
    iget-object v0, p0, Lcom/truecaller/calling/missedcallreminder/MissedCallReminderNotificationReceiver$b;->h:Landroid/content/BroadcastReceiver$PendingResult;

    invoke-virtual {v0}, Landroid/content/BroadcastReceiver$PendingResult;->finish()V

    throw p1
.end method
