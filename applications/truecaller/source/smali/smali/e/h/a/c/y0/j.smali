.class public Le/h/a/c/y0/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/lang/String;

.field public final synthetic b:Ljava/util/concurrent/Callable;

.field public final synthetic c:Le/h/a/c/y0/k;


# direct methods
.method public constructor <init>(Le/h/a/c/y0/k;Ljava/lang/String;Ljava/util/concurrent/Callable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/y0/j;->c:Le/h/a/c/y0/k;

    iput-object p2, p0, Le/h/a/c/y0/j;->a:Ljava/lang/String;

    iput-object p3, p0, Le/h/a/c/y0/j;->b:Ljava/util/concurrent/Callable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Le/h/a/c/y0/j;->c:Le/h/a/c/y0/k;

    iget-object v0, v0, Le/h/a/c/y0/k;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v0}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v0

    iget-object v1, p0, Le/h/a/c/y0/j;->c:Le/h/a/c/y0/k;

    .line 2
    iget-object v1, v1, Le/h/a/c/y0/k;->g:Ljava/lang/String;

    .line 3
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/h/a/c/y0/j;->b:Ljava/util/concurrent/Callable;

    invoke-interface {v0}, Ljava/util/concurrent/Callable;->call()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v1, p0, Le/h/a/c/y0/j;->c:Le/h/a/c/y0/k;

    iget-object v1, v1, Le/h/a/c/y0/k;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/y0/j;->c:Le/h/a/c/y0/k;

    .line 7
    iget-object v2, v2, Le/h/a/c/y0/k;->g:Ljava/lang/String;

    .line 8
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object v1, p0, Le/h/a/c/y0/j;->c:Le/h/a/c/y0/k;

    .line 11
    iput-object v0, v1, Le/h/a/c/y0/k;->e:Ljava/lang/Object;

    .line 12
    iget-object v0, v1, Le/h/a/c/y0/k;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/y0/c;

    .line 13
    iget-object v3, v1, Le/h/a/c/y0/k;->e:Ljava/lang/Object;

    invoke-virtual {v2, v3}, Le/h/a/c/y0/c;->a(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 14
    iget-object v1, p0, Le/h/a/c/y0/j;->c:Le/h/a/c/y0/k;

    .line 15
    iget-object v1, v1, Le/h/a/c/y0/k;->d:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/h/a/c/y0/c;

    .line 16
    invoke-virtual {v2, v0}, Le/h/a/c/y0/c;->a(Ljava/lang/Object;)V

    goto :goto_1

    .line 17
    :cond_0
    iget-object v1, p0, Le/h/a/c/y0/j;->c:Le/h/a/c/y0/k;

    iget-object v1, v1, Le/h/a/c/y0/k;->a:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-virtual {v1}, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->b()Le/h/a/c/g0;

    move-result-object v1

    iget-object v2, p0, Le/h/a/c/y0/j;->c:Le/h/a/c/y0/k;

    .line 18
    iget-object v2, v2, Le/h/a/c/y0/k;->g:Ljava/lang/String;

    .line 19
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    .line 20
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 21
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_1
    return-void
.end method
