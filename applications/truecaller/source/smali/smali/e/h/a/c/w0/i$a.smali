.class public Le/h/a/c/w0/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/w0/i;->b(Landroid/content/Context;Landroid/os/Bundle;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Landroid/os/Bundle;

.field public final synthetic b:Landroid/content/Context;

.field public final synthetic c:I

.field public final synthetic d:Le/h/a/c/w0/i;


# direct methods
.method public constructor <init>(Le/h/a/c/w0/i;Landroid/os/Bundle;Landroid/content/Context;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    iput-object p2, p0, Le/h/a/c/w0/i$a;->a:Landroid/os/Bundle;

    iput-object p3, p0, Le/h/a/c/w0/i$a;->b:Landroid/content/Context;

    iput p4, p0, Le/h/a/c/w0/i$a;->c:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/w0/i$a;->a:Landroid/os/Bundle;

    const-string v1, "extras_from"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "PTReceiver"

    .line 2
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 3
    :cond_0
    iget-object v0, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 4
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 5
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 6
    iget-object v1, v1, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Handling notification: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Le/h/a/c/w0/i$a;->a:Landroid/os/Bundle;

    invoke-virtual {v3}, Landroid/os/Bundle;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Le/h/a/c/w0/i$a;->a:Landroid/os/Bundle;

    const-string v1, "wzrk_pid"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 10
    iget-object v0, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 11
    iget-object v0, v0, Le/h/a/c/w0/i;->e:Le/h/a/c/l0/a;

    .line 12
    iget-object v1, p0, Le/h/a/c/w0/i$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Le/h/a/c/l0/a;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/w0/i$a;->a:Landroid/os/Bundle;

    const-string v2, "wzrk_pid"

    .line 13
    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 14
    monitor-enter v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 15
    :try_start_1
    invoke-virtual {v0, v1}, Le/h/a/c/l0/b;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v0

    if-eqz v1, :cond_1

    .line 16
    iget-object v0, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 17
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 18
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 19
    iget-object v1, v1, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 20
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Push Notification already rendered, not showing again"

    .line 21
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_1

    :catchall_0
    move-exception v1

    .line 22
    monitor-exit v0

    throw v1

    .line 23
    :cond_1
    iget-object v0, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 24
    iget-object v0, v0, Le/h/a/c/w0/i;->h:Le/h/a/c/w0/e;

    .line 25
    iget-object v1, p0, Le/h/a/c/w0/i$a;->a:Landroid/os/Bundle;

    .line 26
    invoke-interface {v0, v1}, Le/h/a/c/w0/e;->g(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const-string v0, ""

    .line 27
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 28
    iget-object v0, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 29
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 30
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 31
    iget-object v1, v1, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 32
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, "Push notification message is empty, not rendering"

    .line 33
    invoke-virtual {v0, v1, v2}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 34
    iget-object v0, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 35
    iget-object v0, v0, Le/h/a/c/w0/i;->e:Le/h/a/c/l0/a;

    .line 36
    iget-object v1, p0, Le/h/a/c/w0/i$a;->b:Landroid/content/Context;

    invoke-virtual {v0, v1}, Le/h/a/c/l0/a;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v0

    .line 37
    invoke-virtual {v0}, Le/h/a/c/l0/b;->l()V

    .line 38
    iget-object v0, p0, Le/h/a/c/w0/i$a;->a:Landroid/os/Bundle;

    const-string v1, "pf"

    const-string v2, ""

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 39
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 40
    iget-object v1, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    iget-object v2, p0, Le/h/a/c/w0/i$a;->b:Landroid/content/Context;

    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v2, v0}, Le/h/a/c/w0/i;->o(Landroid/content/Context;I)V

    goto :goto_1

    .line 41
    :cond_3
    iget-object v0, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 42
    iget-object v0, v0, Le/h/a/c/w0/i;->h:Le/h/a/c/w0/e;

    .line 43
    iget-object v1, p0, Le/h/a/c/w0/i$a;->a:Landroid/os/Bundle;

    iget-object v2, p0, Le/h/a/c/w0/i$a;->b:Landroid/content/Context;

    invoke-interface {v0, v1, v2}, Le/h/a/c/w0/e;->b(Landroid/os/Bundle;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 44
    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_4

    iget-object v0, p0, Le/h/a/c/w0/i$a;->b:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    iget-object v0, v0, Landroid/content/pm/ApplicationInfo;->name:Ljava/lang/String;

    .line 45
    :cond_4
    iget-object v0, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    iget-object v1, p0, Le/h/a/c/w0/i$a;->b:Landroid/content/Context;

    iget-object v2, p0, Le/h/a/c/w0/i$a;->a:Landroid/os/Bundle;

    iget v3, p0, Le/h/a/c/w0/i$a;->c:I

    invoke-static {v0, v1, v2, v3}, Le/h/a/c/w0/i;->c(Le/h/a/c/w0/i;Landroid/content/Context;Landroid/os/Bundle;I)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    goto :goto_1

    .line 46
    :catchall_1
    iget-object v0, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 47
    iget-object v0, v0, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 48
    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/w0/i$a;->d:Le/h/a/c/w0/i;

    .line 49
    iget-object v1, v1, Le/h/a/c/w0/i;->f:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 50
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 51
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    :goto_1
    const/4 v0, 0x0

    return-object v0
.end method
