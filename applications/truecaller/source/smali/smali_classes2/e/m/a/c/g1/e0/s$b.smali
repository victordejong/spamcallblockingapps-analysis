.class public final Le/m/a/c/g1/e0/s$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/e0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Le/m/a/c/q1/c0;

.field public final b:Le/m/a/c/q1/t;


# direct methods
.method public constructor <init>(Le/m/a/c/q1/c0;Le/m/a/c/g1/e0/s$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/m/a/c/g1/e0/s$b;->a:Le/m/a/c/q1/c0;

    .line 3
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/e0/s$b;->b:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/e0/s$b;->b:Le/m/a/c/q1/t;

    sget-object v1, Le/m/a/c/q1/d0;->f:[B

    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->z([B)V

    return-void
.end method

.method public b(Le/m/a/c/g1/e;J)Le/m/a/c/g1/a$e;
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    iget-wide v2, v1, Le/m/a/c/g1/e;->d:J

    .line 2
    iget-wide v4, v1, Le/m/a/c/g1/e;->c:J

    sub-long/2addr v4, v2

    const-wide/16 v6, 0x4e20

    .line 3
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 4
    iget-object v5, v0, Le/m/a/c/g1/e0/s$b;->b:Le/m/a/c/q1/t;

    invoke-virtual {v5, v4}, Le/m/a/c/q1/t;->y(I)V

    .line 5
    iget-object v5, v0, Le/m/a/c/g1/e0/s$b;->b:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v1, v5, v6, v4, v6}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 7
    iget-object v1, v0, Le/m/a/c/g1/e0/s$b;->b:Le/m/a/c/q1/t;

    const/4 v4, -0x1

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    move v7, v4

    move-wide v8, v5

    .line 8
    :goto_0
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v10

    const/4 v11, 0x4

    if-lt v10, v11, :cond_e

    .line 9
    iget-object v10, v1, Le/m/a/c/q1/t;->a:[B

    .line 10
    iget v12, v1, Le/m/a/c/q1/t;->b:I

    .line 11
    invoke-static {v10, v12}, Le/m/a/c/g1/e0/s;->g([BI)I

    move-result v10

    const/4 v12, 0x1

    const/16 v13, 0x1ba

    if-eq v10, v13, :cond_0

    .line 12
    invoke-virtual {v1, v12}, Le/m/a/c/q1/t;->D(I)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-virtual {v1, v11}, Le/m/a/c/q1/t;->D(I)V

    .line 14
    invoke-static {v1}, Le/m/a/c/g1/e0/t;->c(Le/m/a/c/q1/t;)J

    move-result-wide v14

    cmp-long v4, v14, v5

    if-eqz v4, :cond_4

    .line 15
    iget-object v4, v0, Le/m/a/c/g1/e0/s$b;->a:Le/m/a/c/q1/c0;

    invoke-virtual {v4, v14, v15}, Le/m/a/c/q1/c0;->b(J)J

    move-result-wide v14

    cmp-long v4, v14, p2

    if-lez v4, :cond_2

    cmp-long v1, v8, v5

    if-nez v1, :cond_1

    .line 16
    invoke-static {v14, v15, v2, v3}, Le/m/a/c/g1/a$e;->a(JJ)Le/m/a/c/g1/a$e;

    move-result-object v1

    goto/16 :goto_3

    :cond_1
    int-to-long v4, v7

    add-long/2addr v2, v4

    .line 17
    invoke-static {v2, v3}, Le/m/a/c/g1/a$e;->b(J)Le/m/a/c/g1/a$e;

    move-result-object v1

    goto/16 :goto_3

    :cond_2
    const-wide/32 v7, 0x186a0

    add-long/2addr v7, v14

    cmp-long v4, v7, p2

    if-lez v4, :cond_3

    .line 18
    iget v1, v1, Le/m/a/c/q1/t;->b:I

    int-to-long v4, v1

    add-long/2addr v2, v4

    .line 19
    invoke-static {v2, v3}, Le/m/a/c/g1/a$e;->b(J)Le/m/a/c/g1/a$e;

    move-result-object v1

    goto/16 :goto_3

    .line 20
    :cond_3
    iget v4, v1, Le/m/a/c/q1/t;->b:I

    move v7, v4

    move-wide v8, v14

    .line 21
    :cond_4
    iget v4, v1, Le/m/a/c/q1/t;->c:I

    .line 22
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v10

    const/16 v14, 0xa

    if-ge v10, v14, :cond_5

    .line 23
    invoke-virtual {v1, v4}, Le/m/a/c/q1/t;->C(I)V

    goto/16 :goto_2

    :cond_5
    const/16 v10, 0x9

    .line 24
    invoke-virtual {v1, v10}, Le/m/a/c/q1/t;->D(I)V

    .line 25
    invoke-virtual {v1}, Le/m/a/c/q1/t;->q()I

    move-result v10

    and-int/lit8 v10, v10, 0x7

    .line 26
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v14

    if-ge v14, v10, :cond_6

    .line 27
    invoke-virtual {v1, v4}, Le/m/a/c/q1/t;->C(I)V

    goto :goto_2

    .line 28
    :cond_6
    invoke-virtual {v1, v10}, Le/m/a/c/q1/t;->D(I)V

    .line 29
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v10

    if-ge v10, v11, :cond_7

    .line 30
    invoke-virtual {v1, v4}, Le/m/a/c/q1/t;->C(I)V

    goto :goto_2

    .line 31
    :cond_7
    iget-object v10, v1, Le/m/a/c/q1/t;->a:[B

    .line 32
    iget v14, v1, Le/m/a/c/q1/t;->b:I

    .line 33
    invoke-static {v10, v14}, Le/m/a/c/g1/e0/s;->g([BI)I

    move-result v10

    const/16 v14, 0x1bb

    if-ne v10, v14, :cond_9

    .line 34
    invoke-virtual {v1, v11}, Le/m/a/c/q1/t;->D(I)V

    .line 35
    invoke-virtual {v1}, Le/m/a/c/q1/t;->v()I

    move-result v10

    .line 36
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v14

    if-ge v14, v10, :cond_8

    .line 37
    invoke-virtual {v1, v4}, Le/m/a/c/q1/t;->C(I)V

    goto :goto_2

    .line 38
    :cond_8
    invoke-virtual {v1, v10}, Le/m/a/c/q1/t;->D(I)V

    .line 39
    :cond_9
    :goto_1
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v10

    if-lt v10, v11, :cond_d

    .line 40
    iget-object v10, v1, Le/m/a/c/q1/t;->a:[B

    .line 41
    iget v14, v1, Le/m/a/c/q1/t;->b:I

    .line 42
    invoke-static {v10, v14}, Le/m/a/c/g1/e0/s;->g([BI)I

    move-result v10

    if-eq v10, v13, :cond_d

    const/16 v14, 0x1b9

    if-ne v10, v14, :cond_a

    goto :goto_2

    :cond_a
    ushr-int/lit8 v10, v10, 0x8

    if-eq v10, v12, :cond_b

    goto :goto_2

    .line 43
    :cond_b
    invoke-virtual {v1, v11}, Le/m/a/c/q1/t;->D(I)V

    .line 44
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v10

    const/4 v14, 0x2

    if-ge v10, v14, :cond_c

    .line 45
    invoke-virtual {v1, v4}, Le/m/a/c/q1/t;->C(I)V

    goto :goto_2

    .line 46
    :cond_c
    invoke-virtual {v1}, Le/m/a/c/q1/t;->v()I

    move-result v10

    .line 47
    iget v14, v1, Le/m/a/c/q1/t;->c:I

    .line 48
    iget v15, v1, Le/m/a/c/q1/t;->b:I

    add-int/2addr v15, v10

    .line 49
    invoke-static {v14, v15}, Ljava/lang/Math;->min(II)I

    move-result v10

    .line 50
    invoke-virtual {v1, v10}, Le/m/a/c/q1/t;->C(I)V

    goto :goto_1

    .line 51
    :cond_d
    :goto_2
    iget v4, v1, Le/m/a/c/q1/t;->b:I

    goto/16 :goto_0

    :cond_e
    cmp-long v1, v8, v5

    if-eqz v1, :cond_f

    int-to-long v4, v4

    add-long/2addr v2, v4

    .line 52
    invoke-static {v8, v9, v2, v3}, Le/m/a/c/g1/a$e;->c(JJ)Le/m/a/c/g1/a$e;

    move-result-object v1

    goto :goto_3

    .line 53
    :cond_f
    sget-object v1, Le/m/a/c/g1/a$e;->d:Le/m/a/c/g1/a$e;

    :goto_3
    return-object v1
.end method
