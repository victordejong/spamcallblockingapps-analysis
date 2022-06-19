.class public Le/h/a/c/p$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/p;-><init>(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)V
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
.field public final synthetic a:Le/h/a/c/p;


# direct methods
.method public constructor <init>(Le/h/a/c/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/p$a;->a:Le/h/a/c/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/p$a;->a:Le/h/a/c/p;

    .line 2
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 3
    iget-object v0, v0, Le/h/a/c/x;->j:Le/h/a/c/i0;

    .line 4
    iget-object v0, v0, Le/h/a/c/i0;->d:Le/h/a/c/f0;

    const-string v1, "App Launched"

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v2, 0x0

    .line 6
    :try_start_0
    iget-object v3, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 7
    iget-boolean v4, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->p:Z

    if-nez v4, :cond_0

    goto :goto_1

    .line 8
    :cond_0
    iget-boolean v3, v3, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->m:Z

    if-nez v3, :cond_1

    .line 9
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "local_events:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 10
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 11
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_0

    :cond_1
    const-string v3, "local_events"

    .line 12
    :goto_0
    invoke-virtual {v0, v1, v2, v3}, Le/h/a/c/f0;->g(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Le/h/a/c/f0;->b(Ljava/lang/String;Ljava/lang/String;)Le/h/a/c/n0/b;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    .line 13
    :catchall_0
    invoke-virtual {v0}, Le/h/a/c/f0;->d()Le/h/a/c/g0;

    move-result-object v1

    .line 14
    iget-object v0, v0, Le/h/a/c/f0;->c:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 15
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 16
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 17
    :goto_1
    iget-object v0, p0, Le/h/a/c/p$a;->a:Le/h/a/c/p;

    .line 18
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 19
    iget-object v0, v0, Le/h/a/c/x;->b:Le/h/a/c/b0;

    .line 20
    iget-object v1, v0, Le/h/a/c/b0;->e:Landroid/content/Context;

    iget-object v3, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    const-string v4, "NetworkInfo"

    invoke-static {v1, v3, v4}, Ln3/g0/y;->a0(Landroid/content/Context;Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;)Z

    move-result v1

    .line 21
    iget-object v3, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v3}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v3

    iget-object v4, v0, Le/h/a/c/b0;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 22
    iget-object v4, v4, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 23
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Setting device network info reporting state from storage to "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Le/h/a/c/g0;->b(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iput-boolean v1, v0, Le/h/a/c/b0;->g:Z

    .line 25
    iget-object v0, p0, Le/h/a/c/p$a;->a:Le/h/a/c/p;

    .line 26
    iget-object v0, v0, Le/h/a/c/p;->b:Le/h/a/c/x;

    .line 27
    iget-object v0, v0, Le/h/a/c/x;->b:Le/h/a/c/b0;

    .line 28
    invoke-virtual {v0}, Le/h/a/c/b0;->q()V

    return-object v2
.end method
