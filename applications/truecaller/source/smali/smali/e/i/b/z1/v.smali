.class public Le/i/b/z1/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/i/b/s1/a;


# instance fields
.field public final a:Le/i/b/z1/b0;

.field public final b:Le/i/b/z1/h0;

.field public final c:Le/i/b/e2;

.field public final d:Le/i/b/u2/x;

.field public final e:Le/i/b/l2/a;

.field public final f:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Le/i/b/z1/b0;Le/i/b/z1/h0;Le/i/b/e2;Le/i/b/u2/x;Le/i/b/l2/a;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/i/b/z1/v;->a:Le/i/b/z1/b0;

    .line 3
    iput-object p2, p0, Le/i/b/z1/v;->b:Le/i/b/z1/h0;

    .line 4
    iput-object p3, p0, Le/i/b/z1/v;->c:Le/i/b/e2;

    .line 5
    iput-object p4, p0, Le/i/b/z1/v;->d:Le/i/b/u2/x;

    .line 6
    iput-object p5, p0, Le/i/b/z1/v;->e:Le/i/b/l2/a;

    .line 7
    iput-object p6, p0, Le/i/b/z1/v;->f:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/i/b/z1/v;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/i/b/z1/v;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Le/i/b/z1/v$a;

    invoke-direct {v1, p0}, Le/i/b/z1/v$a;-><init>(Le/i/b/z1/v;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public a(Le/i/b/u2/w;)V
    .locals 2

    .line 3
    invoke-virtual {p0}, Le/i/b/z1/v;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_0
    iget-object v0, p0, Le/i/b/z1/v;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Le/i/b/z1/v$f;

    invoke-direct {v1, p0, p1}, Le/i/b/z1/v$f;-><init>(Le/i/b/z1/v;Le/i/b/u2/w;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public b(Le/i/b/u2/p;Le/i/b/u2/w;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/i/b/z1/v;->g()Z

    move-result p1

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p0, Le/i/b/z1/v;->f:Ljava/util/concurrent/Executor;

    new-instance v0, Le/i/b/z1/v$e;

    invoke-direct {v0, p0, p2}, Le/i/b/z1/v$e;-><init>(Le/i/b/z1/v;Le/i/b/u2/w;)V

    invoke-interface {p1, v0}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public c(Le/i/b/u2/q;Ljava/lang/Exception;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/i/b/z1/v;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/i/b/z1/v;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Le/i/b/z1/v$d;

    invoke-direct {v1, p0, p2, p1}, Le/i/b/z1/v$d;-><init>(Le/i/b/z1/v;Ljava/lang/Exception;Le/i/b/u2/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public d(Le/i/b/u2/q;Le/i/b/u2/t;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/i/b/z1/v;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/i/b/z1/v;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Le/i/b/z1/v$c;

    invoke-direct {v1, p0, p1, p2}, Le/i/b/z1/v$c;-><init>(Le/i/b/z1/v;Le/i/b/u2/q;Le/i/b/u2/t;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public e(Le/i/b/u2/q;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/i/b/z1/v;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Le/i/b/z1/v;->f:Ljava/util/concurrent/Executor;

    new-instance v1, Le/i/b/z1/v$b;

    invoke-direct {v1, p0, p1}, Le/i/b/z1/v$b;-><init>(Le/i/b/z1/v;Le/i/b/u2/q;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method

.method public final f(Le/i/b/u2/q;Le/i/b/z1/b0$a;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Le/i/b/u2/q;->f()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/i/b/u2/s;

    .line 2
    iget-object v1, p0, Le/i/b/z1/v;->a:Le/i/b/z1/b0;

    invoke-virtual {v0}, Le/i/b/u2/s;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Le/i/b/z1/b0;->c(Ljava/lang/String;Le/i/b/z1/b0$a;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final g()Z
    .locals 3

    .line 1
    iget-object v0, p0, Le/i/b/z1/v;->d:Le/i/b/u2/x;

    .line 2
    iget-object v0, v0, Le/i/b/u2/x;->b:Le/i/b/u2/d0;

    .line 3
    invoke-virtual {v0}, Le/i/b/u2/d0;->g()Ljava/lang/Boolean;

    move-result-object v0

    .line 4
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    .line 5
    invoke-static {v0, v1}, Le/i/b/s2/k;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 6
    iget-object v0, p0, Le/i/b/z1/v;->e:Le/i/b/l2/a;

    .line 7
    iget-object v0, v0, Le/i/b/l2/a;->a:Landroid/content/SharedPreferences;

    const-string v2, "CRTO_ConsentGiven"

    .line 8
    invoke-interface {v0, v2, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
