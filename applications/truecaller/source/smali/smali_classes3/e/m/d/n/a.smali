.class public final synthetic Le/m/d/n/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/d/v/a$a;


# instance fields
.field public final synthetic a:Le/m/d/n/e;


# direct methods
.method public synthetic constructor <init>(Le/m/d/n/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/m/d/n/a;->a:Le/m/d/n/e;

    return-void
.end method


# virtual methods
.method public final a(Le/m/d/v/b;)V
    .locals 7

    iget-object v0, p0, Le/m/d/n/a;->a:Le/m/d/n/e;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget-object v1, Le/m/d/n/j/f;->a:Le/m/d/n/j/f;

    const/4 v2, 0x3

    .line 3
    invoke-virtual {v1, v2}, Le/m/d/n/j/f;->a(I)Z

    .line 4
    invoke-interface {p1}, Le/m/d/v/b;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/m/d/k/a/a;

    .line 5
    new-instance v3, Le/m/d/n/j/h/e;

    invoke-direct {v3, p1}, Le/m/d/n/j/h/e;-><init>(Le/m/d/k/a/a;)V

    .line 6
    new-instance v4, Le/m/d/n/f;

    invoke-direct {v4}, Le/m/d/n/f;-><init>()V

    const-string v5, "clx"

    .line 7
    invoke-interface {p1, v5, v4}, Le/m/d/k/a/a;->e(Ljava/lang/String;Le/m/d/k/a/a$b;)Le/m/d/k/a/a$a;

    move-result-object v5

    const/4 v6, 0x5

    if-nez v5, :cond_0

    .line 8
    invoke-virtual {v1, v2}, Le/m/d/n/j/f;->a(I)Z

    const-string v5, "crash"

    .line 9
    invoke-interface {p1, v5, v4}, Le/m/d/k/a/a;->e(Ljava/lang/String;Le/m/d/k/a/a$b;)Le/m/d/k/a/a$a;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 10
    invoke-virtual {v1, v6}, Le/m/d/n/j/f;->a(I)Z

    :cond_0
    if-eqz v5, :cond_2

    .line 11
    invoke-virtual {v1, v2}, Le/m/d/n/j/f;->a(I)Z

    .line 12
    new-instance p1, Le/m/d/n/j/h/d;

    invoke-direct {p1}, Le/m/d/n/j/h/d;-><init>()V

    .line 13
    new-instance v1, Le/m/d/n/j/h/c;

    const/16 v2, 0x1f4

    sget-object v5, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-direct {v1, v3, v2, v5}, Le/m/d/n/j/h/c;-><init>(Le/m/d/n/j/h/e;ILjava/util/concurrent/TimeUnit;)V

    .line 14
    monitor-enter v0

    .line 15
    :try_start_0
    iget-object v2, v0, Le/m/d/n/e;->d:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/d/n/j/i/a;

    .line 16
    invoke-virtual {p1, v3}, Le/m/d/n/j/h/d;->a(Le/m/d/n/j/i/a;)V

    goto :goto_0

    .line 17
    :cond_1
    iput-object p1, v4, Le/m/d/n/f;->b:Le/m/d/n/j/h/b;

    .line 18
    iput-object v1, v4, Le/m/d/n/f;->a:Le/m/d/n/j/h/b;

    .line 19
    iput-object p1, v0, Le/m/d/n/e;->c:Le/m/d/n/j/i/b;

    .line 20
    iput-object v1, v0, Le/m/d/n/e;->b:Le/m/d/n/j/h/a;

    .line 21
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 22
    :cond_2
    invoke-virtual {v1, v6}, Le/m/d/n/j/f;->a(I)Z

    :goto_1
    return-void
.end method
