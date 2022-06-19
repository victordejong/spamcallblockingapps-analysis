.class public Le/h/a/c/p$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/p;->b(Lcom/clevertap/android/sdk/inbox/CTInboxActivity;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V
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
.field public final synthetic a:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

.field public final synthetic b:Landroid/os/Bundle;

.field public final synthetic c:Le/h/a/c/p;


# direct methods
.method public constructor <init>(Le/h/a/c/p;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/p$c;->c:Le/h/a/c/p;

    iput-object p2, p0, Le/h/a/c/p$c;->a:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    iput-object p3, p0, Le/h/a/c/p$c;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/p$c;->c:Le/h/a/c/p;

    iget-object v1, p0, Le/h/a/c/p$c;->a:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 2
    iget-object v1, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->l:Ljava/lang/String;

    .line 3
    iget-object v2, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 4
    iget-object v2, v2, Le/h/a/c/x;->e:Le/h/a/c/m;

    .line 5
    iget-object v2, v2, Le/h/a/c/m;->a:Ljava/lang/Object;

    .line 6
    monitor-enter v2

    .line 7
    :try_start_0
    iget-object v3, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 8
    iget-object v3, v3, Le/h/a/c/x;->g:Le/h/a/c/v;

    .line 9
    iget-object v3, v3, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 10
    invoke-virtual {v3, v1}, Le/h/a/c/r0/h;->c(Ljava/lang/String;)Le/h/a/c/r0/m;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 11
    new-instance v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    invoke-virtual {v0}, Le/h/a/c/r0/m;->d()Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;-><init>(Lorg/json/JSONObject;)V

    goto :goto_0

    :cond_0
    move-object v1, v4

    :goto_0
    monitor-exit v2

    goto :goto_1

    .line 12
    :cond_1
    invoke-virtual {v0}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object v1

    invoke-virtual {v0}, Le/h/a/c/p;->f()Ljava/lang/String;

    move-result-object v0

    const-string v3, "Notification Inbox not initialized"

    invoke-virtual {v1, v0, v3}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v1, v4

    .line 14
    :goto_1
    iget-boolean v0, v1, Lcom/clevertap/android/sdk/inbox/CTInboxMessage;->k:Z

    if-nez v0, :cond_3

    .line 15
    iget-object v0, p0, Le/h/a/c/p$c;->c:Le/h/a/c/p;

    iget-object v1, p0, Le/h/a/c/p$c;->a:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    .line 16
    iget-object v2, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 17
    iget-object v2, v2, Le/h/a/c/x;->g:Le/h/a/c/v;

    .line 18
    iget-object v2, v2, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    if-eqz v2, :cond_2

    .line 19
    iget-object v0, v2, Le/h/a/c/r0/h;->h:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-static {v0}, Le/h/a/c/y0/a;->a(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/y0/b;

    move-result-object v0

    invoke-virtual {v0}, Le/h/a/c/y0/b;->c()Le/h/a/c/y0/k;

    move-result-object v0

    .line 20
    new-instance v3, Le/h/a/c/r0/g;

    invoke-direct {v3, v2, v1}, Le/h/a/c/r0/g;-><init>(Le/h/a/c/r0/h;Lcom/clevertap/android/sdk/inbox/CTInboxMessage;)V

    .line 21
    iget-object v1, v0, Le/h/a/c/y0/k;->c:Ljava/util/concurrent/Executor;

    .line 22
    new-instance v2, Le/h/a/c/y0/j;

    const-string v5, "markReadInboxMessage"

    invoke-direct {v2, v0, v5, v3}, Le/h/a/c/y0/j;-><init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V

    .line 23
    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    goto :goto_2

    .line 24
    :cond_2
    invoke-virtual {v0}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object v1

    invoke-virtual {v0}, Le/h/a/c/p;->f()Ljava/lang/String;

    move-result-object v0

    const-string v2, "Notification Inbox not initialized"

    invoke-virtual {v1, v0, v2}, Le/h/a/c/g0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    :goto_2
    iget-object v0, p0, Le/h/a/c/p$c;->c:Le/h/a/c/p;

    .line 26
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 27
    iget-object v0, v0, Le/h/a/c/x;->d:Le/h/a/c/f;

    const/4 v1, 0x0

    .line 28
    iget-object v2, p0, Le/h/a/c/p$c;->a:Lcom/clevertap/android/sdk/inbox/CTInboxMessage;

    iget-object v3, p0, Le/h/a/c/p$c;->b:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2, v3}, Le/h/a/c/f;->k(ZLcom/clevertap/android/sdk/inbox/CTInboxMessage;Landroid/os/Bundle;)V

    :cond_3
    return-object v4

    :catchall_0
    move-exception v0

    .line 29
    :try_start_1
    monitor-exit v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method
