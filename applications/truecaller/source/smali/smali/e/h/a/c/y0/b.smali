.class public Le/h/a/c/y0/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/h/a/c/y0/d;

.field public final b:Le/h/a/c/y0/f;

.field public final c:Le/h/a/c/y0/f;

.field public final d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

.field public final e:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Le/h/a/c/y0/h;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/h/a/c/y0/d;

    invoke-direct {v0}, Le/h/a/c/y0/d;-><init>()V

    iput-object v0, p0, Le/h/a/c/y0/b;->a:Le/h/a/c/y0/d;

    .line 3
    new-instance v0, Le/h/a/c/y0/f;

    invoke-direct {v0}, Le/h/a/c/y0/f;-><init>()V

    iput-object v0, p0, Le/h/a/c/y0/b;->b:Le/h/a/c/y0/f;

    .line 4
    iput-object v0, p0, Le/h/a/c/y0/b;->c:Le/h/a/c/y0/f;

    .line 5
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Le/h/a/c/y0/b;->e:Ljava/util/HashMap;

    .line 6
    iput-object p1, p0, Le/h/a/c/y0/b;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    return-void
.end method


# virtual methods
.method public a()Le/h/a/c/y0/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Le/h/a/c/y0/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/y0/b;->a:Le/h/a/c/y0/d;

    iget-object v1, p0, Le/h/a/c/y0/b;->c:Le/h/a/c/y0/f;

    const-string v2, "ioTask"

    invoke-virtual {p0, v0, v1, v2}, Le/h/a/c/y0/b;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;)Le/h/a/c/y0/k;

    move-result-object v0

    return-object v0
.end method

.method public b()Le/h/a/c/y0/k;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Le/h/a/c/y0/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/y0/b;->b:Le/h/a/c/y0/f;

    iget-object v1, p0, Le/h/a/c/y0/b;->c:Le/h/a/c/y0/f;

    const-string v2, "Main"

    invoke-virtual {p0, v0, v1, v2}, Le/h/a/c/y0/b;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;)Le/h/a/c/y0/k;

    move-result-object v0

    return-object v0
.end method

.method public c()Le/h/a/c/y0/k;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">()",
            "Le/h/a/c/y0/k<",
            "TTResult;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/h/a/c/y0/b;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    .line 2
    iget-object v0, v0, Lcom/clevertap/android/sdk/CleverTapInstanceConfig;->a:Ljava/lang/String;

    .line 3
    invoke-virtual {p0, v0}, Le/h/a/c/y0/b;->d(Ljava/lang/String;)Le/h/a/c/y0/k;

    move-result-object v0

    return-object v0
.end method

.method public d(Ljava/lang/String;)Le/h/a/c/y0/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            ")",
            "Le/h/a/c/y0/k<",
            "TTResult;>;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    iget-object v0, p0, Le/h/a/c/y0/b;->e:Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/h/a/c/y0/h;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Le/h/a/c/y0/h;

    invoke-direct {v0}, Le/h/a/c/y0/h;-><init>()V

    .line 3
    iget-object v1, p0, Le/h/a/c/y0/b;->e:Ljava/util/HashMap;

    invoke-virtual {v1, p1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, p0, Le/h/a/c/y0/b;->c:Le/h/a/c/y0/f;

    const-string v1, "PostAsyncSafely"

    invoke-virtual {p0, v0, p1, v1}, Le/h/a/c/y0/b;->e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;)Le/h/a/c/y0/k;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Tag can\'t be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public e(Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;)Le/h/a/c/y0/k;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<TResult:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/util/concurrent/Executor;",
            "Ljava/util/concurrent/Executor;",
            "Ljava/lang/String;",
            ")",
            "Le/h/a/c/y0/k<",
            "TTResult;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    new-instance v0, Le/h/a/c/y0/k;

    iget-object v1, p0, Le/h/a/c/y0/b;->d:Lcom/clevertap/android/sdk/CleverTapInstanceConfig;

    invoke-direct {v0, v1, p1, p2, p3}, Le/h/a/c/y0/k;-><init>(Lcom/clevertap/android/sdk/CleverTapInstanceConfig;Ljava/util/concurrent/Executor;Ljava/util/concurrent/Executor;Ljava/lang/String;)V

    return-object v0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Can\'t create task "

    const-string v0, " with null executors"

    invoke-static {p2, p3, v0}, Le/d/c/a/a;->C2(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
