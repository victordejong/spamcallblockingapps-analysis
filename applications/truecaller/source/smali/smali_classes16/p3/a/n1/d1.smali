.class public Lp3/a/n1/d1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Lp3/a/n1/a1;


# direct methods
.method public constructor <init>(Lp3/a/n1/a1;Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    iput-object p2, p0, Lp3/a/n1/d1;->a:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .line 1
    sget-object v0, Lp3/a/o;->b:Lp3/a/o;

    .line 2
    iget-object v1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 3
    iget-object v1, v1, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 4
    invoke-virtual {v1}, Lp3/a/n1/a1$f;->a()Ljava/net/SocketAddress;

    move-result-object v1

    .line 5
    iget-object v2, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 6
    iget-object v2, v2, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 7
    iget-object v3, p0, Lp3/a/n1/d1;->a:Ljava/util/List;

    .line 8
    iput-object v3, v2, Lp3/a/n1/a1$f;->a:Ljava/util/List;

    .line 9
    invoke-virtual {v2}, Lp3/a/n1/a1$f;->b()V

    .line 10
    iget-object v2, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    iget-object v3, p0, Lp3/a/n1/d1;->a:Ljava/util/List;

    .line 11
    iput-object v3, v2, Lp3/a/n1/a1;->m:Ljava/util/List;

    .line 12
    iget-object v2, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 13
    iget-object v2, v2, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 14
    iget-object v2, v2, Lp3/a/p;->a:Lp3/a/o;

    const/4 v3, 0x0

    if-eq v2, v0, :cond_0

    .line 15
    iget-object v2, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 16
    iget-object v2, v2, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 17
    iget-object v2, v2, Lp3/a/p;->a:Lp3/a/o;

    .line 18
    sget-object v4, Lp3/a/o;->a:Lp3/a/o;

    if-ne v2, v4, :cond_4

    .line 19
    :cond_0
    iget-object v2, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 20
    iget-object v2, v2, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    const/4 v4, 0x0

    move v5, v4

    .line 21
    :goto_0
    iget-object v6, v2, Lp3/a/n1/a1$f;->a:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 22
    iget-object v6, v2, Lp3/a/n1/a1$f;->a:Ljava/util/List;

    invoke-interface {v6, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lp3/a/v;

    .line 23
    iget-object v6, v6, Lp3/a/v;->a:Ljava/util/List;

    .line 24
    invoke-interface {v6, v1}, Ljava/util/List;->indexOf(Ljava/lang/Object;)I

    move-result v6

    const/4 v7, -0x1

    if-ne v6, v7, :cond_1

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 25
    :cond_1
    iput v5, v2, Lp3/a/n1/a1$f;->b:I

    .line 26
    iput v6, v2, Lp3/a/n1/a1$f;->c:I

    const/4 v4, 0x1

    :cond_2
    if-nez v4, :cond_4

    .line 27
    iget-object v1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 28
    iget-object v1, v1, Lp3/a/n1/a1;->w:Lp3/a/p;

    .line 29
    iget-object v1, v1, Lp3/a/p;->a:Lp3/a/o;

    if-ne v1, v0, :cond_3

    .line 30
    iget-object v0, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 31
    iget-object v0, v0, Lp3/a/n1/a1;->v:Lp3/a/n1/t1;

    .line 32
    iget-object v1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 33
    iput-object v3, v1, Lp3/a/n1/a1;->v:Lp3/a/n1/t1;

    .line 34
    iget-object v1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 35
    iget-object v1, v1, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 36
    invoke-virtual {v1}, Lp3/a/n1/a1$f;->b()V

    .line 37
    iget-object v1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    sget-object v2, Lp3/a/o;->d:Lp3/a/o;

    invoke-static {v1, v2}, Lp3/a/n1/a1;->h(Lp3/a/n1/a1;Lp3/a/o;)V

    goto :goto_1

    .line 38
    :cond_3
    iget-object v0, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 39
    iget-object v0, v0, Lp3/a/n1/a1;->u:Lp3/a/n1/x;

    .line 40
    sget-object v1, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v2, "InternalSubchannel closed pending transport due to address change"

    .line 41
    invoke-virtual {v1, v2}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v1

    .line 42
    invoke-interface {v0, v1}, Lp3/a/n1/t1;->g(Lp3/a/g1;)V

    .line 43
    iget-object v0, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 44
    iput-object v3, v0, Lp3/a/n1/a1;->u:Lp3/a/n1/x;

    .line 45
    iget-object v0, v0, Lp3/a/n1/a1;->l:Lp3/a/n1/a1$f;

    .line 46
    invoke-virtual {v0}, Lp3/a/n1/a1$f;->b()V

    .line 47
    iget-object v0, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    invoke-static {v0}, Lp3/a/n1/a1;->i(Lp3/a/n1/a1;)V

    :cond_4
    move-object v0, v3

    :goto_1
    if-eqz v0, :cond_6

    .line 48
    iget-object v1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 49
    iget-object v2, v1, Lp3/a/n1/a1;->q:Lp3/a/k1$c;

    if-eqz v2, :cond_5

    .line 50
    iget-object v1, v1, Lp3/a/n1/a1;->r:Lp3/a/n1/t1;

    .line 51
    sget-object v2, Lp3/a/g1;->p:Lp3/a/g1;

    const-string v4, "InternalSubchannel closed transport early due to address change"

    .line 52
    invoke-virtual {v2, v4}, Lp3/a/g1;->i(Ljava/lang/String;)Lp3/a/g1;

    move-result-object v2

    .line 53
    invoke-interface {v1, v2}, Lp3/a/n1/t1;->g(Lp3/a/g1;)V

    .line 54
    iget-object v1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 55
    iget-object v1, v1, Lp3/a/n1/a1;->q:Lp3/a/k1$c;

    .line 56
    invoke-virtual {v1}, Lp3/a/k1$c;->a()V

    .line 57
    iget-object v1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 58
    iput-object v3, v1, Lp3/a/n1/a1;->q:Lp3/a/k1$c;

    .line 59
    iput-object v3, v1, Lp3/a/n1/a1;->r:Lp3/a/n1/t1;

    .line 60
    :cond_5
    iget-object v1, p0, Lp3/a/n1/d1;->b:Lp3/a/n1/a1;

    .line 61
    iput-object v0, v1, Lp3/a/n1/a1;->r:Lp3/a/n1/t1;

    .line 62
    iget-object v2, v1, Lp3/a/n1/a1;->k:Lp3/a/k1;

    .line 63
    new-instance v3, Lp3/a/n1/d1$a;

    invoke-direct {v3, p0}, Lp3/a/n1/d1$a;-><init>(Lp3/a/n1/d1;)V

    const-wide/16 v4, 0x5

    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 64
    iget-object v7, v1, Lp3/a/n1/a1;->g:Ljava/util/concurrent/ScheduledExecutorService;

    .line 65
    invoke-virtual/range {v2 .. v7}, Lp3/a/k1;->c(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lp3/a/k1$c;

    move-result-object v0

    .line 66
    iput-object v0, v1, Lp3/a/n1/a1;->q:Lp3/a/k1$c;

    :cond_6
    return-void
.end method
