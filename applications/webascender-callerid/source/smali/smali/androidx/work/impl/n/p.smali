.class public final Landroidx/work/impl/n/p;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroidx/work/impl/n/p$a;
    }
.end annotation


# static fields
.field private static final r:Ljava/lang/String;


# instance fields
.field public a:Ljava/lang/String;

.field public b:Landroidx/work/v;

.field public c:Ljava/lang/String;

.field public d:Ljava/lang/String;

.field public e:Landroidx/work/e;

.field public f:Landroidx/work/e;

.field public g:J

.field public h:J

.field public i:J

.field public j:Landroidx/work/c;

.field public k:I

.field public l:Landroidx/work/a;

.field public m:J

.field public n:J

.field public o:J

.field public p:J

.field public q:Z


# direct methods
.method static constructor <clinit>()V
    .locals 1

    const-string v0, "WorkSpec"

    .line 1
    invoke-static {v0}, Landroidx/work/m;->f(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroidx/work/impl/n/p;->r:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroidx/work/impl/n/p;)V
    .locals 2

    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 12
    sget-object v0, Landroidx/work/v;->ENQUEUED:Landroidx/work/v;

    iput-object v0, p0, Landroidx/work/impl/n/p;->b:Landroidx/work/v;

    .line 13
    sget-object v0, Landroidx/work/e;->c:Landroidx/work/e;

    iput-object v0, p0, Landroidx/work/impl/n/p;->e:Landroidx/work/e;

    .line 14
    iput-object v0, p0, Landroidx/work/impl/n/p;->f:Landroidx/work/e;

    .line 15
    sget-object v0, Landroidx/work/c;->i:Landroidx/work/c;

    iput-object v0, p0, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    .line 16
    sget-object v0, Landroidx/work/a;->EXPONENTIAL:Landroidx/work/a;

    iput-object v0, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/a;

    const-wide/16 v0, 0x7530

    .line 17
    iput-wide v0, p0, Landroidx/work/impl/n/p;->m:J

    const-wide/16 v0, -0x1

    .line 18
    iput-wide v0, p0, Landroidx/work/impl/n/p;->p:J

    .line 19
    iget-object v0, p1, Landroidx/work/impl/n/p;->a:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/n/p;->a:Ljava/lang/String;

    .line 20
    iget-object v0, p1, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    .line 21
    iget-object v0, p1, Landroidx/work/impl/n/p;->b:Landroidx/work/v;

    iput-object v0, p0, Landroidx/work/impl/n/p;->b:Landroidx/work/v;

    .line 22
    iget-object v0, p1, Landroidx/work/impl/n/p;->d:Ljava/lang/String;

    iput-object v0, p0, Landroidx/work/impl/n/p;->d:Ljava/lang/String;

    .line 23
    new-instance v0, Landroidx/work/e;

    iget-object v1, p1, Landroidx/work/impl/n/p;->e:Landroidx/work/e;

    invoke-direct {v0, v1}, Landroidx/work/e;-><init>(Landroidx/work/e;)V

    iput-object v0, p0, Landroidx/work/impl/n/p;->e:Landroidx/work/e;

    .line 24
    new-instance v0, Landroidx/work/e;

    iget-object v1, p1, Landroidx/work/impl/n/p;->f:Landroidx/work/e;

    invoke-direct {v0, v1}, Landroidx/work/e;-><init>(Landroidx/work/e;)V

    iput-object v0, p0, Landroidx/work/impl/n/p;->f:Landroidx/work/e;

    .line 25
    iget-wide v0, p1, Landroidx/work/impl/n/p;->g:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->g:J

    .line 26
    iget-wide v0, p1, Landroidx/work/impl/n/p;->h:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->h:J

    .line 27
    iget-wide v0, p1, Landroidx/work/impl/n/p;->i:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->i:J

    .line 28
    new-instance v0, Landroidx/work/c;

    iget-object v1, p1, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    invoke-direct {v0, v1}, Landroidx/work/c;-><init>(Landroidx/work/c;)V

    iput-object v0, p0, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    .line 29
    iget v0, p1, Landroidx/work/impl/n/p;->k:I

    iput v0, p0, Landroidx/work/impl/n/p;->k:I

    .line 30
    iget-object v0, p1, Landroidx/work/impl/n/p;->l:Landroidx/work/a;

    iput-object v0, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/a;

    .line 31
    iget-wide v0, p1, Landroidx/work/impl/n/p;->m:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->m:J

    .line 32
    iget-wide v0, p1, Landroidx/work/impl/n/p;->n:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->n:J

    .line 33
    iget-wide v0, p1, Landroidx/work/impl/n/p;->o:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->o:J

    .line 34
    iget-wide v0, p1, Landroidx/work/impl/n/p;->p:J

    iput-wide v0, p0, Landroidx/work/impl/n/p;->p:J

    .line 35
    iget-boolean p1, p1, Landroidx/work/impl/n/p;->q:Z

    iput-boolean p1, p0, Landroidx/work/impl/n/p;->q:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Landroidx/work/v;->ENQUEUED:Landroidx/work/v;

    iput-object v0, p0, Landroidx/work/impl/n/p;->b:Landroidx/work/v;

    .line 3
    sget-object v0, Landroidx/work/e;->c:Landroidx/work/e;

    iput-object v0, p0, Landroidx/work/impl/n/p;->e:Landroidx/work/e;

    .line 4
    iput-object v0, p0, Landroidx/work/impl/n/p;->f:Landroidx/work/e;

    .line 5
    sget-object v0, Landroidx/work/c;->i:Landroidx/work/c;

    iput-object v0, p0, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    .line 6
    sget-object v0, Landroidx/work/a;->EXPONENTIAL:Landroidx/work/a;

    iput-object v0, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/a;

    const-wide/16 v0, 0x7530

    .line 7
    iput-wide v0, p0, Landroidx/work/impl/n/p;->m:J

    const-wide/16 v0, -0x1

    .line 8
    iput-wide v0, p0, Landroidx/work/impl/n/p;->p:J

    .line 9
    iput-object p1, p0, Landroidx/work/impl/n/p;->a:Ljava/lang/String;

    .line 10
    iput-object p2, p0, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 13

    .line 1
    invoke-virtual {p0}, Landroidx/work/impl/n/p;->c()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    iget-object v0, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/a;

    sget-object v3, Landroidx/work/a;->LINEAR:Landroidx/work/a;

    if-ne v0, v3, :cond_0

    const/4 v1, 0x1

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    iget-wide v0, p0, Landroidx/work/impl/n/p;->m:J

    iget v2, p0, Landroidx/work/impl/n/p;->k:I

    int-to-long v2, v2

    mul-long v0, v0, v2

    goto :goto_0

    .line 4
    :cond_1
    iget-wide v0, p0, Landroidx/work/impl/n/p;->m:J

    long-to-float v0, v0

    iget v1, p0, Landroidx/work/impl/n/p;->k:I

    sub-int/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->scalb(FI)F

    move-result v0

    float-to-long v0, v0

    .line 5
    :goto_0
    iget-wide v2, p0, Landroidx/work/impl/n/p;->n:J

    const-wide/32 v4, 0x112a880

    invoke-static {v4, v5, v0, v1}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v0

    add-long/2addr v2, v0

    return-wide v2

    .line 6
    :cond_2
    invoke-virtual {p0}, Landroidx/work/impl/n/p;->d()Z

    move-result v0

    const-wide/16 v3, 0x0

    if-eqz v0, :cond_8

    .line 7
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    .line 8
    iget-wide v7, p0, Landroidx/work/impl/n/p;->n:J

    cmp-long v0, v7, v3

    if-nez v0, :cond_3

    iget-wide v9, p0, Landroidx/work/impl/n/p;->g:J

    add-long/2addr v5, v9

    goto :goto_1

    :cond_3
    move-wide v5, v7

    .line 9
    :goto_1
    iget-wide v9, p0, Landroidx/work/impl/n/p;->i:J

    iget-wide v11, p0, Landroidx/work/impl/n/p;->h:J

    cmp-long v0, v9, v11

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    :cond_4
    if-eqz v1, :cond_6

    cmp-long v0, v7, v3

    if-nez v0, :cond_5

    const-wide/16 v0, -0x1

    mul-long v3, v9, v0

    :cond_5
    add-long/2addr v5, v11

    add-long/2addr v5, v3

    return-wide v5

    :cond_6
    cmp-long v0, v7, v3

    if-nez v0, :cond_7

    goto :goto_2

    :cond_7
    move-wide v3, v11

    :goto_2
    add-long/2addr v5, v3

    return-wide v5

    .line 10
    :cond_8
    iget-wide v0, p0, Landroidx/work/impl/n/p;->n:J

    cmp-long v2, v0, v3

    if-nez v2, :cond_9

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 11
    :cond_9
    iget-wide v2, p0, Landroidx/work/impl/n/p;->g:J

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public b()Z
    .locals 2

    .line 1
    sget-object v0, Landroidx/work/c;->i:Landroidx/work/c;

    iget-object v1, p0, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    invoke-virtual {v0, v1}, Landroidx/work/c;->equals(Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public c()Z
    .locals 2

    .line 1
    iget-object v0, p0, Landroidx/work/impl/n/p;->b:Landroidx/work/v;

    sget-object v1, Landroidx/work/v;->ENQUEUED:Landroidx/work/v;

    if-ne v0, v1, :cond_0

    iget v0, p0, Landroidx/work/impl/n/p;->k:I

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public d()Z
    .locals 5

    .line 1
    iget-wide v0, p0, Landroidx/work/impl/n/p;->h:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(J)V
    .locals 5

    const-wide/32 v0, 0xdbba0

    cmp-long v2, p1, v0

    if-gez v2, :cond_0

    .line 1
    invoke-static {}, Landroidx/work/m;->c()Landroidx/work/m;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/n/p;->r:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    .line 2
    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v2, v4

    const-string v3, "Interval duration lesser than minimum allowed value; Changed to %s"

    .line 3
    invoke-static {v3, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-array v3, v4, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v2, v3}, Landroidx/work/m;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v0

    .line 4
    :cond_0
    invoke-virtual {p0, p1, p2, p1, p2}, Landroidx/work/impl/n/p;->f(JJ)V

    return-void
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Landroidx/work/impl/n/p;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 2
    :cond_1
    check-cast p1, Landroidx/work/impl/n/p;

    .line 3
    iget-wide v3, p0, Landroidx/work/impl/n/p;->g:J

    iget-wide v5, p1, Landroidx/work/impl/n/p;->g:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_2

    return v2

    .line 4
    :cond_2
    iget-wide v3, p0, Landroidx/work/impl/n/p;->h:J

    iget-wide v5, p1, Landroidx/work/impl/n/p;->h:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_3

    return v2

    .line 5
    :cond_3
    iget-wide v3, p0, Landroidx/work/impl/n/p;->i:J

    iget-wide v5, p1, Landroidx/work/impl/n/p;->i:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_4

    return v2

    .line 6
    :cond_4
    iget v1, p0, Landroidx/work/impl/n/p;->k:I

    iget v3, p1, Landroidx/work/impl/n/p;->k:I

    if-eq v1, v3, :cond_5

    return v2

    .line 7
    :cond_5
    iget-wide v3, p0, Landroidx/work/impl/n/p;->m:J

    iget-wide v5, p1, Landroidx/work/impl/n/p;->m:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_6

    return v2

    .line 8
    :cond_6
    iget-wide v3, p0, Landroidx/work/impl/n/p;->n:J

    iget-wide v5, p1, Landroidx/work/impl/n/p;->n:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_7

    return v2

    .line 9
    :cond_7
    iget-wide v3, p0, Landroidx/work/impl/n/p;->o:J

    iget-wide v5, p1, Landroidx/work/impl/n/p;->o:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_8

    return v2

    .line 10
    :cond_8
    iget-wide v3, p0, Landroidx/work/impl/n/p;->p:J

    iget-wide v5, p1, Landroidx/work/impl/n/p;->p:J

    cmp-long v1, v3, v5

    if-eqz v1, :cond_9

    return v2

    .line 11
    :cond_9
    iget-boolean v1, p0, Landroidx/work/impl/n/p;->q:Z

    iget-boolean v3, p1, Landroidx/work/impl/n/p;->q:Z

    if-eq v1, v3, :cond_a

    return v2

    .line 12
    :cond_a
    iget-object v1, p0, Landroidx/work/impl/n/p;->a:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/n/p;->a:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    return v2

    .line 13
    :cond_b
    iget-object v1, p0, Landroidx/work/impl/n/p;->b:Landroidx/work/v;

    iget-object v3, p1, Landroidx/work/impl/n/p;->b:Landroidx/work/v;

    if-eq v1, v3, :cond_c

    return v2

    .line 14
    :cond_c
    iget-object v1, p0, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    iget-object v3, p1, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_d

    return v2

    .line 15
    :cond_d
    iget-object v1, p0, Landroidx/work/impl/n/p;->d:Ljava/lang/String;

    if-eqz v1, :cond_e

    iget-object v3, p1, Landroidx/work/impl/n/p;->d:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    goto :goto_0

    :cond_e
    iget-object v1, p1, Landroidx/work/impl/n/p;->d:Ljava/lang/String;

    if-eqz v1, :cond_f

    :goto_0
    return v2

    .line 16
    :cond_f
    iget-object v1, p0, Landroidx/work/impl/n/p;->e:Landroidx/work/e;

    iget-object v3, p1, Landroidx/work/impl/n/p;->e:Landroidx/work/e;

    invoke-virtual {v1, v3}, Landroidx/work/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_10

    return v2

    .line 17
    :cond_10
    iget-object v1, p0, Landroidx/work/impl/n/p;->f:Landroidx/work/e;

    iget-object v3, p1, Landroidx/work/impl/n/p;->f:Landroidx/work/e;

    invoke-virtual {v1, v3}, Landroidx/work/e;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_11

    return v2

    .line 18
    :cond_11
    iget-object v1, p0, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    iget-object v3, p1, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    invoke-virtual {v1, v3}, Landroidx/work/c;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_12

    return v2

    .line 19
    :cond_12
    iget-object v1, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/a;

    iget-object p1, p1, Landroidx/work/impl/n/p;->l:Landroidx/work/a;

    if-ne v1, p1, :cond_13

    goto :goto_1

    :cond_13
    const/4 v0, 0x0

    :goto_1
    return v0
.end method

.method public f(JJ)V
    .locals 6

    const/4 v0, 0x1

    const-wide/32 v1, 0xdbba0

    const/4 v3, 0x0

    cmp-long v4, p1, v1

    if-gez v4, :cond_0

    .line 1
    invoke-static {}, Landroidx/work/m;->c()Landroidx/work/m;

    move-result-object p1

    sget-object p2, Landroidx/work/impl/n/p;->r:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    .line 2
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "Interval duration lesser than minimum allowed value; Changed to %s"

    .line 3
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Throwable;

    invoke-virtual {p1, p2, v4, v5}, Landroidx/work/m;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p1, v1

    :cond_0
    const-wide/32 v1, 0x493e0

    cmp-long v4, p3, v1

    if-gez v4, :cond_1

    .line 4
    invoke-static {}, Landroidx/work/m;->c()Landroidx/work/m;

    move-result-object p3

    sget-object p4, Landroidx/work/impl/n/p;->r:Ljava/lang/String;

    new-array v4, v0, [Ljava/lang/Object;

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    aput-object v5, v4, v3

    const-string v5, "Flex duration lesser than minimum allowed value; Changed to %s"

    .line 6
    invoke-static {v5, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    new-array v5, v3, [Ljava/lang/Throwable;

    .line 7
    invoke-virtual {p3, p4, v4, v5}, Landroidx/work/m;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p3, v1

    :cond_1
    cmp-long v1, p3, p1

    if-lez v1, :cond_2

    .line 8
    invoke-static {}, Landroidx/work/m;->c()Landroidx/work/m;

    move-result-object p3

    sget-object p4, Landroidx/work/impl/n/p;->r:Ljava/lang/String;

    new-array v0, v0, [Ljava/lang/Object;

    .line 9
    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    aput-object v1, v0, v3

    const-string v1, "Flex duration greater than interval duration; Changed to %s"

    .line 10
    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    new-array v1, v3, [Ljava/lang/Throwable;

    .line 11
    invoke-virtual {p3, p4, v0, v1}, Landroidx/work/m;->h(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    move-wide p3, p1

    .line 12
    :cond_2
    iput-wide p1, p0, Landroidx/work/impl/n/p;->h:J

    .line 13
    iput-wide p3, p0, Landroidx/work/impl/n/p;->i:J

    return-void
.end method

.method public hashCode()I
    .locals 6

    .line 1
    iget-object v0, p0, Landroidx/work/impl/n/p;->a:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Landroidx/work/impl/n/p;->b:Landroidx/work/v;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 3
    iget-object v1, p0, Landroidx/work/impl/n/p;->c:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 4
    iget-object v1, p0, Landroidx/work/impl/n/p;->d:Ljava/lang/String;

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
    iget-object v1, p0, Landroidx/work/impl/n/p;->e:Landroidx/work/e;

    invoke-virtual {v1}, Landroidx/work/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 6
    iget-object v1, p0, Landroidx/work/impl/n/p;->f:Landroidx/work/e;

    invoke-virtual {v1}, Landroidx/work/e;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 7
    iget-wide v1, p0, Landroidx/work/impl/n/p;->g:J

    const/16 v3, 0x20

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 8
    iget-wide v1, p0, Landroidx/work/impl/n/p;->h:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 9
    iget-wide v1, p0, Landroidx/work/impl/n/p;->i:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 10
    iget-object v1, p0, Landroidx/work/impl/n/p;->j:Landroidx/work/c;

    invoke-virtual {v1}, Landroidx/work/c;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 11
    iget v1, p0, Landroidx/work/impl/n/p;->k:I

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 12
    iget-object v1, p0, Landroidx/work/impl/n/p;->l:Landroidx/work/a;

    invoke-virtual {v1}, Ljava/lang/Enum;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 13
    iget-wide v1, p0, Landroidx/work/impl/n/p;->m:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 14
    iget-wide v1, p0, Landroidx/work/impl/n/p;->n:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 15
    iget-wide v1, p0, Landroidx/work/impl/n/p;->o:J

    ushr-long v4, v1, v3

    xor-long/2addr v1, v4

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 16
    iget-wide v1, p0, Landroidx/work/impl/n/p;->p:J

    ushr-long v3, v1, v3

    xor-long/2addr v1, v3

    long-to-int v2, v1

    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 17
    iget-boolean v1, p0, Landroidx/work/impl/n/p;->q:Z

    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "{WorkSpec: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Landroidx/work/impl/n/p;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
