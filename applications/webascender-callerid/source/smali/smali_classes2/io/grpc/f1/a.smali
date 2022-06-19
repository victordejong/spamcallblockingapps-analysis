.class public abstract Lio/grpc/f1/a;
.super Lio/grpc/f1/d;
.source "SourceFile"

# interfaces
.implements Lio/grpc/f1/q;
.implements Lio/grpc/f1/i1$d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lio/grpc/f1/a$a;,
        Lio/grpc/f1/a$c;,
        Lio/grpc/f1/a$b;
    }
.end annotation


# static fields
.field private static final f:Ljava/util/logging/Logger;


# instance fields
.field private final a:Lio/grpc/f1/k2;

.field private final b:Lio/grpc/f1/m0;

.field private c:Z

.field private d:Z

.field private e:Lio/grpc/q0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    const-class v0, Lio/grpc/f1/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sput-object v0, Lio/grpc/f1/a;->f:Ljava/util/logging/Logger;

    return-void
.end method

.method protected constructor <init>(Lio/grpc/f1/m2;Lio/grpc/f1/e2;Lio/grpc/f1/k2;Lio/grpc/q0;Lio/grpc/d;Z)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lio/grpc/f1/d;-><init>()V

    const-string v0, "headers"

    .line 2
    invoke-static {p4, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "transportTracer"

    .line 3
    invoke-static {p3, v0}, Lcom/google/common/base/m;->p(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    check-cast p3, Lio/grpc/f1/k2;

    iput-object p3, p0, Lio/grpc/f1/a;->a:Lio/grpc/f1/k2;

    .line 4
    invoke-static {p5}, Lio/grpc/f1/o0;->k(Lio/grpc/d;)Z

    move-result p3

    iput-boolean p3, p0, Lio/grpc/f1/a;->c:Z

    .line 5
    iput-boolean p6, p0, Lio/grpc/f1/a;->d:Z

    if-nez p6, :cond_0

    .line 6
    new-instance p3, Lio/grpc/f1/i1;

    invoke-direct {p3, p0, p1, p2}, Lio/grpc/f1/i1;-><init>(Lio/grpc/f1/i1$d;Lio/grpc/f1/m2;Lio/grpc/f1/e2;)V

    iput-object p3, p0, Lio/grpc/f1/a;->b:Lio/grpc/f1/m0;

    .line 7
    iput-object p4, p0, Lio/grpc/f1/a;->e:Lio/grpc/q0;

    goto :goto_0

    .line 8
    :cond_0
    new-instance p1, Lio/grpc/f1/a$a;

    invoke-direct {p1, p0, p4, p2}, Lio/grpc/f1/a$a;-><init>(Lio/grpc/f1/a;Lio/grpc/q0;Lio/grpc/f1/e2;)V

    iput-object p1, p0, Lio/grpc/f1/a;->b:Lio/grpc/f1/m0;

    :goto_0
    return-void
.end method

.method static synthetic u()Ljava/util/logging/Logger;
    .locals 1

    .line 1
    sget-object v0, Lio/grpc/f1/a;->f:Ljava/util/logging/Logger;

    return-object v0
.end method


# virtual methods
.method public final b(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a;->t()Lio/grpc/f1/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/a$b;->b(I)V

    return-void
.end method

.method public final c(Lio/grpc/b1;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Lio/grpc/b1;->p()Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    const-string v1, "Should not cancel with OK status"

    invoke-static {v0, v1}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/f1/a;->t()Lio/grpc/f1/a$b;

    move-result-object v0

    invoke-interface {v0, p1}, Lio/grpc/f1/a$b;->c(Lio/grpc/b1;)V

    return-void
.end method

.method public e(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a;->x()Lio/grpc/f1/a$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/f1/d$a;->t(I)V

    return-void
.end method

.method public f(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a;->b:Lio/grpc/f1/m0;

    invoke-interface {v0, p1}, Lio/grpc/f1/m0;->f(I)V

    return-void
.end method

.method public final g(Lio/grpc/v;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a;->x()Lio/grpc/f1/a$c;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/f1/a$c;->v(Lio/grpc/f1/a$c;Lio/grpc/v;)V

    return-void
.end method

.method public final i(Lio/grpc/f1/u0;)V
    .locals 2

    .line 1
    invoke-interface {p0}, Lio/grpc/f1/q;->a()Lio/grpc/a;

    move-result-object v0

    .line 2
    sget-object v1, Lio/grpc/z;->a:Lio/grpc/a$c;

    invoke-virtual {v0, v1}, Lio/grpc/a;->b(Lio/grpc/a$c;)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "remote_addr"

    invoke-virtual {p1, v1, v0}, Lio/grpc/f1/u0;->b(Ljava/lang/String;Ljava/lang/Object;)Lio/grpc/f1/u0;

    return-void
.end method

.method public final j()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a;->x()Lio/grpc/f1/a$c;

    move-result-object v0

    invoke-virtual {v0}, Lio/grpc/f1/a$c;->C()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lio/grpc/f1/a;->x()Lio/grpc/f1/a$c;

    move-result-object v0

    invoke-static {v0}, Lio/grpc/f1/a$c;->w(Lio/grpc/f1/a$c;)V

    .line 3
    invoke-virtual {p0}, Lio/grpc/f1/d;->p()V

    :cond_0
    return-void
.end method

.method public k(Lio/grpc/t;)V
    .locals 6

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a;->e:Lio/grpc/q0;

    sget-object v1, Lio/grpc/f1/o0;->b:Lio/grpc/q0$f;

    invoke-virtual {v0, v1}, Lio/grpc/q0;->d(Lio/grpc/q0$f;)V

    .line 2
    sget-object v0, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {p1, v0}, Lio/grpc/t;->q(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v2

    const-wide/16 v4, 0x0

    invoke-static {v4, v5, v2, v3}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v2

    .line 3
    iget-object p1, p0, Lio/grpc/f1/a;->e:Lio/grpc/q0;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, v1, v0}, Lio/grpc/q0;->n(Lio/grpc/q0$f;Ljava/lang/Object;)V

    return-void
.end method

.method public final l(Lio/grpc/f1/r;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a;->x()Lio/grpc/f1/a$c;

    move-result-object v0

    invoke-virtual {v0, p1}, Lio/grpc/f1/a$c;->G(Lio/grpc/f1/r;)V

    .line 2
    iget-boolean p1, p0, Lio/grpc/f1/a;->d:Z

    if-nez p1, :cond_0

    .line 3
    invoke-virtual {p0}, Lio/grpc/f1/a;->t()Lio/grpc/f1/a$b;

    move-result-object p1

    iget-object v0, p0, Lio/grpc/f1/a;->e:Lio/grpc/q0;

    const/4 v1, 0x0

    invoke-interface {p1, v0, v1}, Lio/grpc/f1/a$b;->e(Lio/grpc/q0;[B)V

    .line 4
    iput-object v1, p0, Lio/grpc/f1/a;->e:Lio/grpc/q0;

    :cond_0
    return-void
.end method

.method public final n(Lio/grpc/f1/l2;ZZI)V
    .locals 2

    if-nez p1, :cond_1

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v1, "null frame before EOS"

    .line 1
    invoke-static {v0, v1}, Lcom/google/common/base/m;->e(ZLjava/lang/Object;)V

    .line 2
    invoke-virtual {p0}, Lio/grpc/f1/a;->t()Lio/grpc/f1/a$b;

    move-result-object v0

    invoke-interface {v0, p1, p2, p3, p4}, Lio/grpc/f1/a$b;->d(Lio/grpc/f1/l2;ZZI)V

    return-void
.end method

.method public final o(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a;->x()Lio/grpc/f1/a$c;

    move-result-object v0

    invoke-static {v0, p1}, Lio/grpc/f1/a$c;->u(Lio/grpc/f1/a$c;Z)V

    return-void
.end method

.method protected final q()Lio/grpc/f1/m0;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a;->b:Lio/grpc/f1/m0;

    return-object v0
.end method

.method protected bridge synthetic s()Lio/grpc/f1/d$a;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/grpc/f1/a;->x()Lio/grpc/f1/a$c;

    move-result-object v0

    return-object v0
.end method

.method protected abstract t()Lio/grpc/f1/a$b;
.end method

.method protected v()Lio/grpc/f1/k2;
    .locals 1

    .line 1
    iget-object v0, p0, Lio/grpc/f1/a;->a:Lio/grpc/f1/k2;

    return-object v0
.end method

.method public final w()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lio/grpc/f1/a;->c:Z

    return v0
.end method

.method protected abstract x()Lio/grpc/f1/a$c;
.end method
