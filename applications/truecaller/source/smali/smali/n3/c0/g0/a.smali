.class public abstract Ln3/c0/g0/a;
.super Ln3/z/m2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/z/m2<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final d:Ln3/c0/y;

.field public final e:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ln3/c0/q;

.field public final h:Ln3/c0/o$c;

.field public final i:Z

.field public final j:Ljava/util/concurrent/atomic/AtomicBoolean;


# direct methods
.method public varargs constructor <init>(Ln3/c0/q;Ln3/c0/y;ZZ[Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ln3/z/m2;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    iput-object v0, p0, Ln3/c0/g0/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 3
    iput-object p1, p0, Ln3/c0/g0/a;->g:Ln3/c0/q;

    .line 4
    iput-object p2, p0, Ln3/c0/g0/a;->d:Ln3/c0/y;

    .line 5
    iput-boolean p3, p0, Ln3/c0/g0/a;->i:Z

    const-string p1, "SELECT COUNT(*) FROM ( "

    .line 6
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 7
    iget-object p3, p2, Ln3/c0/y;->a:Ljava/lang/String;

    const-string v0, " )"

    .line 8
    invoke-static {p1, p3, v0}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln3/c0/g0/a;->e:Ljava/lang/String;

    const-string p1, "SELECT * FROM ( "

    .line 9
    invoke-static {p1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    .line 10
    iget-object p2, p2, Ln3/c0/y;->a:Ljava/lang/String;

    const-string p3, " ) LIMIT ? OFFSET ?"

    .line 11
    invoke-static {p1, p2, p3}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Ln3/c0/g0/a;->f:Ljava/lang/String;

    .line 12
    new-instance p1, Ln3/c0/g0/a$a;

    invoke-direct {p1, p0, p5}, Ln3/c0/g0/a$a;-><init>(Ln3/c0/g0/a;[Ljava/lang/String;)V

    iput-object p1, p0, Ln3/c0/g0/a;->h:Ln3/c0/o$c;

    if-eqz p4, :cond_0

    .line 13
    invoke-virtual {p0}, Ln3/c0/g0/a;->h()V

    :cond_0
    return-void
.end method


# virtual methods
.method public c()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ln3/c0/g0/a;->h()V

    .line 2
    iget-object v0, p0, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getInvalidationTracker()Ln3/c0/o;

    move-result-object v0

    .line 3
    invoke-virtual {v0}, Ln3/c0/o;->h()V

    .line 4
    iget-object v0, v0, Ln3/c0/o;->l:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 5
    invoke-super {p0}, Ln3/z/v;->c()Z

    move-result v0

    return v0
.end method

.method public abstract e(Landroid/database/Cursor;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/database/Cursor;",
            ")",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation
.end method

.method public f()I
    .locals 4

    .line 1
    invoke-virtual {p0}, Ln3/c0/g0/a;->h()V

    .line 2
    iget-object v0, p0, Ln3/c0/g0/a;->e:Ljava/lang/String;

    iget-object v1, p0, Ln3/c0/g0/a;->d:Ln3/c0/y;

    .line 3
    iget v1, v1, Ln3/c0/y;->h:I

    .line 4
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 5
    iget-object v1, p0, Ln3/c0/g0/a;->d:Ln3/c0/y;

    invoke-virtual {v0, v1}, Ln3/c0/y;->k(Ln3/c0/y;)V

    .line 6
    iget-object v1, p0, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v1, v0}, Ln3/c0/q;->query(Ln3/e0/a/e;)Landroid/database/Cursor;

    move-result-object v1

    .line 7
    :try_start_0
    invoke-interface {v1}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    .line 8
    invoke-interface {v1, v3}, Landroid/database/Cursor;->getInt(I)I

    move-result v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 9
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 10
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return v2

    .line 11
    :cond_0
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 12
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    return v3

    :catchall_0
    move-exception v2

    .line 13
    invoke-interface {v1}, Landroid/database/Cursor;->close()V

    .line 14
    invoke-virtual {v0}, Ln3/c0/y;->l()V

    .line 15
    throw v2
.end method

.method public final g(II)Ln3/c0/y;
    .locals 4

    .line 1
    iget-object v0, p0, Ln3/c0/g0/a;->f:Ljava/lang/String;

    iget-object v1, p0, Ln3/c0/g0/a;->d:Ln3/c0/y;

    .line 2
    iget v1, v1, Ln3/c0/y;->h:I

    add-int/lit8 v1, v1, 0x2

    .line 3
    invoke-static {v0, v1}, Ln3/c0/y;->j(Ljava/lang/String;I)Ln3/c0/y;

    move-result-object v0

    .line 4
    iget-object v1, p0, Ln3/c0/g0/a;->d:Ln3/c0/y;

    invoke-virtual {v0, v1}, Ln3/c0/y;->k(Ln3/c0/y;)V

    .line 5
    iget v1, v0, Ln3/c0/y;->h:I

    add-int/lit8 v1, v1, -0x1

    int-to-long v2, p2

    .line 6
    invoke-virtual {v0, v1, v2, v3}, Ln3/c0/y;->l0(IJ)V

    .line 7
    iget p2, v0, Ln3/c0/y;->h:I

    int-to-long v1, p1

    .line 8
    invoke-virtual {v0, p2, v1, v2}, Ln3/c0/y;->l0(IJ)V

    return-object v0
.end method

.method public final h()V
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/c0/g0/a;->j:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Ln3/c0/g0/a;->g:Ln3/c0/q;

    invoke-virtual {v0}, Ln3/c0/q;->getInvalidationTracker()Ln3/c0/o;

    move-result-object v0

    iget-object v1, p0, Ln3/c0/g0/a;->h:Ln3/c0/o$c;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v2, Ln3/c0/o$e;

    invoke-direct {v2, v0, v1}, Ln3/c0/o$e;-><init>(Ln3/c0/o;Ln3/c0/o$c;)V

    invoke-virtual {v0, v2}, Ln3/c0/o;->a(Ln3/c0/o$c;)V

    :cond_0
    return-void
.end method
