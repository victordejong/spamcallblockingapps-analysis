.class public Le/h/a/c/v$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/v;->a()V
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
.field public final synthetic a:Le/h/a/c/v;


# direct methods
.method public constructor <init>(Le/h/a/c/v;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/v$a;->a:Le/h/a/c/v;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public call()Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/v$a;->a:Le/h/a/c/v;

    .line 2
    iget-object v1, v0, Le/h/a/c/v;->f:Le/h/a/c/m;

    .line 3
    iget-object v1, v1, Le/h/a/c/m;->a:Ljava/lang/Object;

    .line 4
    monitor-enter v1

    .line 5
    :try_start_0
    iget-object v2, v0, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    if-eqz v2, :cond_0

    .line 6
    iget-object v0, v0, Le/h/a/c/v;->h:Le/h/a/c/k;

    check-cast v0, Le/h/a/c/o;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    monitor-exit v1

    goto :goto_1

    .line 9
    :cond_0
    iget-object v2, v0, Le/h/a/c/v;->k:Le/h/a/c/b0;

    invoke-virtual {v2}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 10
    new-instance v2, Le/h/a/c/r0/h;

    iget-object v4, v0, Le/h/a/c/v;->i:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    iget-object v3, v0, Le/h/a/c/v;->k:Le/h/a/c/b0;

    invoke-virtual {v3}, Le/h/a/c/b0;->j()Ljava/lang/String;

    move-result-object v5

    iget-object v3, v0, Le/h/a/c/v;->b:Le/h/a/c/l0/a;

    iget-object v6, v0, Le/h/a/c/v;->j:Landroid/content/Context;

    .line 11
    invoke-virtual {v3, v6}, Le/h/a/c/l0/a;->b(Landroid/content/Context;)Le/h/a/c/l0/b;

    move-result-object v6

    iget-object v7, v0, Le/h/a/c/v;->f:Le/h/a/c/m;

    iget-object v8, v0, Le/h/a/c/v;->h:Le/h/a/c/k;

    sget-boolean v9, Le/h/a/c/j0;->a:Z

    move-object v3, v2

    invoke-direct/range {v3 .. v9}, Le/h/a/c/r0/h;-><init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/lang/String;Le/h/a/c/l0/b;Le/h/a/c/m;Le/h/a/c/k;Z)V

    .line 12
    iput-object v2, v0, Le/h/a/c/v;->e:Le/h/a/c/r0/h;

    .line 13
    iget-object v0, v0, Le/h/a/c/v;->h:Le/h/a/c/k;

    check-cast v0, Le/h/a/c/o;

    .line 14
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 15
    :cond_1
    iget-object v0, v0, Le/h/a/c/v;->i:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    .line 16
    iget v0, v0, Le/h/a/c/g0;->a:I

    .line 17
    :goto_0
    monitor-exit v1

    :goto_1
    const/4 v0, 0x0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
