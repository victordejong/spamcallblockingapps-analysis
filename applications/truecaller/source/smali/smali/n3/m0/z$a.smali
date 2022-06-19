.class public abstract Ln3/m0/z$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/m0/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ln3/m0/z$a<",
        "**>;W:",
        "Ln3/m0/z;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field public a:Z

.field public b:Ljava/util/UUID;

.field public c:Ln3/m0/c0/s/p;

.field public d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "+",
            "Landroidx/work/ListenableWorker;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/m0/z$a;->a:Z

    .line 3
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Ln3/m0/z$a;->d:Ljava/util/Set;

    .line 4
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    iput-object v0, p0, Ln3/m0/z$a;->b:Ljava/util/UUID;

    .line 5
    new-instance v0, Ln3/m0/c0/s/p;

    iget-object v1, p0, Ln3/m0/z$a;->b:Ljava/util/UUID;

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Ln3/m0/c0/s/p;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    iput-object v0, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    .line 6
    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p0, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    invoke-virtual {p0}, Ln3/m0/z$a;->d()Ln3/m0/z$a;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Ln3/m0/z$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/m0/z$a;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p0}, Ln3/m0/z$a;->d()Ln3/m0/z$a;

    move-result-object p1

    return-object p1
.end method

.method public final b()Ln3/m0/z;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ln3/m0/z$a;->c()Ln3/m0/z;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iget-object v1, v1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 3
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x18

    if-lt v2, v3, :cond_0

    .line 4
    invoke-virtual {v1}, Ln3/m0/d;->a()Z

    move-result v2

    if-nez v2, :cond_2

    .line 5
    :cond_0
    iget-boolean v2, v1, Ln3/m0/d;->d:Z

    if-nez v2, :cond_2

    .line 6
    iget-boolean v2, v1, Ln3/m0/d;->b:Z

    if-nez v2, :cond_2

    .line 7
    iget-boolean v1, v1, Ln3/m0/d;->c:Z

    if-eqz v1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v1, 0x1

    .line 8
    :goto_1
    iget-object v2, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iget-boolean v3, v2, Ln3/m0/c0/s/p;->q:Z

    if-eqz v3, :cond_5

    if-nez v1, :cond_4

    .line 9
    iget-wide v1, v2, Ln3/m0/c0/s/p;->g:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-gtz v1, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs cannot be delayed"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 11
    :cond_4
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Expedited jobs only support network and storage constraints"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 12
    :cond_5
    :goto_2
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    iput-object v1, p0, Ln3/m0/z$a;->b:Ljava/util/UUID;

    .line 13
    new-instance v1, Ln3/m0/c0/s/p;

    iget-object v2, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    invoke-direct {v1, v2}, Ln3/m0/c0/s/p;-><init>(Ln3/m0/c0/s/p;)V

    iput-object v1, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    .line 14
    iget-object v2, p0, Ln3/m0/z$a;->b:Ljava/util/UUID;

    invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    return-object v0
.end method

.method public abstract c()Ln3/m0/z;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TW;"
        }
    .end annotation
.end method

.method public abstract d()Ln3/m0/z$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TB;"
        }
    .end annotation
.end method

.method public final e(Ln3/m0/a;JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/a;",
            "J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/m0/z$a;->a:Z

    .line 2
    iget-object v0, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, v0, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    .line 3
    invoke-virtual {p4, p2, p3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/32 p3, 0x112a880

    cmp-long v1, p1, p3

    const/4 v2, 0x0

    if-lez v1, :cond_0

    .line 5
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p1

    sget-object p2, Ln3/m0/c0/s/p;->s:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Throwable;

    const-string v3, "Backoff delay duration exceeds maximum value"

    invoke-virtual {p1, p2, v3, v1}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, p3

    :cond_0
    const-wide/16 p3, 0x2710

    cmp-long v1, p1, p3

    if-gez v1, :cond_1

    .line 6
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p1

    sget-object p2, Ln3/m0/c0/s/p;->s:Ljava/lang/String;

    new-array v1, v2, [Ljava/lang/Throwable;

    const-string v2, "Backoff delay duration less than minimum value"

    invoke-virtual {p1, p2, v2, v1}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, p3

    .line 7
    :cond_1
    iput-wide p1, v0, Ln3/m0/c0/s/p;->m:J

    .line 8
    invoke-virtual {p0}, Ln3/m0/z$a;->d()Ln3/m0/z$a;

    move-result-object p1

    return-object p1
.end method

.method public f(JLjava/util/concurrent/TimeUnit;)Ln3/m0/z$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J",
            "Ljava/util/concurrent/TimeUnit;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    iput-wide p1, v0, Ln3/m0/c0/s/p;->g:J

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p1

    const-wide v0, 0x7fffffffffffffffL

    sub-long/2addr v0, p1

    iget-object p1, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iget-wide p1, p1, Ln3/m0/c0/s/p;->g:J

    cmp-long p1, v0, p1

    if-lez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Ln3/m0/z$a;->d()Ln3/m0/z$a;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The given initial delay is too large and will cause an overflow!"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public final g(Ln3/m0/f;)Ln3/m0/z$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/m0/f;",
            ")TB;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/m0/z$a;->c:Ln3/m0/c0/s/p;

    iput-object p1, v0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 2
    invoke-virtual {p0}, Ln3/m0/z$a;->d()Ln3/m0/z$a;

    move-result-object p1

    return-object p1
.end method
