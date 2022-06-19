.class public final Le/a/b0/l/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/l/a;


# instance fields
.field public volatile a:Z


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/content/Context;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/b0/l/b;->a:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Le/a/b0/l/b;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_1

    monitor-exit p0

    return-void

    .line 4
    :cond_1
    :try_start_1
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    const-string v0, "context.applicationContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/j/f0;->m(Landroid/content/Context;)V

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/a/b0/l/b;->a:Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method public b()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Le/j/f0;->q(Z)V

    .line 2
    invoke-static {v0}, Le/j/f0;->o(Z)V

    .line 3
    invoke-static {v0}, Le/j/f0;->p(Z)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {v0}, Le/j/f0;->q(Z)V

    .line 2
    invoke-static {v0}, Le/j/f0;->o(Z)V

    .line 3
    invoke-static {v0}, Le/j/f0;->p(Z)V

    .line 4
    sput-boolean v0, Le/j/f0;->u:Z

    return-void
.end method
