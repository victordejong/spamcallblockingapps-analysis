.class public final Lp3/a/o1/d$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/o1/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "e"
.end annotation


# instance fields
.field public final a:Ljava/util/concurrent/Executor;

.field public final b:Z

.field public final c:Z

.field public final d:Lp3/a/n1/x2$b;

.field public final e:Ljavax/net/SocketFactory;

.field public final f:Ljavax/net/ssl/SSLSocketFactory;

.field public final g:Ljavax/net/ssl/HostnameVerifier;

.field public final h:Lp3/a/o1/o/b;

.field public final i:I

.field public final j:Z

.field public final k:Lp3/a/n1/i;

.field public final l:J

.field public final m:I

.field public final n:Z

.field public final o:I

.field public final p:Ljava/util/concurrent/ScheduledExecutorService;

.field public final q:Z

.field public r:Z


# direct methods
.method public constructor <init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lp3/a/o1/o/b;IZJJIZILp3/a/n1/x2$b;ZLp3/a/o1/d$a;)V
    .locals 7

    move-object v0, p0

    move-object/from16 v1, p16

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v2, 0x1

    .line 2
    iput-boolean v2, v0, Lp3/a/o1/d$e;->c:Z

    .line 3
    sget-object v3, Lp3/a/n1/r0;->n:Lp3/a/n1/n2$c;

    invoke-static {v3}, Lp3/a/n1/n2;->a(Lp3/a/n1/n2$c;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/concurrent/ScheduledExecutorService;

    iput-object v3, v0, Lp3/a/o1/d$e;->p:Ljava/util/concurrent/ScheduledExecutorService;

    const/4 v3, 0x0

    .line 4
    iput-object v3, v0, Lp3/a/o1/d$e;->e:Ljavax/net/SocketFactory;

    move-object v4, p4

    .line 5
    iput-object v4, v0, Lp3/a/o1/d$e;->f:Ljavax/net/ssl/SSLSocketFactory;

    .line 6
    iput-object v3, v0, Lp3/a/o1/d$e;->g:Ljavax/net/ssl/HostnameVerifier;

    move-object v3, p6

    .line 7
    iput-object v3, v0, Lp3/a/o1/d$e;->h:Lp3/a/o1/o/b;

    move v3, p7

    .line 8
    iput v3, v0, Lp3/a/o1/d$e;->i:I

    move v3, p8

    .line 9
    iput-boolean v3, v0, Lp3/a/o1/d$e;->j:Z

    .line 10
    new-instance v3, Lp3/a/n1/i;

    const-string v4, "keepalive time nanos"

    move-wide/from16 v5, p9

    invoke-direct {v3, v4, v5, v6}, Lp3/a/n1/i;-><init>(Ljava/lang/String;J)V

    iput-object v3, v0, Lp3/a/o1/d$e;->k:Lp3/a/n1/i;

    move-wide/from16 v3, p11

    .line 11
    iput-wide v3, v0, Lp3/a/o1/d$e;->l:J

    move/from16 v3, p13

    .line 12
    iput v3, v0, Lp3/a/o1/d$e;->m:I

    move/from16 v3, p14

    .line 13
    iput-boolean v3, v0, Lp3/a/o1/d$e;->n:Z

    move/from16 v3, p15

    .line 14
    iput v3, v0, Lp3/a/o1/d$e;->o:I

    move/from16 v3, p17

    .line 15
    iput-boolean v3, v0, Lp3/a/o1/d$e;->q:Z

    .line 16
    iput-boolean v2, v0, Lp3/a/o1/d$e;->b:Z

    const-string v2, "transportTracerFactory"

    .line 17
    invoke-static {v1, v2}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object v1, v0, Lp3/a/o1/d$e;->d:Lp3/a/n1/x2$b;

    .line 18
    sget-object v1, Lp3/a/o1/d;->m:Lp3/a/n1/n2$c;

    .line 19
    invoke-static {v1}, Lp3/a/n1/n2;->a(Lp3/a/n1/n2$c;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/concurrent/Executor;

    iput-object v1, v0, Lp3/a/o1/d$e;->a:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public Z()Ljava/util/concurrent/ScheduledExecutorService;
    .locals 1

    .line 1
    iget-object v0, p0, Lp3/a/o1/d$e;->p:Ljava/util/concurrent/ScheduledExecutorService;

    return-object v0
.end method

.method public close()V
    .locals 2

    .line 1
    iget-boolean v0, p0, Lp3/a/o1/d$e;->r:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lp3/a/o1/d$e;->r:Z

    .line 3
    iget-boolean v0, p0, Lp3/a/o1/d$e;->c:Z

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lp3/a/n1/r0;->n:Lp3/a/n1/n2$c;

    iget-object v1, p0, Lp3/a/o1/d$e;->p:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-static {v0, v1}, Lp3/a/n1/n2;->b(Lp3/a/n1/n2$c;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_1
    iget-boolean v0, p0, Lp3/a/o1/d$e;->b:Z

    if-eqz v0, :cond_2

    .line 6
    sget-object v0, Lp3/a/o1/d;->m:Lp3/a/n1/n2$c;

    .line 7
    iget-object v1, p0, Lp3/a/o1/d$e;->a:Ljava/util/concurrent/Executor;

    invoke-static {v0, v1}, Lp3/a/n1/n2;->b(Lp3/a/n1/n2$c;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public u0(Ljava/net/SocketAddress;Lp3/a/n1/v$a;Lp3/a/e;)Lp3/a/n1/x;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    .line 1
    iget-boolean v2, v0, Lp3/a/o1/d$e;->r:Z

    if-nez v2, :cond_1

    .line 2
    iget-object v2, v0, Lp3/a/o1/d$e;->k:Lp3/a/n1/i;

    .line 3
    new-instance v3, Lp3/a/n1/i$b;

    iget-object v4, v2, Lp3/a/n1/i;->b:Ljava/util/concurrent/atomic/AtomicLong;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicLong;->get()J

    move-result-wide v4

    const/4 v6, 0x0

    invoke-direct {v3, v2, v4, v5, v6}, Lp3/a/n1/i$b;-><init>(Lp3/a/n1/i;JLp3/a/n1/i$a;)V

    .line 4
    new-instance v2, Lp3/a/o1/d$e$a;

    move-object/from16 v20, v2

    invoke-direct {v2, v0, v3}, Lp3/a/o1/d$e$a;-><init>(Lp3/a/o1/d$e;Lp3/a/n1/i$b;)V

    .line 5
    move-object/from16 v8, p1

    check-cast v8, Ljava/net/InetSocketAddress;

    .line 6
    new-instance v2, Lp3/a/o1/f;

    move-object v7, v2

    .line 7
    iget-object v9, v1, Lp3/a/n1/v$a;->a:Ljava/lang/String;

    .line 8
    iget-object v10, v1, Lp3/a/n1/v$a;->c:Ljava/lang/String;

    .line 9
    iget-object v11, v1, Lp3/a/n1/v$a;->b:Lp3/a/a;

    .line 10
    iget-object v12, v0, Lp3/a/o1/d$e;->a:Ljava/util/concurrent/Executor;

    iget-object v13, v0, Lp3/a/o1/d$e;->e:Ljavax/net/SocketFactory;

    iget-object v14, v0, Lp3/a/o1/d$e;->f:Ljavax/net/ssl/SSLSocketFactory;

    iget-object v15, v0, Lp3/a/o1/d$e;->g:Ljavax/net/ssl/HostnameVerifier;

    iget-object v4, v0, Lp3/a/o1/d$e;->h:Lp3/a/o1/o/b;

    move-object/from16 v16, v4

    iget v4, v0, Lp3/a/o1/d$e;->i:I

    move/from16 v17, v4

    iget v4, v0, Lp3/a/o1/d$e;->m:I

    move/from16 v18, v4

    .line 11
    iget-object v1, v1, Lp3/a/n1/v$a;->d:Lp3/a/z;

    move-object/from16 v19, v1

    .line 12
    iget v1, v0, Lp3/a/o1/d$e;->o:I

    move/from16 v21, v1

    iget-object v1, v0, Lp3/a/o1/d$e;->d:Lp3/a/n1/x2$b;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v4, Lp3/a/n1/x2;

    move-object/from16 v22, v4

    iget-object v1, v1, Lp3/a/n1/x2$b;->a:Lp3/a/n1/u2;

    invoke-direct {v4, v1, v6}, Lp3/a/n1/x2;-><init>(Lp3/a/n1/u2;Lp3/a/n1/x2$a;)V

    .line 15
    iget-boolean v1, v0, Lp3/a/o1/d$e;->q:Z

    move/from16 v23, v1

    invoke-direct/range {v7 .. v23}, Lp3/a/o1/f;-><init>(Ljava/net/InetSocketAddress;Ljava/lang/String;Ljava/lang/String;Lp3/a/a;Ljava/util/concurrent/Executor;Ljavax/net/SocketFactory;Ljavax/net/ssl/SSLSocketFactory;Ljavax/net/ssl/HostnameVerifier;Lp3/a/o1/o/b;IILp3/a/z;Ljava/lang/Runnable;ILp3/a/n1/x2;Z)V

    .line 16
    iget-boolean v1, v0, Lp3/a/o1/d$e;->j:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    .line 17
    iget-wide v3, v3, Lp3/a/n1/i$b;->a:J

    .line 18
    iget-wide v5, v0, Lp3/a/o1/d$e;->l:J

    iget-boolean v7, v0, Lp3/a/o1/d$e;->n:Z

    .line 19
    iput-boolean v1, v2, Lp3/a/o1/f;->G:Z

    .line 20
    iput-wide v3, v2, Lp3/a/o1/f;->H:J

    .line 21
    iput-wide v5, v2, Lp3/a/o1/f;->I:J

    .line 22
    iput-boolean v7, v2, Lp3/a/o1/f;->J:Z

    :cond_0
    return-object v2

    .line 23
    :cond_1
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "The transport factory is closed."

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method
