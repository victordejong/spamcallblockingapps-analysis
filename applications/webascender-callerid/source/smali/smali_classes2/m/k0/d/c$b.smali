.class public final Lm/k0/d/c$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/k0/d/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field private a:Ljava/util/Date;

.field private b:Ljava/lang/String;

.field private c:Ljava/util/Date;

.field private d:Ljava/lang/String;

.field private e:Ljava/util/Date;

.field private f:J

.field private g:J

.field private h:Ljava/lang/String;

.field private i:I

.field private final j:J

.field private final k:Lm/e0;

.field private final l:Lm/g0;


# direct methods
.method public constructor <init>(JLm/e0;Lm/g0;)V
    .locals 4

    const-string v0, "request"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lm/k0/d/c$b;->j:J

    iput-object p3, p0, Lm/k0/d/c$b;->k:Lm/e0;

    iput-object p4, p0, Lm/k0/d/c$b;->l:Lm/g0;

    const/4 p1, -0x1

    .line 2
    iput p1, p0, Lm/k0/d/c$b;->i:I

    if-eqz p4, :cond_5

    .line 3
    invoke-virtual {p4}, Lm/g0;->N()J

    move-result-wide p2

    iput-wide p2, p0, Lm/k0/d/c$b;->f:J

    .line 4
    invoke-virtual {p4}, Lm/g0;->L()J

    move-result-wide p2

    iput-wide p2, p0, Lm/k0/d/c$b;->g:J

    .line 5
    invoke-virtual {p4}, Lm/g0;->r()Lm/x;

    move-result-object p2

    const/4 p3, 0x0

    .line 6
    invoke-virtual {p2}, Lm/x;->size()I

    move-result p4

    :goto_0
    if-ge p3, p4, :cond_5

    .line 7
    invoke-virtual {p2, p3}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {p2, p3}, Lm/x;->j(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Date"

    const/4 v3, 0x1

    .line 9
    invoke-static {v0, v2, v3}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 10
    invoke-static {v1}, Lm/k0/f/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lm/k0/d/c$b;->a:Ljava/util/Date;

    .line 11
    iput-object v1, p0, Lm/k0/d/c$b;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "Expires"

    .line 12
    invoke-static {v0, v2, v3}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 13
    invoke-static {v1}, Lm/k0/f/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lm/k0/d/c$b;->e:Ljava/util/Date;

    goto :goto_1

    :cond_1
    const-string v2, "Last-Modified"

    .line 14
    invoke-static {v0, v2, v3}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 15
    invoke-static {v1}, Lm/k0/f/c;->a(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lm/k0/d/c$b;->c:Ljava/util/Date;

    .line 16
    iput-object v1, p0, Lm/k0/d/c$b;->d:Ljava/lang/String;

    goto :goto_1

    :cond_2
    const-string v2, "ETag"

    .line 17
    invoke-static {v0, v2, v3}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 18
    iput-object v1, p0, Lm/k0/d/c$b;->h:Ljava/lang/String;

    goto :goto_1

    :cond_3
    const-string v2, "Age"

    .line 19
    invoke-static {v0, v2, v3}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 20
    invoke-static {v1, p1}, Lm/k0/b;->S(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lm/k0/d/c$b;->i:I

    :cond_4
    :goto_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_5
    return-void
.end method

.method private final a()J
    .locals 9

    .line 1
    iget-object v0, p0, Lm/k0/d/c$b;->a:Ljava/util/Date;

    const-wide/16 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    iget-wide v3, p0, Lm/k0/d/c$b;->g:J

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v3, v5

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 3
    :cond_0
    iget v0, p0, Lm/k0/d/c$b;->i:I

    const/4 v3, -0x1

    if-eq v0, v3, :cond_1

    .line 4
    sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    int-to-long v4, v0

    invoke-virtual {v3, v4, v5}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v3

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v1

    .line 5
    :cond_1
    iget-wide v3, p0, Lm/k0/d/c$b;->g:J

    iget-wide v5, p0, Lm/k0/d/c$b;->f:J

    sub-long v5, v3, v5

    .line 6
    iget-wide v7, p0, Lm/k0/d/c$b;->j:J

    sub-long/2addr v7, v3

    add-long/2addr v1, v5

    add-long/2addr v1, v7

    return-wide v1
.end method

.method private final c()Lm/k0/d/c;
    .locals 13

    .line 1
    iget-object v0, p0, Lm/k0/d/c$b;->l:Lm/g0;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lm/k0/d/c;

    iget-object v2, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-direct {v0, v2, v1}, Lm/k0/d/c;-><init>(Lm/e0;Lm/g0;)V

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-virtual {v0}, Lm/e0;->g()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lm/k0/d/c$b;->l:Lm/g0;

    invoke-virtual {v0}, Lm/g0;->i()Lm/w;

    move-result-object v0

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lm/k0/d/c;

    iget-object v2, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-direct {v0, v2, v1}, Lm/k0/d/c;-><init>(Lm/e0;Lm/g0;)V

    return-object v0

    .line 5
    :cond_1
    sget-object v0, Lm/k0/d/c;->c:Lm/k0/d/c$a;

    iget-object v2, p0, Lm/k0/d/c$b;->l:Lm/g0;

    iget-object v3, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-virtual {v0, v2, v3}, Lm/k0/d/c$a;->a(Lm/g0;Lm/e0;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 6
    new-instance v0, Lm/k0/d/c;

    iget-object v2, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-direct {v0, v2, v1}, Lm/k0/d/c;-><init>(Lm/e0;Lm/g0;)V

    return-object v0

    .line 7
    :cond_2
    iget-object v0, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-virtual {v0}, Lm/e0;->b()Lm/e;

    move-result-object v0

    .line 8
    invoke-virtual {v0}, Lm/e;->g()Z

    move-result v2

    if-nez v2, :cond_e

    iget-object v2, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-direct {p0, v2}, Lm/k0/d/c$b;->e(Lm/e0;)Z

    move-result v2

    if-eqz v2, :cond_3

    goto/16 :goto_2

    .line 9
    :cond_3
    iget-object v2, p0, Lm/k0/d/c$b;->l:Lm/g0;

    invoke-virtual {v2}, Lm/g0;->b()Lm/e;

    move-result-object v2

    .line 10
    invoke-direct {p0}, Lm/k0/d/c$b;->a()J

    move-result-wide v3

    .line 11
    invoke-direct {p0}, Lm/k0/d/c$b;->d()J

    move-result-wide v5

    .line 12
    invoke-virtual {v0}, Lm/e;->c()I

    move-result v7

    const/4 v8, -0x1

    if-eq v7, v8, :cond_4

    .line 13
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lm/e;->c()I

    move-result v9

    int-to-long v9, v9

    invoke-virtual {v7, v9, v10}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    invoke-static {v5, v6, v9, v10}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v5

    .line 14
    :cond_4
    invoke-virtual {v0}, Lm/e;->e()I

    move-result v7

    const-wide/16 v9, 0x0

    if-eq v7, v8, :cond_5

    .line 15
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lm/e;->e()I

    move-result v11

    int-to-long v11, v11

    invoke-virtual {v7, v11, v12}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v11

    goto :goto_0

    :cond_5
    move-wide v11, v9

    .line 16
    :goto_0
    invoke-virtual {v2}, Lm/e;->f()Z

    move-result v7

    if-nez v7, :cond_6

    invoke-virtual {v0}, Lm/e;->d()I

    move-result v7

    if-eq v7, v8, :cond_6

    .line 17
    sget-object v7, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lm/e;->d()I

    move-result v0

    int-to-long v8, v0

    invoke-virtual {v7, v8, v9}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v9

    .line 18
    :cond_6
    invoke-virtual {v2}, Lm/e;->g()Z

    move-result v0

    if-nez v0, :cond_9

    add-long/2addr v11, v3

    add-long/2addr v9, v5

    cmp-long v0, v11, v9

    if-gez v0, :cond_9

    .line 19
    iget-object v0, p0, Lm/k0/d/c$b;->l:Lm/g0;

    invoke-virtual {v0}, Lm/g0;->C()Lm/g0$a;

    move-result-object v0

    const-string v2, "Warning"

    cmp-long v7, v11, v5

    if-ltz v7, :cond_7

    const-string v5, "110 HttpURLConnection \"Response is stale\""

    .line 20
    invoke-virtual {v0, v2, v5}, Lm/g0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/g0$a;

    :cond_7
    const-wide/32 v5, 0x5265c00

    cmp-long v7, v3, v5

    if-lez v7, :cond_8

    .line 21
    invoke-direct {p0}, Lm/k0/d/c$b;->f()Z

    move-result v3

    if-eqz v3, :cond_8

    const-string v3, "113 HttpURLConnection \"Heuristic expiration\""

    .line 22
    invoke-virtual {v0, v2, v3}, Lm/g0$a;->a(Ljava/lang/String;Ljava/lang/String;)Lm/g0$a;

    .line 23
    :cond_8
    new-instance v2, Lm/k0/d/c;

    invoke-virtual {v0}, Lm/g0$a;->c()Lm/g0;

    move-result-object v0

    invoke-direct {v2, v1, v0}, Lm/k0/d/c;-><init>(Lm/e0;Lm/g0;)V

    return-object v2

    .line 24
    :cond_9
    iget-object v0, p0, Lm/k0/d/c$b;->h:Ljava/lang/String;

    const-string v2, "If-Modified-Since"

    if-eqz v0, :cond_a

    const-string v2, "If-None-Match"

    goto :goto_1

    .line 25
    :cond_a
    iget-object v0, p0, Lm/k0/d/c$b;->c:Ljava/util/Date;

    if-eqz v0, :cond_b

    .line 26
    iget-object v0, p0, Lm/k0/d/c$b;->d:Ljava/lang/String;

    goto :goto_1

    .line 27
    :cond_b
    iget-object v0, p0, Lm/k0/d/c$b;->a:Ljava/util/Date;

    if-eqz v0, :cond_d

    .line 28
    iget-object v0, p0, Lm/k0/d/c$b;->b:Ljava/lang/String;

    .line 29
    :goto_1
    iget-object v3, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-virtual {v3}, Lm/e0;->f()Lm/x;

    move-result-object v3

    invoke-virtual {v3}, Lm/x;->h()Lm/x$a;

    move-result-object v3

    if-eqz v0, :cond_c

    .line 30
    invoke-virtual {v3, v2, v0}, Lm/x$a;->d(Ljava/lang/String;Ljava/lang/String;)Lm/x$a;

    .line 31
    iget-object v0, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-virtual {v0}, Lm/e0;->i()Lm/e0$a;

    move-result-object v0

    .line 32
    invoke-virtual {v3}, Lm/x$a;->e()Lm/x;

    move-result-object v1

    invoke-virtual {v0, v1}, Lm/e0$a;->f(Lm/x;)Lm/e0$a;

    .line 33
    invoke-virtual {v0}, Lm/e0$a;->b()Lm/e0;

    move-result-object v0

    .line 34
    new-instance v1, Lm/k0/d/c;

    iget-object v2, p0, Lm/k0/d/c$b;->l:Lm/g0;

    invoke-direct {v1, v0, v2}, Lm/k0/d/c;-><init>(Lm/e0;Lm/g0;)V

    return-object v1

    .line 35
    :cond_c
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    .line 36
    :cond_d
    new-instance v0, Lm/k0/d/c;

    iget-object v2, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-direct {v0, v2, v1}, Lm/k0/d/c;-><init>(Lm/e0;Lm/g0;)V

    return-object v0

    .line 37
    :cond_e
    :goto_2
    new-instance v0, Lm/k0/d/c;

    iget-object v2, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-direct {v0, v2, v1}, Lm/k0/d/c;-><init>(Lm/e0;Lm/g0;)V

    return-object v0
.end method

.method private final d()J
    .locals 6

    .line 1
    iget-object v0, p0, Lm/k0/d/c$b;->l:Lm/g0;

    const/4 v1, 0x0

    if-eqz v0, :cond_8

    invoke-virtual {v0}, Lm/g0;->b()Lm/e;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm/e;->c()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_0

    .line 3
    sget-object v1, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0}, Lm/e;->c()I

    move-result v0

    int-to-long v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    return-wide v0

    .line 4
    :cond_0
    iget-object v0, p0, Lm/k0/d/c$b;->e:Ljava/util/Date;

    const-wide/16 v2, 0x0

    if-eqz v0, :cond_3

    .line 5
    iget-object v1, p0, Lm/k0/d/c$b;->a:Ljava/util/Date;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_0

    :cond_1
    iget-wide v4, p0, Lm/k0/d/c$b;->g:J

    .line 6
    :goto_0
    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v0, v4

    cmp-long v4, v0, v2

    if-lez v4, :cond_2

    move-wide v2, v0

    :cond_2
    return-wide v2

    .line 7
    :cond_3
    iget-object v0, p0, Lm/k0/d/c$b;->c:Ljava/util/Date;

    if-eqz v0, :cond_7

    iget-object v0, p0, Lm/k0/d/c$b;->l:Lm/g0;

    invoke-virtual {v0}, Lm/g0;->M()Lm/e0;

    move-result-object v0

    invoke-virtual {v0}, Lm/e0;->l()Lm/y;

    move-result-object v0

    invoke-virtual {v0}, Lm/y;->p()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_7

    .line 8
    iget-object v0, p0, Lm/k0/d/c$b;->a:Ljava/util/Date;

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v4

    goto :goto_1

    :cond_4
    iget-wide v4, p0, Lm/k0/d/c$b;->f:J

    .line 9
    :goto_1
    iget-object v0, p0, Lm/k0/d/c$b;->c:Ljava/util/Date;

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    sub-long/2addr v4, v0

    cmp-long v0, v4, v2

    if-lez v0, :cond_5

    const/16 v0, 0xa

    int-to-long v0, v0

    .line 10
    div-long v2, v4, v0

    :cond_5
    return-wide v2

    .line 11
    :cond_6
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1

    :cond_7
    return-wide v2

    .line 12
    :cond_8
    invoke-static {}, Lkotlin/w/c/k;->o()V

    throw v1
.end method

.method private final e(Lm/e0;)Z
    .locals 1

    const-string v0, "If-Modified-Since"

    .line 1
    invoke-virtual {p1, v0}, Lm/e0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    const-string v0, "If-None-Match"

    invoke-virtual {p1, v0}, Lm/e0;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method

.method private final f()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lm/k0/d/c$b;->l:Lm/g0;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Lm/g0;->b()Lm/e;

    move-result-object v0

    invoke-virtual {v0}, Lm/e;->c()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Lm/k0/d/c$b;->e:Ljava/util/Date;

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 v0, 0x0

    throw v0
.end method


# virtual methods
.method public final b()Lm/k0/d/c;
    .locals 2

    .line 1
    invoke-direct {p0}, Lm/k0/d/c$b;->c()Lm/k0/d/c;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Lm/k0/d/c;->b()Lm/e0;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lm/k0/d/c$b;->k:Lm/e0;

    invoke-virtual {v1}, Lm/e0;->b()Lm/e;

    move-result-object v1

    invoke-virtual {v1}, Lm/e;->i()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    new-instance v0, Lm/k0/d/c;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1}, Lm/k0/d/c;-><init>(Lm/e0;Lm/g0;)V

    :cond_0
    return-object v0
.end method
