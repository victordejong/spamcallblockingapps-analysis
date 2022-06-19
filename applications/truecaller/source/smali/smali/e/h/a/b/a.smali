.class public final synthetic Le/h/a/b/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Landroid/content/Context;

.field public final synthetic b:I

.field public final synthetic c:Le/h/a/b/d;

.field public final synthetic d:Landroid/os/Bundle;


# direct methods
.method public synthetic constructor <init>(Landroid/content/Context;ILe/h/a/b/d;Landroid/os/Bundle;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/h/a/b/a;->a:Landroid/content/Context;

    iput p2, p0, Le/h/a/b/a;->b:I

    iput-object p3, p0, Le/h/a/b/a;->c:Le/h/a/b/d;

    iput-object p4, p0, Le/h/a/b/a;->d:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    iget-object v0, p0, Le/h/a/b/a;->a:Landroid/content/Context;

    iget v1, p0, Le/h/a/b/a;->b:I

    iget-object v2, p0, Le/h/a/b/a;->c:Le/h/a/b/d;

    iget-object v3, p0, Le/h/a/b/a;->d:Landroid/os/Bundle;

    const-string v4, "$context"

    .line 1
    invoke-static {v0, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "this$0"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$extras"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "notification"

    .line 2
    invoke-virtual {v0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/app/NotificationManager;

    .line 3
    invoke-virtual {v4}, Landroid/app/NotificationManager;->getActiveNotifications()[Landroid/service/notification/StatusBarNotification;

    move-result-object v4

    .line 4
    array-length v5, v4

    const/4 v6, 0x0

    move v7, v6

    :goto_0
    const/4 v8, 0x1

    if-ge v7, v5, :cond_1

    aget-object v9, v4, v7

    .line 5
    invoke-virtual {v9}, Landroid/service/notification/StatusBarNotification;->getId()I

    move-result v9

    if-ne v9, v1, :cond_0

    move v1, v8

    goto :goto_1

    :cond_0
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    :cond_1
    move v1, v6

    :goto_1
    if-eqz v1, :cond_5

    .line 6
    sget-object v1, Le/h/a/b/e;->c:Le/h/a/b/e;

    invoke-static {v1, v2}, Le/h/a/b/k/l;->a(Le/h/a/b/e;Le/h/a/b/d;)Le/h/a/b/k/k;

    move-result-object v1

    if-nez v1, :cond_2

    goto :goto_2

    :cond_2
    invoke-virtual {v1}, Le/h/a/b/k/k;->b()Z

    move-result v1

    if-ne v1, v8, :cond_3

    move v6, v8

    :cond_3
    :goto_2
    if-eqz v6, :cond_5

    .line 7
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 8
    invoke-virtual {v3}, Landroid/os/Bundle;->clone()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Bundle;

    const/4 v2, 0x0

    const-string v3, "wzrk_pid"

    .line 9
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pt_id"

    const-string v4, "pt_basic"

    .line 10
    invoke-virtual {v1, v3, v4}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "pt_ck"

    .line 11
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "wzrk_ck"

    .line 12
    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "notificationId"

    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->remove(Ljava/lang/String;)V

    .line 14
    new-instance v2, Le/h/a/b/d;

    const-string v3, "applicationContext"

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v0, v1}, Le/h/a/b/d;-><init>(Landroid/content/Context;Landroid/os/Bundle;)V

    .line 15
    invoke-static {v1}, Ln3/g0/y;->U(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v3

    .line 16
    invoke-static {v0, v3}, Le/h/a/c/p;->e(Landroid/content/Context;Ljava/lang/String;)Le/h/a/c/p;

    move-result-object v3

    if-nez v3, :cond_4

    goto :goto_3

    .line 17
    :cond_4
    invoke-virtual {v3, v2, v0, v1}, Le/h/a/c/p;->r(Le/h/a/c/w0/e;Landroid/content/Context;Landroid/os/Bundle;)V

    :cond_5
    :goto_3
    return-void
.end method
