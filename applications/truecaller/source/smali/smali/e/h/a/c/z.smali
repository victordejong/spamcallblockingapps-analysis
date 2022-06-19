.class public Le/h/a/c/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/h/a/c/y0/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/h/a/c/y0/g<",
        "Ljava/lang/Void;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/h/a/c/b0;


# direct methods
.method public constructor <init>(Le/h/a/c/b0;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/z;->a:Le/h/a/c/b0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSuccess(Ljava/lang/Object;)V
    .locals 8

    .line 1
    check-cast p1, Ljava/lang/Void;

    .line 2
    iget-object p1, p0, Le/h/a/c/z;->a:Le/h/a/c/b0;

    .line 3
    invoke-virtual {p1}, Le/h/a/c/b0;->g()Le/h/a/c/g0;

    move-result-object p1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Le/h/a/c/z;->a:Le/h/a/c/b0;

    .line 5
    iget-object v1, v1, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 6
    iget-object v1, v1, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    const-string v2, ":async_deviceID"

    .line 7
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "DeviceID initialized successfully!"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    iget-object p1, p0, Le/h/a/c/z;->a:Le/h/a/c/b0;

    .line 11
    iget-object v0, p1, Le/h/a/c/b0;->e:Landroid/content/Context;

    .line 12
    iget-object p1, p1, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 13
    invoke-static {v0, p1}, Le/h/a/c/p;->k(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)Le/h/a/c/p;

    move-result-object p1

    iget-object v0, p0, Le/h/a/c/z;->a:Le/h/a/c/b0;

    invoke-virtual {v0}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v0

    .line 14
    iget-object v1, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 15
    iget-object v3, v1, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 16
    iget-object v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 17
    iget-object v1, v1, Le/h/a/c/x;->g:Le/h/a/c/v;

    if-nez v1, :cond_0

    .line 18
    invoke-virtual {p1}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object p1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "ControllerManager not set yet! Returning from deviceIDCreated()"

    invoke-virtual {p1, v0, v1}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 19
    :cond_0
    iget-object v1, v1, Le/h/a/c/v;->a:Le/h/a/c/d0;

    if-nez v1, :cond_1

    .line 20
    invoke-virtual {p1}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object v1

    invoke-static {v3, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Initializing InAppFC after Device ID Created = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    iget-object v1, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 22
    iget-object v4, v1, Le/h/a/c/x;->g:Le/h/a/c/v;

    .line 23
    new-instance v5, Le/h/a/c/d0;

    iget-object v6, p1, Le/h/a/c/p;->a:Landroid/content/Context;

    .line 24
    iget-object v1, v1, Le/h/a/c/x;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 25
    invoke-direct {v5, v6, v1, v0}, Le/h/a/c/d0;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)V

    .line 26
    iput-object v5, v4, Le/h/a/c/v;->a:Le/h/a/c/d0;

    .line 27
    :cond_1
    iget-object v1, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 28
    iget-object v1, v1, Le/h/a/c/x;->g:Le/h/a/c/v;

    .line 29
    iget-object v1, v1, Le/h/a/c/v;->d:Le/h/a/c/o0/b;

    if-eqz v1, :cond_3

    .line 30
    iget-object v4, v1, Le/h/a/c/o0/b;->b:Ljava/lang/String;

    .line 31
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 32
    invoke-virtual {p1}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object v4

    invoke-static {v3, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initializing Feature Flags after Device ID Created = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 33
    iget-boolean v4, v1, Le/h/a/c/o0/b;->c:Z

    if-eqz v4, :cond_2

    goto :goto_0

    .line 34
    :cond_2
    iput-object v0, v1, Le/h/a/c/o0/b;->b:Ljava/lang/String;

    .line 35
    invoke-virtual {v1}, Le/h/a/c/o0/b;->f()V

    .line 36
    :cond_3
    :goto_0
    iget-object v1, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 37
    iget-object v1, v1, Le/h/a/c/x;->g:Le/h/a/c/v;

    .line 38
    iget-object v1, v1, Le/h/a/c/v;->g:Le/h/a/c/v0/b;

    if-eqz v1, :cond_5

    .line 39
    iget-object v4, v1, Le/h/a/c/v0/b;->h:Le/h/a/c/v0/e;

    .line 40
    iget-object v4, v4, Le/h/a/c/v0/e;->b:Ljava/lang/String;

    .line 41
    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 42
    invoke-virtual {p1}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object v4

    invoke-static {v3, v2}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Initializing Product Config after Device ID Created = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 43
    iget-object v4, v1, Le/h/a/c/v0/b;->c:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_5

    .line 44
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_4

    goto :goto_1

    .line 45
    :cond_4
    iget-object v4, v1, Le/h/a/c/v0/b;->h:Le/h/a/c/v0/e;

    .line 46
    iput-object v0, v4, Le/h/a/c/v0/e;->b:Ljava/lang/String;

    .line 47
    invoke-virtual {v1}, Le/h/a/c/v0/b;->f()V

    .line 48
    :cond_5
    :goto_1
    invoke-virtual {p1}, Le/h/a/c/p;->g()Le/h/a/c/g0;

    move-result-object v1

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    const-string v3, "Got device id from DeviceInfo, notifying user profile initialized to SyncListener"

    invoke-virtual {v1, v2, v3}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 49
    iget-object v1, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 50
    iget-object v1, v1, Le/h/a/c/x;->f:Le/h/a/c/k;

    .line 51
    invoke-virtual {v1, v0}, Le/h/a/c/k;->a(Ljava/lang/String;)V

    .line 52
    iget-object p1, p1, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 53
    iget-object p1, p1, Le/h/a/c/x;->f:Le/h/a/c/k;

    .line 54
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_2
    return-void
.end method
