.class public final Le/a/d0/z0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/q2/v;


# instance fields
.field public final a:Z

.field public final b:J

.field public final c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/d0/z0/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(ZJLjava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZJ",
            "Ljava/util/List<",
            "Le/a/d0/z0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "attemptsDetails"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-boolean p1, p0, Le/a/d0/z0/b;->a:Z

    iput-wide p2, p0, Le/a/d0/z0/b;->b:J

    iput-object p4, p0, Le/a/d0/z0/b;->c:Ljava/util/List;

    return-void
.end method

.method public static final b(J)Ljava/lang/String;
    .locals 5

    .line 1
    sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    invoke-virtual {v0, p0, p1}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J

    move-result-wide p0

    const-wide/16 v0, 0x0

    cmp-long v0, v0, p0

    const-wide/16 v1, 0x1

    if-lez v0, :cond_0

    goto :goto_0

    :cond_0
    cmp-long v0, v1, p0

    if-ltz v0, :cond_1

    const-string p0, "0-1"

    goto/16 :goto_11

    :cond_1
    :goto_0
    const/4 v0, 0x2

    int-to-long v3, v0

    cmp-long v0, v1, p0

    if-lez v0, :cond_2

    goto :goto_1

    :cond_2
    cmp-long v0, v3, p0

    if-ltz v0, :cond_3

    const-string p0, "1-2"

    goto/16 :goto_11

    :cond_3
    :goto_1
    const/4 v0, 0x3

    int-to-long v0, v0

    cmp-long v2, v3, p0

    if-lez v2, :cond_4

    goto :goto_2

    :cond_4
    cmp-long v2, v0, p0

    if-ltz v2, :cond_5

    const-string p0, "2-3"

    goto/16 :goto_11

    :cond_5
    :goto_2
    const/4 v2, 0x4

    int-to-long v2, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_6

    goto :goto_3

    :cond_6
    cmp-long v0, v2, p0

    if-ltz v0, :cond_7

    const-string p0, "3-4"

    goto/16 :goto_11

    :cond_7
    :goto_3
    const/4 v0, 0x5

    int-to-long v0, v0

    cmp-long v2, v2, p0

    if-lez v2, :cond_8

    goto :goto_4

    :cond_8
    cmp-long v2, v0, p0

    if-ltz v2, :cond_9

    const-string p0, "4-5"

    goto/16 :goto_11

    :cond_9
    :goto_4
    const/4 v2, 0x6

    int-to-long v2, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_a

    goto :goto_5

    :cond_a
    cmp-long v0, v2, p0

    if-ltz v0, :cond_b

    const-string p0, "5-6"

    goto/16 :goto_11

    :cond_b
    :goto_5
    const/4 v0, 0x7

    int-to-long v0, v0

    cmp-long v2, v2, p0

    if-lez v2, :cond_c

    goto :goto_6

    :cond_c
    cmp-long v2, v0, p0

    if-ltz v2, :cond_d

    const-string p0, "6-7"

    goto/16 :goto_11

    :cond_d
    :goto_6
    const/16 v2, 0x8

    int-to-long v2, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_e

    goto :goto_7

    :cond_e
    cmp-long v0, v2, p0

    if-ltz v0, :cond_f

    const-string p0, "7-8"

    goto/16 :goto_11

    :cond_f
    :goto_7
    const/16 v0, 0x9

    int-to-long v0, v0

    cmp-long v2, v2, p0

    if-lez v2, :cond_10

    goto :goto_8

    :cond_10
    cmp-long v2, v0, p0

    if-ltz v2, :cond_11

    const-string p0, "8-9"

    goto/16 :goto_11

    :cond_11
    :goto_8
    const/16 v2, 0xa

    int-to-long v2, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_12

    goto :goto_9

    :cond_12
    cmp-long v0, v2, p0

    if-ltz v0, :cond_13

    const-string p0, "9-10"

    goto/16 :goto_11

    :cond_13
    :goto_9
    const/16 v0, 0xc

    int-to-long v0, v0

    cmp-long v2, v2, p0

    if-lez v2, :cond_14

    goto :goto_a

    :cond_14
    cmp-long v2, v0, p0

    if-ltz v2, :cond_15

    const-string p0, "10-12"

    goto/16 :goto_11

    :cond_15
    :goto_a
    const/16 v2, 0xe

    int-to-long v2, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_16

    goto :goto_b

    :cond_16
    cmp-long v0, v2, p0

    if-ltz v0, :cond_17

    const-string p0, "12-14"

    goto :goto_11

    :cond_17
    :goto_b
    const/16 v0, 0x10

    int-to-long v0, v0

    cmp-long v2, v2, p0

    if-lez v2, :cond_18

    goto :goto_c

    :cond_18
    cmp-long v2, v0, p0

    if-ltz v2, :cond_19

    const-string p0, "14-16"

    goto :goto_11

    :cond_19
    :goto_c
    const/16 v2, 0x12

    int-to-long v2, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_1a

    goto :goto_d

    :cond_1a
    cmp-long v0, v2, p0

    if-ltz v0, :cond_1b

    const-string p0, "16-18"

    goto :goto_11

    :cond_1b
    :goto_d
    const/16 v0, 0x14

    int-to-long v0, v0

    cmp-long v2, v2, p0

    if-lez v2, :cond_1c

    goto :goto_e

    :cond_1c
    cmp-long v2, v0, p0

    if-ltz v2, :cond_1d

    const-string p0, "18-20"

    goto :goto_11

    :cond_1d
    :goto_e
    const/16 v2, 0x19

    int-to-long v2, v2

    cmp-long v0, v0, p0

    if-lez v0, :cond_1e

    goto :goto_f

    :cond_1e
    cmp-long v0, v2, p0

    if-ltz v0, :cond_1f

    const-string p0, "20-25"

    goto :goto_11

    :cond_1f
    :goto_f
    const/16 v0, 0x1e

    int-to-long v0, v0

    cmp-long v2, v2, p0

    if-lez v2, :cond_20

    goto :goto_10

    :cond_20
    cmp-long p0, v0, p0

    if-ltz p0, :cond_21

    const-string p0, "25-30"

    goto :goto_11

    :cond_21
    :goto_10
    const-string p0, ">30"

    :goto_11
    return-object p0
.end method


# virtual methods
.method public a()Le/a/q2/x;
    .locals 7

    .line 1
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    .line 2
    iget-boolean v1, p0, Le/a/d0/z0/b;->a:Z

    const-string v2, "Success"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 3
    iget-wide v1, p0, Le/a/d0/z0/b;->b:J

    invoke-static {v1, v2}, Le/a/d0/z0/b;->b(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "ElapsedSeconds"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    iget-object v1, p0, Le/a/d0/z0/b;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const-string v2, "NumberOfAttempts"

    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 5
    iget-object v1, p0, Le/a/d0/z0/b;->c:Ljava/util/List;

    invoke-static {v1}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d0/z0/a;

    .line 6
    iget-object v1, v1, Le/a/d0/z0/a;->b:Ljava/lang/String;

    const-string v2, "LastConnectionType"

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v1, p0, Le/a/d0/z0/b;->c:Ljava/util/List;

    .line 9
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/d0/z0/a;

    const-string v3, "Attempt"

    .line 10
    invoke-static {v3}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    .line 11
    iget v5, v2, Le/a/d0/z0/a;->a:I

    const-string v6, "_Success"

    .line 12
    invoke-static {v4, v5, v6}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 13
    iget-boolean v5, v2, Le/a/d0/z0/a;->c:Z

    .line 14
    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 15
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 16
    iget v5, v2, Le/a/d0/z0/a;->a:I

    const-string v6, "_ElapsedSeconds"

    .line 17
    invoke-static {v4, v5, v6}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 18
    iget-wide v5, v2, Le/a/d0/z0/a;->d:J

    .line 19
    invoke-static {v5, v6}, Le/a/d0/z0/b;->b(J)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v4, v5}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    iget v3, v2, Le/a/d0/z0/a;->a:I

    const-string v5, "_ConnectionType"

    .line 22
    invoke-static {v4, v3, v5}, Le/d/c/a/a;->J2(Ljava/lang/StringBuilder;ILjava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 23
    iget-boolean v4, v2, Le/a/d0/z0/a;->e:Z

    if-eqz v4, :cond_0

    .line 24
    iget-object v2, v2, Le/a/d0/z0/a;->b:Ljava/lang/String;

    goto :goto_1

    :cond_0
    const-string v2, "no-connection"

    .line 25
    :goto_1
    invoke-virtual {v0, v3, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 26
    :cond_1
    new-instance v1, Le/a/q2/x$b;

    const-string v2, "CallerIdNetworkRequest"

    invoke-direct {v1, v2, v0}, Le/a/q2/x$b;-><init>(Ljava/lang/String;Landroid/os/Bundle;)V

    return-object v1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    if-eq p0, p1, :cond_1

    instance-of v0, p1, Le/a/d0/z0/b;

    if-eqz v0, :cond_0

    check-cast p1, Le/a/d0/z0/b;

    iget-boolean v0, p0, Le/a/d0/z0/b;->a:Z

    iget-boolean v1, p1, Le/a/d0/z0/b;->a:Z

    if-ne v0, v1, :cond_0

    iget-wide v0, p0, Le/a/d0/z0/b;->b:J

    iget-wide v2, p1, Le/a/d0/z0/b;->b:J

    cmp-long v0, v0, v2

    if-nez v0, :cond_0

    iget-object v0, p0, Le/a/d0/z0/b;->c:Ljava/util/List;

    iget-object p1, p1, Le/a/d0/z0/b;->c:Ljava/util/List;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method

.method public hashCode()I
    .locals 3

    iget-boolean v0, p0, Le/a/d0/z0/b;->a:Z

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :cond_0
    mul-int/lit8 v0, v0, 0x1f

    iget-wide v1, p0, Le/a/d0/z0/b;->b:J

    invoke-static {v1, v2}, Ld;->a(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    iget-object v1, p0, Le/a/d0/z0/b;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    add-int/2addr v0, v1

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "CallerIdNetworkRequestEvent(success="

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Le/a/d0/z0/b;->a:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string v1, ", totalElapsedMs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Le/a/d0/z0/b;->b:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, ", attemptsDetails="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d0/z0/b;->c:Ljava/util/List;

    const-string v2, ")"

    invoke-static {v0, v1, v2}, Le/d/c/a/a;->l(Ljava/lang/StringBuilder;Ljava/util/List;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
