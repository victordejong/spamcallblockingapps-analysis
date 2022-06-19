.class public abstract Lp3/a/n1/b;
.super Lp3/a/m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lp3/a/m0<",
        "TT;>;>",
        "Lp3/a/m0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/m0;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Lp3/a/l0;
    .locals 18

    .line 1
    move-object/from16 v0, p0

    check-cast v0, Lp3/a/o1/d;

    .line 2
    iget-object v2, v0, Lp3/a/o1/d;->a:Lp3/a/n1/q1;

    .line 3
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance v9, Lp3/a/n1/r1;

    new-instance v10, Lp3/a/n1/m1;

    iget-object v0, v2, Lp3/a/n1/q1;->y:Lp3/a/n1/q1$b;

    .line 5
    invoke-interface {v0}, Lp3/a/n1/q1$b;->a()Lp3/a/n1/v;

    move-result-object v3

    new-instance v4, Lp3/a/n1/g0$a;

    invoke-direct {v4}, Lp3/a/n1/g0$a;-><init>()V

    sget-object v0, Lp3/a/n1/r0;->m:Lp3/a/n1/n2$c;

    .line 6
    new-instance v5, Lp3/a/n1/p2;

    invoke-direct {v5, v0}, Lp3/a/n1/p2;-><init>(Lp3/a/n1/n2$c;)V

    .line 7
    sget-object v6, Lp3/a/n1/r0;->o:Lcom/google/common/base/Supplier;

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    iget-object v0, v2, Lp3/a/n1/q1;->c:Ljava/util/List;

    invoke-direct {v7, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    const/4 v1, 0x0

    .line 9
    iput-boolean v1, v2, Lp3/a/n1/q1;->r:Z

    .line 10
    iget-boolean v0, v2, Lp3/a/n1/q1;->u:Z

    const-string v8, "getClientInterceptor"

    const/4 v11, 0x0

    const/4 v12, 0x1

    const-string v13, "Unable to apply census stats"

    if-eqz v0, :cond_0

    .line 11
    iput-boolean v12, v2, Lp3/a/n1/q1;->r:Z

    :try_start_0
    const-string v0, "io.grpc.census.InternalCensusStatsAccessor"

    .line 12
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const/4 v14, 0x3

    new-array v15, v14, [Ljava/lang/Class;

    .line 13
    sget-object v16, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v16, v15, v1

    aput-object v16, v15, v12

    const/16 v17, 0x2

    aput-object v16, v15, v17

    .line 14
    invoke-virtual {v0, v8, v15}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v14, v14, [Ljava/lang/Object;

    .line 15
    iget-boolean v15, v2, Lp3/a/n1/q1;->v:Z

    .line 16
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v1

    iget-boolean v15, v2, Lp3/a/n1/q1;->w:Z

    .line 17
    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    aput-object v15, v14, v12

    .line 18
    sget-object v15, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    aput-object v15, v14, v17

    .line 19
    invoke-virtual {v0, v11, v14}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/g;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v0

    .line 20
    sget-object v14, Lp3/a/n1/q1;->A:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_1
    move-exception v0

    .line 21
    sget-object v14, Lp3/a/n1/q1;->A:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_2
    move-exception v0

    .line 22
    sget-object v14, Lp3/a/n1/q1;->A:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :catch_3
    move-exception v0

    .line 23
    sget-object v14, Lp3/a/n1/q1;->A:Ljava/util/logging/Logger;

    sget-object v15, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v14, v15, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    move-object v0, v11

    :goto_1
    if-eqz v0, :cond_0

    .line 24
    invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 25
    :cond_0
    iget-boolean v0, v2, Lp3/a/n1/q1;->x:Z

    if-eqz v0, :cond_1

    .line 26
    iput-boolean v12, v2, Lp3/a/n1/q1;->r:Z

    :try_start_1
    const-string v0, "io.grpc.census.InternalCensusTracingAccessor"

    .line 27
    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    new-array v12, v1, [Ljava/lang/Class;

    .line 28
    invoke-virtual {v0, v8, v12}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    new-array v8, v1, [Ljava/lang/Object;

    .line 29
    invoke-virtual {v0, v11, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lp3/a/g;
    :try_end_1
    .catch Ljava/lang/ClassNotFoundException; {:try_start_1 .. :try_end_1} :catch_7
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_6
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_1} :catch_5
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_1} :catch_4

    move-object v11, v0

    goto :goto_2

    :catch_4
    move-exception v0

    .line 30
    sget-object v8, Lp3/a/n1/q1;->A:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v12, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_5
    move-exception v0

    .line 31
    sget-object v8, Lp3/a/n1/q1;->A:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v12, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_6
    move-exception v0

    .line 32
    sget-object v8, Lp3/a/n1/q1;->A:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v12, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_2

    :catch_7
    move-exception v0

    .line 33
    sget-object v8, Lp3/a/n1/q1;->A:Ljava/util/logging/Logger;

    sget-object v12, Ljava/util/logging/Level;->FINE:Ljava/util/logging/Level;

    invoke-virtual {v8, v12, v13, v0}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_2
    if-eqz v11, :cond_1

    .line 34
    invoke-virtual {v7, v1, v11}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 35
    :cond_1
    sget-object v8, Lp3/a/n1/u2;->a:Lp3/a/n1/u2;

    move-object v1, v10

    invoke-direct/range {v1 .. v8}, Lp3/a/n1/m1;-><init>(Lp3/a/n1/q1;Lp3/a/n1/v;Lp3/a/n1/l$a;Lp3/a/n1/y1;Lcom/google/common/base/Supplier;Ljava/util/List;Lp3/a/n1/u2;)V

    invoke-direct {v9, v10}, Lp3/a/n1/r1;-><init>(Lp3/a/l0;)V

    return-object v9
.end method

.method public b(JLjava/util/concurrent/TimeUnit;)Lp3/a/m0;
    .locals 5

    .line 1
    move-object v0, p0

    check-cast v0, Lp3/a/o1/d;

    .line 2
    iget-object v0, v0, Lp3/a/o1/d;->a:Lp3/a/n1/q1;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-wide/16 v1, 0x0

    cmp-long v1, p1, v1

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    const-string v2, "idle timeout is %s, but must be positive"

    .line 4
    invoke-static {v1, v2, p1, p2}, Ln3/g0/y;->checkArgument(ZLjava/lang/String;J)V

    .line 5
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toDays(J)J

    move-result-wide v1

    const-wide/16 v3, 0x1e

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    const-wide/16 p1, -0x1

    .line 6
    iput-wide p1, v0, Lp3/a/n1/q1;->m:J

    goto :goto_1

    .line 7
    :cond_1
    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide p1

    sget-wide v1, Lp3/a/n1/q1;->C:J

    invoke-static {p1, p2, v1, v2}, Ljava/lang/Math;->max(JJ)J

    move-result-wide p1

    iput-wide p1, v0, Lp3/a/n1/q1;->m:J

    :goto_1
    return-object p0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {p0}, Ln3/g0/y;->toStringHelper(Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    move-result-object v0

    move-object v1, p0

    check-cast v1, Lp3/a/o1/d;

    .line 2
    iget-object v1, v1, Lp3/a/o1/d;->a:Lp3/a/n1/q1;

    const-string v2, "delegate"

    .line 3
    invoke-virtual {v0, v2, v1}, Lcom/google/common/base/MoreObjects$ToStringHelper;->addHolder(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/common/base/MoreObjects$ToStringHelper;

    .line 4
    invoke-virtual {v0}, Lcom/google/common/base/MoreObjects$ToStringHelper;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
