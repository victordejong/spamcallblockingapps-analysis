.class public final Le/a/l4/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l4/l;


# instance fields
.field public final a:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l4/m;->a:Landroid/content/Context;

    return-void
.end method


# virtual methods
.method public a(J)V
    .locals 2

    const v0, 0x7f0a0e4c

    const-string v1, "com.truecaller.action.ACTION_SET_LAST_SEEN"

    .line 1
    invoke-virtual {p0, v0, v1, p1, p2}, Le/a/l4/m;->c(ILjava/lang/String;J)V

    return-void
.end method

.method public b(J)V
    .locals 2

    const v0, 0x7f0a0e49

    const-string v1, "com.truecaller.action.ACTION_UPDATE_PRESENCE_FOR_CURRENT_USER"

    .line 1
    invoke-virtual {p0, v0, v1, p1, p2}, Le/a/l4/m;->c(ILjava/lang/String;J)V

    return-void
.end method

.method public final c(ILjava/lang/String;J)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/l4/m;->a:Landroid/content/Context;

    const-string v1, "alarm"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.app.AlarmManager"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/app/AlarmManager;

    .line 2
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/l4/m;->a:Landroid/content/Context;

    const-class v2, Lcom/truecaller/presence/PresenceSchedulerReceiver;

    invoke-virtual {v1, p2, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    .line 4
    iget-object p2, p0, Le/a/l4/m;->a:Landroid/content/Context;

    const/high16 v2, 0x4000000

    invoke-static {p2, p1, v1, v2}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object p1

    .line 5
    :try_start_0
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    add-long/2addr v1, p3

    const/4 p2, 0x2

    invoke-virtual {v0, p2, v1, v2, p1}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    return-void
.end method
