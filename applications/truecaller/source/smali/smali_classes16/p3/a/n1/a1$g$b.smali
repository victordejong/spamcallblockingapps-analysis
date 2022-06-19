.class public Lp3/a/n1/a1$g$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lp3/a/n1/a1$g;->a(Lp3/a/g1;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lp3/a/g1;

.field public final synthetic b:Lp3/a/n1/a1$g;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1$g;Lp3/a/g1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iput-object p2, p0, Lp3/a/n1/a1$g$b;->a:Lp3/a/g1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 13

    .line 1
    iget-object v0, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 2
    iget-object v0, v0, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 3
    iget-object v0, v0, Lp3/a/p;->a:Lp3/a/o;

    .line 4
    sget-object v1, Lp3/a/o;->e:Lp3/a/o;

    if-ne v0, v1, :cond_0

    return-void

    .line 5
    :cond_0
    iget-object v0, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 6
    iget-object v0, v0, Lp3/a/n1/a1;->v:Lp3/a/n1/t1;

    .line 7
    iget-object v1, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v2, v1, Lp3/a/n1/a1$g;->a:Lp3/a/n1/x;

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    .line 8
    iget-object v0, v1, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 9
    iput-object v3, v0, Lp3/a/n1/a1;->v:Lp3/a/n1/t1;

    .line 10
    iget-object v0, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 11
    iget-object v0, v0, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 12
    invoke-virtual {v0}, Lp3/a/n1/a1$f;->b()V

    .line 13
    iget-object v0, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    sget-object v1, Lp3/a/o;->d:Lp3/a/o;

    invoke-static {v0, v1}, Lp3/a/n1/a1;->h(Lp3/a/n1/a1;Lp3/a/o;)V

    goto/16 :goto_2

    .line 14
    :cond_1
    iget-object v0, v1, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 15
    iget-object v1, v0, Lp3/a/n1/a1;->u:Lp3/a/n1/x;

    if-ne v1, v2, :cond_8

    .line 16
    iget-object v0, v0, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 17
    iget-object v0, v0, Lp3/a/p;->a:Lp3/a/o;

    .line 18
    sget-object v1, Lp3/a/o;->a:Lp3/a/o;

    const/4 v2, 0x0

    const/4 v4, 0x1

    if-ne v0, v1, :cond_2

    move v0, v4

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    iget-object v1, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v1, v1, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 19
    iget-object v1, v1, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 20
    iget-object v1, v1, Lp3/a/p;->a:Lp3/a/o;

    const-string v5, "Expected state is CONNECTING, actual state is %s"

    .line 21
    invoke-static {v0, v5, v1}, Ln3/g0/y;->checkState(ZLjava/lang/String;Ljava/lang/Object;)V

    .line 22
    iget-object v0, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 23
    iget-object v0, v0, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 24
    iget-object v1, v0, Lp3/a/n1/a1$f;->a:Ljava/util/List;

    iget v5, v0, Lp3/a/n1/a1$f;->b:I

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lp3/a/v;

    .line 25
    iget v5, v0, Lp3/a/n1/a1$f;->c:I

    add-int/2addr v5, v4

    iput v5, v0, Lp3/a/n1/a1$f;->c:I

    .line 26
    iget-object v1, v1, Lp3/a/v;->a:Ljava/util/List;

    .line 27
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt v5, v1, :cond_3

    .line 28
    iget v1, v0, Lp3/a/n1/a1$f;->b:I

    add-int/2addr v1, v4

    iput v1, v0, Lp3/a/n1/a1$f;->b:I

    .line 29
    iput v2, v0, Lp3/a/n1/a1$f;->c:I

    .line 30
    :cond_3
    iget-object v0, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 31
    iget-object v0, v0, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 32
    iget v1, v0, Lp3/a/n1/a1$f;->b:I

    iget-object v0, v0, Lp3/a/n1/a1$f;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_4

    move v0, v4

    goto :goto_1

    :cond_4
    move v0, v2

    :goto_1
    if-nez v0, :cond_7

    .line 33
    iget-object v0, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    .line 34
    iput-object v3, v0, Lp3/a/n1/a1;->u:Lp3/a/n1/x;

    .line 35
    iget-object v0, v0, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 36
    invoke-virtual {v0}, Lp3/a/n1/a1$f;->b()V

    .line 37
    iget-object v0, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    iget-object v1, p0, Lp3/a/n1/a1$g$b;->a:Lp3/a/g1;

    .line 38
    iget-object v3, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    invoke-virtual {v3}, Lp3/a/k1;->d()V

    .line 39
    invoke-virtual {v1}, Lp3/a/g1;->g()Z

    move-result v3

    xor-int/2addr v3, v4

    const-string v5, "The error status must not be OK"

    invoke-static {v3, v5}, Ln3/g0/y;->checkArgument2(ZLjava/lang/Object;)V

    .line 40
    new-instance v3, Lp3/a/p;

    sget-object v5, Lp3/a/o;->c:Lp3/a/o;

    invoke-direct {v3, v5, v1}, Lp3/a/p;-><init>(Lp3/a/o;Lp3/a/g1;)V

    .line 41
    invoke-virtual {v0, v3}, Lp3/a/n1/a1;->j(Lp3/a/p;)V

    .line 42
    iget-object v3, v0, Lp3/a/n1/a1;->n:Lp3/a/n1/l;

    if-nez v3, :cond_5

    .line 43
    iget-object v3, v0, Lp3/a/n1/a1;->d:Lp3/a/n1/l$a;

    check-cast v3, Lp3/a/n1/g0$a;

    .line 44
    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 45
    new-instance v3, Lp3/a/n1/g0;

    invoke-direct {v3}, Lp3/a/n1/g0;-><init>()V

    .line 46
    iput-object v3, v0, Lp3/a/n1/a1;->n:Lp3/a/n1/l;

    .line 47
    :cond_5
    iget-object v3, v0, Lp3/a/n1/a1;->n:Lp3/a/n1/l;

    .line 48
    check-cast v3, Lp3/a/n1/g0;

    invoke-virtual {v3}, Lp3/a/n1/g0;->a()J

    move-result-wide v5

    iget-object v3, v0, Lp3/a/n1/a1;->o:Lcom/google/common/base/Stopwatch;

    sget-object v11, Ljava/util/concurrent/TimeUnit;->NANOSECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v3, v11}, Lcom/google/common/base/Stopwatch;->elapsed(Ljava/util/concurrent/TimeUnit;)J

    move-result-wide v7

    sub-long v9, v5, v7

    .line 49
    iget-object v3, v0, Lp3/a/n1/a1;->j:Lp3/a/e;

    sget-object v5, Lp3/a/e$a;->b:Lp3/a/e$a;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    .line 50
    invoke-virtual {v0, v1}, Lp3/a/n1/a1;->k(Lp3/a/g1;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v6, v2

    invoke-static {v9, v10}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v6, v4

    const-string v1, "TRANSIENT_FAILURE ({0}). Will reconnect after {1} ns"

    .line 51
    invoke-virtual {v3, v5, v1, v6}, Lp3/a/e;->b(Lp3/a/e$a;Ljava/lang/String;[Ljava/lang/Object;)V

    .line 52
    iget-object v1, v0, Lp3/a/n1/a1;->p:Lp3/a/k1$c;

    if-nez v1, :cond_6

    move v2, v4

    :cond_6
    const-string v1, "previous reconnectTask is not done"

    invoke-static {v2, v1}, Ln3/g0/y;->checkState1(ZLjava/lang/Object;)V

    .line 53
    iget-object v7, v0, Lp3/a/n1/a1;->k:Lp3/a/k1;

    new-instance v8, Lp3/a/n1/b1;

    invoke-direct {v8, v0}, Lp3/a/n1/b1;-><init>(Lp3/a/n1/a1;)V

    iget-object v12, v0, Lp3/a/n1/a1;->g:Ljava/util/concurrent/ScheduledExecutorService;

    invoke-virtual/range {v7 .. v12}, Lp3/a/k1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lp3/a/k1$c;

    move-result-object v1

    iput-object v1, v0, Lp3/a/n1/a1;->p:Lp3/a/k1$c;

    goto :goto_2

    .line 54
    :cond_7
    iget-object v0, p0, Lp3/a/n1/a1$g$b;->b:Lp3/a/n1/a1$g;

    iget-object v0, v0, Lp3/a/n1/a1$g;->c:Lp3/a/n1/a1;

    invoke-static {v0}, Lp3/a/n1/a1;->i(Lp3/a/n1/a1;)V

    :cond_8
    :goto_2
    return-void
.end method
