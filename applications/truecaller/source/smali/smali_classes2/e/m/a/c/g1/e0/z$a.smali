.class public final Le/m/a/c/g1/e0/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/a$f;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/c/g1/e0/z;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Le/m/a/c/q1/c0;

.field public final b:Le/m/a/c/q1/t;

.field public final c:I


# direct methods
.method public constructor <init>(ILe/m/a/c/q1/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/m/a/c/g1/e0/z$a;->c:I

    .line 3
    iput-object p2, p0, Le/m/a/c/g1/e0/z$a;->a:Le/m/a/c/q1/c0;

    .line 4
    new-instance p1, Le/m/a/c/q1/t;

    invoke-direct {p1}, Le/m/a/c/q1/t;-><init>()V

    iput-object p1, p0, Le/m/a/c/g1/e0/z$a;->b:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/e0/z$a;->b:Le/m/a/c/q1/t;

    sget-object v1, Le/m/a/c/q1/d0;->f:[B

    invoke-virtual {v0, v1}, Le/m/a/c/q1/t;->z([B)V

    return-void
.end method

.method public b(Le/m/a/c/g1/e;J)Le/m/a/c/g1/a$e;
    .locals 17
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

    const-wide/32 v6, 0x1b8a0

    .line 3
    invoke-static {v6, v7, v4, v5}, Ljava/lang/Math;->min(JJ)J

    move-result-wide v4

    long-to-int v4, v4

    .line 4
    iget-object v5, v0, Le/m/a/c/g1/e0/z$a;->b:Le/m/a/c/q1/t;

    invoke-virtual {v5, v4}, Le/m/a/c/q1/t;->y(I)V

    .line 5
    iget-object v5, v0, Le/m/a/c/g1/e0/z$a;->b:Le/m/a/c/q1/t;

    iget-object v5, v5, Le/m/a/c/q1/t;->a:[B

    const/4 v6, 0x0

    .line 6
    invoke-virtual {v1, v5, v6, v4, v6}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 7
    iget-object v1, v0, Le/m/a/c/g1/e0/z$a;->b:Le/m/a/c/q1/t;

    .line 8
    iget v4, v1, Le/m/a/c/q1/t;->c:I

    const-wide/16 v7, -0x1

    move-wide v9, v7

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    .line 9
    :goto_0
    invoke-virtual {v1}, Le/m/a/c/q1/t;->a()I

    move-result v13

    const/16 v14, 0xbc

    if-lt v13, v14, :cond_6

    .line 10
    iget-object v13, v1, Le/m/a/c/q1/t;->a:[B

    .line 11
    iget v14, v1, Le/m/a/c/q1/t;->b:I

    :goto_1
    if-ge v14, v4, :cond_0

    .line 12
    aget-byte v15, v13, v14

    const/16 v5, 0x47

    if-eq v15, v5, :cond_0

    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    :cond_0
    add-int/lit16 v5, v14, 0xbc

    if-le v5, v4, :cond_1

    goto :goto_2

    .line 13
    :cond_1
    iget v6, v0, Le/m/a/c/g1/e0/z$a;->c:I

    invoke-static {v1, v14, v6}, Ln3/g0/y;->I1(Le/m/a/c/q1/t;II)J

    move-result-wide v6

    const-wide v15, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v8, v6, v15

    if-eqz v8, :cond_5

    .line 14
    iget-object v8, v0, Le/m/a/c/g1/e0/z$a;->a:Le/m/a/c/q1/c0;

    invoke-virtual {v8, v6, v7}, Le/m/a/c/q1/c0;->b(J)J

    move-result-wide v6

    cmp-long v8, v6, p2

    if-lez v8, :cond_3

    cmp-long v1, v11, v15

    if-nez v1, :cond_2

    .line 15
    invoke-static {v6, v7, v2, v3}, Le/m/a/c/g1/a$e;->a(JJ)Le/m/a/c/g1/a$e;

    move-result-object v1

    goto :goto_3

    :cond_2
    add-long/2addr v2, v9

    .line 16
    invoke-static {v2, v3}, Le/m/a/c/g1/a$e;->b(J)Le/m/a/c/g1/a$e;

    move-result-object v1

    goto :goto_3

    :cond_3
    const-wide/32 v8, 0x186a0

    add-long/2addr v8, v6

    cmp-long v8, v8, p2

    if-lez v8, :cond_4

    int-to-long v4, v14

    add-long/2addr v2, v4

    .line 17
    invoke-static {v2, v3}, Le/m/a/c/g1/a$e;->b(J)Le/m/a/c/g1/a$e;

    move-result-object v1

    goto :goto_3

    :cond_4
    int-to-long v8, v14

    move-wide v11, v6

    move-wide v9, v8

    .line 18
    :cond_5
    invoke-virtual {v1, v5}, Le/m/a/c/q1/t;->C(I)V

    int-to-long v7, v5

    goto :goto_0

    :cond_6
    :goto_2
    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    cmp-long v1, v11, v4

    if-eqz v1, :cond_7

    add-long/2addr v2, v7

    .line 19
    invoke-static {v11, v12, v2, v3}, Le/m/a/c/g1/a$e;->c(JJ)Le/m/a/c/g1/a$e;

    move-result-object v1

    goto :goto_3

    .line 20
    :cond_7
    sget-object v1, Le/m/a/c/g1/a$e;->d:Le/m/a/c/g1/a$e;

    :goto_3
    return-object v1
.end method
