.class public final Lp3/a/n1/m1$t;
.super Lp3/a/n1/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/m1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "t"
.end annotation


# instance fields
.field public final a:Lp3/a/i0$b;

.field public final b:Lp3/a/e0;

.field public final c:Lp3/a/n1/o;

.field public final d:Lp3/a/n1/p;

.field public e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;"
        }
    .end annotation
.end field

.field public f:Lp3/a/n1/a1;

.field public g:Z

.field public h:Z

.field public i:Lp3/a/k1$c;

.field public final synthetic j:Lp3/a/n1/m1;


# direct methods
.method public constructor <init>(Lp3/a/n1/m1;Lp3/a/i0$b;Lp3/a/n1/m1$n;)V
    .locals 7

    .line 1
    iput-object p1, p0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    invoke-direct {p0}, Lp3/a/n1/f;-><init>()V

    .line 2
    iget-object v0, p2, Lp3/a/i0$b;->a:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lp3/a/n1/m1$t;->e:Ljava/util/List;

    .line 4
    iget-object v1, p1, Lp3/a/n1/m1;->c:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, v0}, Lp3/a/n1/m1$t;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object v0

    .line 6
    new-instance v1, Lp3/a/i0$b$a;

    invoke-direct {v1}, Lp3/a/i0$b$a;-><init>()V

    .line 7
    iget-object v2, p2, Lp3/a/i0$b;->a:Ljava/util/List;

    invoke-virtual {v1, v2}, Lp3/a/i0$b$a;->b(Ljava/util/List;)Lp3/a/i0$b$a;

    iget-object v2, p2, Lp3/a/i0$b;->b:Lp3/a/a;

    const-string v3, "attrs"

    .line 8
    invoke-static {v2, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v2, v1, Lp3/a/i0$b$a;->b:Lp3/a/a;

    .line 9
    iget-object p2, p2, Lp3/a/i0$b;->c:[[Ljava/lang/Object;

    .line 10
    array-length v2, p2

    const/4 v3, 0x2

    new-array v4, v3, [I

    const/4 v5, 0x1

    aput v3, v4, v5

    const/4 v3, 0x0

    aput v2, v4, v3

    const-class v2, Ljava/lang/Object;

    invoke-static {v2, v4}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[Ljava/lang/Object;

    iput-object v2, v1, Lp3/a/i0$b$a;->c:[[Ljava/lang/Object;

    .line 11
    array-length v4, p2

    invoke-static {p2, v3, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 12
    invoke-virtual {v1, v0}, Lp3/a/i0$b$a;->b(Ljava/util/List;)Lp3/a/i0$b$a;

    invoke-virtual {v1}, Lp3/a/i0$b$a;->a()Lp3/a/i0$b;

    move-result-object p2

    :cond_0
    const-string v0, "args"

    .line 13
    invoke-static {p2, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p2, p0, Lp3/a/n1/m1$t;->a:Lp3/a/i0$b;

    const-string v0, "helper"

    .line 14
    invoke-static {p3, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-virtual {p1}, Lp3/a/n1/m1;->a()Ljava/lang/String;

    move-result-object p3

    const-string v0, "Subchannel"

    invoke-static {v0, p3}, Lp3/a/e0;->b(Ljava/lang/String;Ljava/lang/String;)Lp3/a/e0;

    move-result-object v2

    iput-object v2, p0, Lp3/a/n1/m1$t;->b:Lp3/a/e0;

    .line 16
    new-instance p3, Lp3/a/n1/p;

    const/4 v3, 0x0

    .line 17
    iget-object v0, p1, Lp3/a/n1/m1;->o:Lp3/a/n1/u2;

    .line 18
    invoke-interface {v0}, Lp3/a/n1/u2;->a()J

    move-result-wide v4

    const-string v0, "Subchannel for "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 19
    iget-object p2, p2, Lp3/a/i0$b;->a:Ljava/util/List;

    .line 20
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v1, p3

    invoke-direct/range {v1 .. v6}, Lp3/a/n1/p;-><init>(Lp3/a/e0;IJLjava/lang/String;)V

    iput-object p3, p0, Lp3/a/n1/m1$t;->d:Lp3/a/n1/p;

    .line 21
    new-instance p2, Lp3/a/n1/o;

    .line 22
    iget-object p1, p1, Lp3/a/n1/m1;->o:Lp3/a/n1/u2;

    .line 23
    invoke-direct {p2, p3, p1}, Lp3/a/n1/o;-><init>(Lp3/a/n1/p;Lp3/a/n1/u2;)V

    iput-object p2, p0, Lp3/a/n1/m1$t;->c:Lp3/a/n1/o;

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    invoke-virtual {v0}, Lp3/a/k1;->d()V

    .line 2
    iget-boolean v0, p0, Lp3/a/n1/m1$t;->g:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lp3/a/n1/m1$t;->e:Ljava/util/List;

    return-object v0
.end method

.method public b()Lp3/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$t;->a:Lp3/a/i0$b;

    .line 2
    iget-object v0, v0, Lp3/a/i0$b;->b:Lp3/a/a;

    return-object v0
.end method

.method public c()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/m1$t;->g:Z

    const-string v1, "Subchannel is not started"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 2
    iget-object v0, p0, Lp3/a/n1/m1$t;->f:Lp3/a/n1/a1;

    return-object v0
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    invoke-virtual {v0}, Lp3/a/k1;->d()V

    .line 2
    iget-boolean v0, p0, Lp3/a/n1/m1$t;->g:Z

    const-string v1, "not started"

    invoke-static {v0, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 3
    iget-object v0, p0, Lp3/a/n1/m1$t;->f:Lp3/a/n1/a1;

    invoke-virtual {v0}, Lp3/a/n1/a1;->a()Lp3/a/n1/u;

    return-void
.end method

.method public e()V
    .locals 8

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    invoke-virtual {v0}, Lp3/a/k1;->d()V

    .line 2
    iget-object v0, p0, Lp3/a/n1/m1$t;->f:Lp3/a/n1/a1;

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 3
    iput-boolean v1, p0, Lp3/a/n1/m1$t;->h:Z

    return-void

    .line 4
    :cond_0
    iget-boolean v0, p0, Lp3/a/n1/m1$t;->h:Z

    if-eqz v0, :cond_2

    .line 5
    iget-object v0, p0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 6
    iget-boolean v0, v0, Lp3/a/n1/m1;->K:Z

    if-eqz v0, :cond_1

    .line 7
    iget-object v0, p0, Lp3/a/n1/m1$t;->i:Lp3/a/k1$c;

    if-eqz v0, :cond_1

    .line 8
    invoke-virtual {v0}, Lp3/a/k1$c;->a()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lp3/a/n1/m1$t;->i:Lp3/a/k1$c;

    goto :goto_0

    :cond_1
    return-void

    .line 10
    :cond_2
    iput-boolean v1, p0, Lp3/a/n1/m1$t;->h:Z

    .line 11
    :goto_0
    iget-object v0, p0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 12
    iget-boolean v1, v0, Lp3/a/n1/m1;->K:Z

    if-nez v1, :cond_3

    .line 13
    iget-object v2, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v3, Lp3/a/n1/k1;

    new-instance v0, Lp3/a/n1/m1$t$b;

    invoke-direct {v0, p0}, Lp3/a/n1/m1$t$b;-><init>(Lp3/a/n1/m1$t;)V

    invoke-direct {v3, v0}, Lp3/a/n1/k1;-><init>(Ljava/lang/Runnable;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v0, p0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 14
    iget-object v0, v0, Lp3/a/n1/m1;->h:Lp3/a/n1/v;

    .line 15
    invoke-interface {v0}, Lp3/a/n1/v;->Z()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v7

    .line 16
    invoke-virtual/range {v2 .. v7}, Lp3/a/k1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lp3/a/k1$c;

    move-result-object v0

    iput-object v0, p0, Lp3/a/n1/m1$t;->i:Lp3/a/k1$c;

    return-void

    .line 17
    :cond_3
    iget-object v0, p0, Lp3/a/n1/m1$t;->f:Lp3/a/n1/a1;

    sget-object v1, Lp3/a/n1/m1;->j0:Lp3/a/g1;

    invoke-virtual {v0, v1}, Lp3/a/n1/a1;->g(Lp3/a/g1;)V

    return-void
.end method

.method public f(Lp3/a/i0$j;)V
    .locals 19

    move-object/from16 v0, p0

    .line 1
    iget-object v1, v0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    iget-object v1, v1, Lp3/a/n1/m1;->p:Lp3/a/k1;

    invoke-virtual {v1}, Lp3/a/k1;->d()V

    .line 2
    iget-boolean v1, v0, Lp3/a/n1/m1$t;->g:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const-string v3, "already started"

    invoke-static {v1, v3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 3
    iget-boolean v1, v0, Lp3/a/n1/m1$t;->h:Z

    xor-int/2addr v1, v2

    const-string v3, "already shutdown"

    invoke-static {v1, v3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 4
    iget-object v1, v0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 5
    iget-boolean v1, v1, Lp3/a/n1/m1;->K:Z

    xor-int/2addr v1, v2

    const-string v3, "Channel is being terminated"

    .line 6
    invoke-static {v1, v3}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 7
    iput-boolean v2, v0, Lp3/a/n1/m1$t;->g:Z

    .line 8
    new-instance v1, Lp3/a/n1/a1;

    iget-object v3, v0, Lp3/a/n1/m1$t;->a:Lp3/a/i0$b;

    .line 9
    iget-object v5, v3, Lp3/a/i0$b;->a:Ljava/util/List;

    .line 10
    iget-object v3, v0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 11
    invoke-virtual {v3}, Lp3/a/n1/m1;->a()Ljava/lang/String;

    move-result-object v6

    iget-object v3, v0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 12
    iget-object v7, v3, Lp3/a/n1/m1;->x:Ljava/lang/String;

    .line 13
    iget-object v8, v3, Lp3/a/n1/m1;->v:Lp3/a/n1/l$a;

    .line 14
    iget-object v9, v3, Lp3/a/n1/m1;->h:Lp3/a/n1/v;

    .line 15
    invoke-interface {v9}, Lp3/a/n1/v;->Z()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v10

    iget-object v3, v0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 16
    iget-object v11, v3, Lp3/a/n1/m1;->s:Lcom/google/common/base/Supplier;

    .line 17
    iget-object v12, v3, Lp3/a/n1/m1;->p:Lp3/a/k1;

    new-instance v13, Lp3/a/n1/m1$t$a;

    move-object/from16 v4, p1

    invoke-direct {v13, v0, v4}, Lp3/a/n1/m1$t$a;-><init>(Lp3/a/n1/m1$t;Lp3/a/i0$j;)V

    .line 18
    iget-object v14, v3, Lp3/a/n1/m1;->R:Lp3/a/a0;

    .line 19
    iget-object v3, v3, Lp3/a/n1/m1;->N:Lp3/a/n1/n$a;

    .line 20
    invoke-interface {v3}, Lp3/a/n1/n$a;->create()Lp3/a/n1/n;

    move-result-object v15

    iget-object v3, v0, Lp3/a/n1/m1$t;->d:Lp3/a/n1/p;

    iget-object v4, v0, Lp3/a/n1/m1$t;->b:Lp3/a/e0;

    iget-object v2, v0, Lp3/a/n1/m1$t;->c:Lp3/a/n1/o;

    move-object/from16 v17, v4

    move-object v4, v1

    move-object/from16 v16, v3

    move-object/from16 v18, v2

    invoke-direct/range {v4 .. v18}, Lp3/a/n1/a1;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;Lp3/a/n1/l$a;Lp3/a/n1/v;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/common/base/Supplier;Lp3/a/k1;Lp3/a/n1/a1$e;Lp3/a/a0;Lp3/a/n1/n;Lp3/a/n1/p;Lp3/a/e0;Lp3/a/e;)V

    .line 21
    iget-object v2, v0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 22
    iget-object v3, v2, Lp3/a/n1/m1;->P:Lp3/a/n1/p;

    .line 23
    sget-object v6, Lp3/a/b0$a;->b:Lp3/a/b0$a;

    .line 24
    iget-object v2, v2, Lp3/a/n1/m1;->o:Lp3/a/n1/u2;

    .line 25
    invoke-interface {v2}, Lp3/a/n1/u2;->a()J

    move-result-wide v4

    .line 26
    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v5, "Child Subchannel started"

    const-string v4, "description"

    .line 27
    invoke-static {v5, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "severity"

    .line 28
    invoke-static {v6, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "timestampNanos"

    .line 29
    invoke-static {v2, v4}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v4, "at least one of channelRef and subchannelRef must be null"

    const/4 v7, 0x1

    .line 30
    invoke-static {v7, v4}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 31
    new-instance v12, Lp3/a/b0;

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v7

    const/4 v9, 0x0

    const/4 v11, 0x0

    move-object v4, v12

    move-object v10, v1

    invoke-direct/range {v4 .. v11}, Lp3/a/b0;-><init>(Ljava/lang/String;Lp3/a/b0$a;JLp3/a/d0;Lp3/a/d0;Lp3/a/a0$a;)V

    .line 32
    invoke-virtual {v3, v12}, Lp3/a/n1/p;->b(Lp3/a/b0;)V

    .line 33
    iput-object v1, v0, Lp3/a/n1/m1$t;->f:Lp3/a/n1/a1;

    .line 34
    iget-object v2, v0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 35
    iget-object v2, v2, Lp3/a/n1/m1;->R:Lp3/a/a0;

    .line 36
    iget-object v2, v2, Lp3/a/a0;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-static {v2, v1}, Lp3/a/a0;->a(Ljava/util/Map;Lp3/a/d0;)V

    .line 37
    iget-object v2, v0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 38
    iget-object v2, v2, Lp3/a/n1/m1;->D:Ljava/util/Set;

    .line 39
    invoke-interface {v2, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public g(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    iget-object v0, v0, Lp3/a/n1/m1;->p:Lp3/a/k1;

    invoke-virtual {v0}, Lp3/a/k1;->d()V

    .line 2
    iput-object p1, p0, Lp3/a/n1/m1$t;->e:Ljava/util/List;

    .line 3
    iget-object v0, p0, Lp3/a/n1/m1$t;->j:Lp3/a/n1/m1;

    .line 4
    iget-object v0, v0, Lp3/a/n1/m1;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {p0, p1}, Lp3/a/n1/m1$t;->h(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 6
    :cond_0
    iget-object v0, p0, Lp3/a/n1/m1$t;->f:Lp3/a/n1/a1;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "newAddressGroups"

    .line 8
    invoke-static {p1, v1}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    const-string v3, "newAddressGroups contains null entry"

    .line 10
    invoke-static {v2, v3}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v1

    xor-int/lit8 v1, v1, 0x1

    const-string v2, "newAddressGroups is empty"

    invoke-static {v1, v2}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 13
    invoke-static {v1}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 14
    iget-object v1, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    new-instance v2, Lp3/a/n1/d1;

    invoke-direct {v2, v0, p1}, Lp3/a/n1/d1;-><init>(Lp3/a/n1/a1;Ljava/util/List;)V

    .line 15
    iget-object p1, v1, Lp3/a/k1;->b:Ljava/util/Queue;

    const-string v0, "runnable is null"

    invoke-static {v2, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p1, v2}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-virtual {v1}, Lp3/a/k1;->a()V

    return-void
.end method

.method public final h(Ljava/util/List;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;)",
            "Ljava/util/List<",
            "Lp3/a/v;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/v;

    .line 3
    new-instance v2, Lp3/a/v;

    .line 4
    iget-object v3, v1, Lp3/a/v;->a:Ljava/util/List;

    .line 5
    iget-object v1, v1, Lp3/a/v;->b:Lp3/a/a;

    .line 6
    invoke-virtual {v1}, Lp3/a/a;->a()Lp3/a/a$b;

    move-result-object v1

    sget-object v4, Lp3/a/v;->d:Lp3/a/a$c;

    invoke-virtual {v1, v4}, Lp3/a/a$b;->b(Lp3/a/a$c;)Lp3/a/a$b;

    invoke-virtual {v1}, Lp3/a/a$b;->a()Lp3/a/a;

    move-result-object v1

    invoke-direct {v2, v3, v1}, Lp3/a/v;-><init>(Ljava/util/List;Lp3/a/a;)V

    .line 7
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    invoke-static {v0}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/n1/m1$t;->b:Lp3/a/e0;

    invoke-virtual {v0}, Lp3/a/e0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
