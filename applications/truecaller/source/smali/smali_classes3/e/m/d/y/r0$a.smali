.class public Le/m/d/y/r0$a;
.super Landroid/content/BroadcastReceiver;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/d/y/r0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public a:Le/m/d/y/r0;


# direct methods
.method public constructor <init>(Le/m/d/y/r0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    iput-object p1, p0, Le/m/d/y/r0$a;->a:Le/m/d/y/r0;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-static {}, Le/m/d/y/r0;->a()Z

    move-result v0

    .line 2
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "android.net.conn.CONNECTIVITY_CHANGE"

    .line 3
    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Le/m/d/y/r0$a;->a:Le/m/d/y/r0;

    .line 4
    iget-object v1, v1, Le/m/d/y/r0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 5
    iget-object v1, v1, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    .line 6
    invoke-virtual {v1, p0, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    return-void
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2

    .line 1
    iget-object p1, p0, Le/m/d/y/r0$a;->a:Le/m/d/y/r0;

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Le/m/d/y/r0;->b()Z

    move-result p1

    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-static {}, Le/m/d/y/r0;->a()Z

    move-result p1

    .line 3
    iget-object p1, p0, Le/m/d/y/r0$a;->a:Le/m/d/y/r0;

    .line 4
    iget-object p2, p1, Le/m/d/y/r0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    const-wide/16 v0, 0x0

    .line 5
    invoke-virtual {p2, p1, v0, v1}, Lcom/google/firebase/messaging/FirebaseMessaging;->b(Ljava/lang/Runnable;J)V

    iget-object p1, p0, Le/m/d/y/r0$a;->a:Le/m/d/y/r0;

    .line 6
    iget-object p1, p1, Le/m/d/y/r0;->c:Lcom/google/firebase/messaging/FirebaseMessaging;

    .line 7
    iget-object p1, p1, Lcom/google/firebase/messaging/FirebaseMessaging;->d:Landroid/content/Context;

    .line 8
    invoke-virtual {p1, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 p1, 0x0

    iput-object p1, p0, Le/m/d/y/r0$a;->a:Le/m/d/y/r0;

    return-void
.end method
