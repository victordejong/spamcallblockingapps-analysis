.class public final Ln3/m0/c0/s/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/m0/c0/s/p$c;,
        Ln3/m0/c0/s/p$b;
    }
.end annotation


# static fields
.field public static final s:Ljava/lang/String;

.field public static final t:Ln3/c/a/c/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/c/a/c/a<",
            "Ljava/util/List<",
            "Ln3/m0/c0/s/p$c;",
            ">;",
            "Ljava/util/List<",
            "Ln3/m0/x;",
            ">;>;"
        }
    .end annotation
.end field


# instance fields
.field public a:Ljava/lang/String;

.field public b:Ln3/m0/x$a;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Ln3/m0/f;

.field public f:Ln3/m0/f;

.field public g:J

.field public h:J

.field public i:J

.field public j:Ln3/m0/d;

.field public k:I

.field public l:Ln3/m0/a;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Z

.field public r:Ln3/m0/t;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkSpec"

    .line 1
    invoke-static {v0}, Ln3/m0/p;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Ln3/m0/c0/s/p;->s:Ljava/lang/String;

    .line 2
    new-instance v0, Ln3/m0/c0/s/p$a;

    invoke-direct {v0}, Ln3/m0/c0/s/p$a;-><init>()V

    sput-object v0, Ln3/m0/c0/s/p;->t:Ln3/c/a/c/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    iput-object v0, p0, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    .line 3
    sget-object v0, Ln3/m0/f;->c:Ln3/m0/f;

    iput-object v0, p0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 4
    iput-object v0, p0, Ln3/m0/c0/s/p;->f:Ln3/m0/f;

    .line 5
    sget-object v0, Ln3/m0/d;->i:Ln3/m0/d;

    iput-object v0, p0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 6
    sget-object v0, Ln3/m0/a;->a:Ln3/m0/a;

    iput-object v0, p0, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    const-wide/16 v0, 0x7530

    .line 7
    iput-wide v0, p0, Ln3/m0/c0/s/p;->m:J

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Ln3/m0/c0/s/p;->p:J

    .line 9
    sget-object v0, Ln3/m0/t;->a:Ln3/m0/t;

    iput-object v0, p0, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    .line 10
    iput-object p1, p0, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    .line 11
    iput-object p2, p0, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ln3/m0/c0/s/p;)V
    .locals 2

    .line 12
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 13
    sget-object v0, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    iput-object v0, p0, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    .line 14
    sget-object v0, Ln3/m0/f;->c:Ln3/m0/f;

    iput-object v0, p0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 15
    iput-object v0, p0, Ln3/m0/c0/s/p;->f:Ln3/m0/f;

    .line 16
    sget-object v0, Ln3/m0/d;->i:Ln3/m0/d;

    iput-object v0, p0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 17
    sget-object v0, Ln3/m0/a;->a:Ln3/m0/a;

    iput-object v0, p0, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    const-wide/16 v0, 0x7530

    .line 18
    iput-wide v0, p0, Ln3/m0/c0/s/p;->m:J

    const-wide/16 v0, -0x1

    .line 19
    iput-wide v0, p0, Ln3/m0/c0/s/p;->p:J

    .line 20
    sget-object v0, Ln3/m0/t;->a:Ln3/m0/t;

    iput-object v0, p0, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    .line 21
    iget-object v0, p1, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    iput-object v0, p0, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    .line 22
    iget-object v0, p1, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    iput-object v0, p0, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    .line 23
    iget-object v0, p1, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    iput-object v0, p0, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    .line 24
    iget-object v0, p1, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    iput-object v0, p0, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    .line 25
    new-instance v0, Ln3/m0/f;

    iget-object v1, p1, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    invoke-direct {v0, v1}, Ln3/m0/f;-><init>(Ln3/m0/f;)V

    iput-object v0, p0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    .line 26
    new-instance v0, Ln3/m0/f;

    iget-object v1, p1, Ln3/m0/c0/s/p;->f:Ln3/m0/f;

    invoke-direct {v0, v1}, Ln3/m0/f;-><init>(Ln3/m0/f;)V

    iput-object v0, p0, Ln3/m0/c0/s/p;->f:Ln3/m0/f;

    .line 27
    iget-wide v0, p1, Ln3/m0/c0/s/p;->g:J

    iput-wide v0, p0, Ln3/m0/c0/s/p;->g:J

    .line 28
    iget-wide v0, p1, Ln3/m0/c0/s/p;->h:J

    iput-wide v0, p0, Ln3/m0/c0/s/p;->h:J

    .line 29
    iget-wide v0, p1, Ln3/m0/c0/s/p;->i:J

    iput-wide v0, p0, Ln3/m0/c0/s/p;->i:J

    .line 30
    new-instance v0, Ln3/m0/d;

    iget-object v1, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    invoke-direct {v0, v1}, Ln3/m0/d;-><init>(Ln3/m0/d;)V

    iput-object v0, p0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    .line 31
    iget v0, p1, Ln3/m0/c0/s/p;->k:I

    iput v0, p0, Ln3/m0/c0/s/p;->k:I

    .line 32
    iget-object v0, p1, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    iput-object v0, p0, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    .line 33
    iget-wide v0, p1, Ln3/m0/c0/s/p;->m:J

    iput-wide v0, p0, Ln3/m0/c0/s/p;->m:J

    .line 34
    iget-wide v0, p1, Ln3/m0/c0/s/p;->n:J

    iput-wide v0, p0, Ln3/m0/c0/s/p;->n:J

    .line 35
    iget-wide v0, p1, Ln3/m0/c0/s/p;->o:J

    iput-wide v0, p0, Ln3/m0/c0/s/p;->o:J

    .line 36
    iget-wide v0, p1, Ln3/m0/c0/s/p;->p:J

    iput-wide v0, p0, Ln3/m0/c0/s/p;->p:J

    .line 37
    iget-boolean v0, p1, Ln3/m0/c0/s/p;->q:Z

    iput-boolean v0, p0, Ln3/m0/c0/s/p;->q:Z

    .line 38
    iget-object p1, p1, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    iput-object p1, p0, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 12

    .line 1
    iget-object v0, p0, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    sget-object v1, Ln3/m0/x$a;->a:Ln3/m0/x$a;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-ne v0, v1, :cond_0

    iget v0, p0, Ln3/m0/c0/s/p;->k:I

    if-lez v0, :cond_0

    move v0, v3

    goto :goto_0

    :cond_0
    move v0, v2

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    sget-object v1, Ln3/m0/a;->b:Ln3/m0/a;

    if-ne v0, v1, :cond_1

    move v2, v3

    :cond_1
    if-eqz v2, :cond_2

    .line 3
    iget-wide v0, p0, Ln3/m0/c0/s/p;->m:J

    iget v2, p0, Ln3/m0/c0/s/p;->k:I

    int-to-long v2, v2

    mul-long/2addr v0, v2

    goto :goto_1

    .line 4
    :cond_2
    iget-wide v0, p0, Ln3/m0/c0/s/p;->m:J

    long-to-float v0, v0

    iget v1, p0, Ln3/m0/c0/s/p;->k:I

    sub-int/2addr v1, v3

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 5
    :goto_1
    iget-wide v2, p0, Ln3/m0/c0/s/p;->n:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    :goto_2
    add-long/2addr v0, v2

    return-wide v0

    .line 6
    :cond_3
    invoke-virtual {p0}, Ln3/m0/c0/s/p;->c()Z

    move-result v0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_9

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 8
    iget-wide v6, p0, Ln3/m0/c0/s/p;->n:J

    cmp-long v8, v6, v4

    if-nez v8, :cond_4

    iget-wide v6, p0, Ln3/m0/c0/s/p;->g:J

    add-long/2addr v6, v0

    .line 9
    :cond_4
    iget-wide v0, p0, Ln3/m0/c0/s/p;->i:J

    iget-wide v9, p0, Ln3/m0/c0/s/p;->h:J

    cmp-long v11, v0, v9

    if-eqz v11, :cond_5

    move v2, v3

    :cond_5
    if-eqz v2, :cond_7

    if-nez v8, :cond_6

    const-wide/16 v2, -0x1

    mul-long v4, v0, v2

    :cond_6
    add-long/2addr v6, v9

    add-long/2addr v6, v4

    return-wide v6

    :cond_7
    if-nez v8, :cond_8

    goto :goto_3

    :cond_8
    move-wide v4, v9

    :goto_3
    add-long/2addr v6, v4

    return-wide v6

    .line 10
    :cond_9
    iget-wide v0, p0, Ln3/m0/c0/s/p;->n:J

    cmp-long v2, v0, v4

    if-nez v2, :cond_a

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    :cond_a
    iget-wide v2, p0, Ln3/m0/c0/s/p;->g:J

    goto :goto_2
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Ln3/m0/d;->i:Ln3/m0/d;

    iget-object v1, p0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    invoke-virtual {v0, v1}, Ln3/m0/d;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 4

    .line 1
    iget-wide v0, p0, Ln3/m0/c0/s/p;->h:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d(JJ)V
    .locals 6

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-gez v2, :cond_0

    .line 1
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p1

    sget-object p2, Ln3/m0/c0/s/p;->s:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "Interval duration lesser than minimum allowed value; Changed to %s"

    .line 3
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v2, v5}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v0

    :cond_0
    const-wide/32 v0, 0x493e0

    cmp-long v2, p3, v0

    if-gez v2, :cond_1

    .line 4
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p3

    sget-object p4, Ln3/m0/c0/s/p;->s:Ljava/lang/String;

    new-array v2, v3, [Ljava/lang/Object;

    .line 5
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v2, v4

    const-string v5, "Flex duration lesser than minimum allowed value; Changed to %s"

    .line 6
    invoke-static {v5, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v5, v4, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {p3, p4, v2, v5}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p3, v0

    :cond_1
    cmp-long v0, p3, p1

    if-lez v0, :cond_2

    .line 8
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object p3

    sget-object p4, Ln3/m0/c0/s/p;->s:Ljava/lang/String;

    new-array v0, v3, [Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v4

    const-string v1, "Flex duration greater than interval duration; Changed to %s"

    .line 10
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v4, [Ljava/lang/Throwable;

    .line 11
    invoke-virtual {p3, p4, v0, v1}, Ln3/m0/p;->f(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p3, p1

    .line 12
    :cond_2
    iput-wide p1, p0, Ln3/m0/c0/s/p;->h:J

    .line 13
    iput-wide p3, p0, Ln3/m0/c0/s/p;->i:J

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_15

    .line 1
    const-class v2, Ln3/m0/c0/s/p;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto/16 :goto_2

    .line 2
    :cond_1
    check-cast p1, Ln3/m0/c0/s/p;

    .line 3
    iget-wide v2, p0, Ln3/m0/c0/s/p;->g:J

    iget-wide v4, p1, Ln3/m0/c0/s/p;->g:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_2

    return v1

    .line 4
    :cond_2
    iget-wide v2, p0, Ln3/m0/c0/s/p;->h:J

    iget-wide v4, p1, Ln3/m0/c0/s/p;->h:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_3

    return v1

    .line 5
    :cond_3
    iget-wide v2, p0, Ln3/m0/c0/s/p;->i:J

    iget-wide v4, p1, Ln3/m0/c0/s/p;->i:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_4

    return v1

    .line 6
    :cond_4
    iget v2, p0, Ln3/m0/c0/s/p;->k:I

    iget v3, p1, Ln3/m0/c0/s/p;->k:I

    if-eq v2, v3, :cond_5

    return v1

    .line 7
    :cond_5
    iget-wide v2, p0, Ln3/m0/c0/s/p;->m:J

    iget-wide v4, p1, Ln3/m0/c0/s/p;->m:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_6

    return v1

    .line 8
    :cond_6
    iget-wide v2, p0, Ln3/m0/c0/s/p;->n:J

    iget-wide v4, p1, Ln3/m0/c0/s/p;->n:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_7

    return v1

    .line 9
    :cond_7
    iget-wide v2, p0, Ln3/m0/c0/s/p;->o:J

    iget-wide v4, p1, Ln3/m0/c0/s/p;->o:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_8

    return v1

    .line 10
    :cond_8
    iget-wide v2, p0, Ln3/m0/c0/s/p;->p:J

    iget-wide v4, p1, Ln3/m0/c0/s/p;->p:J

    cmp-long v2, v2, v4

    if-eqz v2, :cond_9

    return v1

    .line 11
    :cond_9
    iget-boolean v2, p0, Ln3/m0/c0/s/p;->q:Z

    iget-boolean v3, p1, Ln3/m0/c0/s/p;->q:Z

    if-eq v2, v3, :cond_a

    return v1

    .line 12
    :cond_a
    iget-object v2, p0, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    iget-object v3, p1, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_b

    return v1

    .line 13
    :cond_b
    iget-object v2, p0, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    iget-object v3, p1, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    if-eq v2, v3, :cond_c

    return v1

    .line 14
    :cond_c
    iget-object v2, p0, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    iget-object v3, p1, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_d

    return v1

    .line 15
    :cond_d
    iget-object v2, p0, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    if-eqz v2, :cond_e

    iget-object v3, p1, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_f

    goto :goto_0

    :cond_e
    iget-object v2, p1, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    if-eqz v2, :cond_f

    :goto_0
    return v1

    .line 16
    :cond_f
    iget-object v2, p0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    iget-object v3, p1, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    invoke-virtual {v2, v3}, Ln3/m0/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_10

    return v1

    .line 17
    :cond_10
    iget-object v2, p0, Ln3/m0/c0/s/p;->f:Ln3/m0/f;

    iget-object v3, p1, Ln3/m0/c0/s/p;->f:Ln3/m0/f;

    invoke-virtual {v2, v3}, Ln3/m0/f;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_11

    return v1

    .line 18
    :cond_11
    iget-object v2, p0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    iget-object v3, p1, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    invoke-virtual {v2, v3}, Ln3/m0/d;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_12

    return v1

    .line 19
    :cond_12
    iget-object v2, p0, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    iget-object v3, p1, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    if-eq v2, v3, :cond_13

    return v1

    .line 20
    :cond_13
    iget-object v2, p0, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    iget-object p1, p1, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    if-ne v2, p1, :cond_14

    goto :goto_1

    :cond_14
    move v0, v1

    :goto_1
    return v0

    :cond_15
    :goto_2
    return v1
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Ln3/m0/c0/s/p;->b:Ln3/m0/x$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 3
    iget-object v0, p0, Ln3/m0/c0/s/p;->c:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 4
    iget-object v1, p0, Ln3/m0/c0/s/p;->d:Ljava/lang/String;

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 5
    iget-object v1, p0, Ln3/m0/c0/s/p;->e:Ln3/m0/f;

    invoke-virtual {v1}, Ln3/m0/f;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 6
    iget-object v0, p0, Ln3/m0/c0/s/p;->f:Ln3/m0/f;

    invoke-virtual {v0}, Ln3/m0/f;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Ln3/m0/c0/s/p;->g:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Ln3/m0/c0/s/p;->h:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Ln3/m0/c0/s/p;->i:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Ln3/m0/c0/s/p;->j:Ln3/m0/d;

    invoke-virtual {v1}, Ln3/m0/d;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 11
    iget v0, p0, Ln3/m0/c0/s/p;->k:I

    add-int/2addr v1, v0

    mul-int/lit8 v1, v1, 0x1f

    .line 12
    iget-object v0, p0, Ln3/m0/c0/s/p;->l:Ln3/m0/a;

    invoke-virtual {v0}, Ljava/lang/Enum;->hashCode()I

    move-result v0

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-wide v1, p0, Ln3/m0/c0/s/p;->m:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v1, p0, Ln3/m0/c0/s/p;->n:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-wide v1, p0, Ln3/m0/c0/s/p;->o:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-wide v1, p0, Ln3/m0/c0/s/p;->p:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v1, v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-boolean v1, p0, Ln3/m0/c0/s/p;->q:Z

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 18
    iget-object v1, p0, Ln3/m0/c0/s/p;->r:Ln3/m0/t;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "{WorkSpec: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    const-string v2, "}"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
