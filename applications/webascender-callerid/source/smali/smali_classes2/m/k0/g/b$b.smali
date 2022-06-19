.class final Lm/k0/g/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln/b0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/k0/g/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "b"
.end annotation


# instance fields
.field private final f:Ln/m;

.field private g:Z

.field final synthetic h:Lm/k0/g/b;


# direct methods
.method public constructor <init>(Lm/k0/g/b;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lm/k0/g/b$b;->h:Lm/k0/g/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln/m;

    invoke-static {p1}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object p1

    invoke-interface {p1}, Ln/b0;->timeout()Ln/e0;

    move-result-object p1

    invoke-direct {v0, p1}, Ln/m;-><init>(Ln/e0;)V

    iput-object v0, p0, Lm/k0/g/b$b;->f:Ln/m;

    return-void
.end method


# virtual methods
.method public B0(Ln/f;J)V
    .locals 3

    const-string v0, "source"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Lm/k0/g/b$b;->g:Z

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_1

    const-wide/16 v0, 0x0

    cmp-long v2, p2, v0

    if-nez v2, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lm/k0/g/b$b;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object v0

    invoke-interface {v0, p2, p3}, Ln/g;->D0(J)Ln/g;

    .line 3
    iget-object v0, p0, Lm/k0/g/b$b;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object v0

    const-string v1, "\r\n"

    invoke-interface {v0, v1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 4
    iget-object v0, p0, Lm/k0/g/b$b;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3}, Ln/b0;->B0(Ln/f;J)V

    .line 5
    iget-object p1, p0, Lm/k0/g/b$b;->h:Lm/k0/g/b;

    invoke-static {p1}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object p1

    invoke-interface {p1, v1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    return-void

    .line 6
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public declared-synchronized close()V
    .locals 2

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lm/k0/g/b$b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    :try_start_1
    iput-boolean v0, p0, Lm/k0/g/b$b;->g:Z

    .line 3
    iget-object v0, p0, Lm/k0/g/b$b;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object v0

    const-string v1, "0\r\n\r\n"

    invoke-interface {v0, v1}, Ln/g;->n0(Ljava/lang/String;)Ln/g;

    .line 4
    iget-object v0, p0, Lm/k0/g/b$b;->h:Lm/k0/g/b;

    iget-object v1, p0, Lm/k0/g/b$b;->f:Ln/m;

    invoke-static {v0, v1}, Lm/k0/g/b;->i(Lm/k0/g/b;Ln/m;)V

    .line 5
    iget-object v0, p0, Lm/k0/g/b$b;->h:Lm/k0/g/b;

    const/4 v1, 0x3

    invoke-static {v0, v1}, Lm/k0/g/b;->p(Lm/k0/g/b;I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized flush()V
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-boolean v0, p0, Lm/k0/g/b$b;->g:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_0

    monitor-exit p0

    return-void

    .line 2
    :cond_0
    :try_start_1
    iget-object v0, p0, Lm/k0/g/b$b;->h:Lm/k0/g/b;

    invoke-static {v0}, Lm/k0/g/b;->l(Lm/k0/g/b;)Ln/g;

    move-result-object v0

    invoke-interface {v0}, Ln/g;->flush()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public timeout()Ln/e0;
    .locals 1

    .line 1
    iget-object v0, p0, Lm/k0/g/b$b;->f:Ln/m;

    return-object v0
.end method
