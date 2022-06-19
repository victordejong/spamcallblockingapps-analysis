.class public abstract Le/a/d/y/c/a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# instance fields
.field public volatile a:Z

.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/a/d/y/c/a;->a:Z

    .line 3
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Le/a/d/y/c/a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1

    .line 1
    iget-boolean p2, p0, Le/a/d/y/c/a;->a:Z

    if-nez p2, :cond_1

    .line 2
    iget-object p2, p0, Le/a/d/y/c/a;->b:Ljava/lang/Object;

    monitor-enter p2

    .line 3
    :try_start_0
    iget-boolean v0, p0, Le/a/d/y/c/a;->a:Z

    if-nez v0, :cond_0

    .line 4
    invoke-static {p1}, Le/q/f/a/d/a;->y0(Landroid/content/Context;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/d/y/c/c;

    move-object v0, p0

    check-cast v0, Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;

    invoke-interface {p1, v0}, Le/a/d/y/c/c;->P5(Lcom/truecaller/voip/notification/missed/MissedVoipCallMessageBroadcast;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/a/d/y/c/a;->a:Z

    .line 6
    :cond_0
    monitor-exit p2

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
