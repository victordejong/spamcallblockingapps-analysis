.class public final Le/m/a/c/l1/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/p1/l;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/l1/n$a;
    }
.end annotation


# instance fields
.field public final a:Le/m/a/c/p1/l;

.field public final b:I

.field public final c:Le/m/a/c/l1/n$a;

.field public final d:[B

.field public e:I


# direct methods
.method public constructor <init>(Le/m/a/c/p1/l;ILe/m/a/c/l1/n$a;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    if-lez p2, :cond_0

    move v1, v0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    .line 2
    :goto_0
    invoke-static {v1}, Ln3/g0/y;->r(Z)V

    .line 3
    iput-object p1, p0, Le/m/a/c/l1/n;->a:Le/m/a/c/p1/l;

    .line 4
    iput p2, p0, Le/m/a/c/l1/n;->b:I

    .line 5
    iput-object p3, p0, Le/m/a/c/l1/n;->c:Le/m/a/c/l1/n$a;

    new-array p1, v0, [B

    .line 6
    iput-object p1, p0, Le/m/a/c/l1/n;->d:[B

    .line 7
    iput p2, p0, Le/m/a/c/l1/n;->e:I

    return-void
.end method


# virtual methods
.method public a()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/n;->a:Le/m/a/c/p1/l;

    invoke-interface {v0}, Le/m/a/c/p1/l;->a()Ljava/util/Map;

    move-result-object v0

    return-object v0
.end method

.method public b(Le/m/a/c/p1/n;)J
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public c(Le/m/a/c/p1/f0;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/n;->a:Le/m/a/c/p1/l;

    invoke-interface {v0, p1}, Le/m/a/c/p1/l;->c(Le/m/a/c/p1/f0;)V

    return-void
.end method

.method public close()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/c/l1/n;->a:Le/m/a/c/p1/l;

    invoke-interface {v0}, Le/m/a/c/p1/l;->getUri()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public read([BII)I
    .locals 16
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    iget v1, v0, Le/m/a/c/l1/n;->e:I

    const/4 v2, -0x1

    if-nez v1, :cond_8

    .line 2
    iget-object v1, v0, Le/m/a/c/l1/n;->a:Le/m/a/c/p1/l;

    iget-object v3, v0, Le/m/a/c/l1/n;->d:[B

    const/4 v4, 0x0

    const/4 v5, 0x1

    invoke-interface {v1, v3, v4, v5}, Le/m/a/c/p1/l;->read([BII)I

    move-result v1

    if-ne v1, v2, :cond_0

    goto :goto_4

    .line 3
    :cond_0
    iget-object v1, v0, Le/m/a/c/l1/n;->d:[B

    aget-byte v1, v1, v4

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x4

    if-nez v1, :cond_2

    :cond_1
    :goto_0
    move v4, v5

    goto :goto_4

    .line 4
    :cond_2
    new-array v3, v1, [B

    move v6, v1

    move v7, v4

    :goto_1
    if-lez v6, :cond_4

    .line 5
    iget-object v8, v0, Le/m/a/c/l1/n;->a:Le/m/a/c/p1/l;

    invoke-interface {v8, v3, v7, v6}, Le/m/a/c/p1/l;->read([BII)I

    move-result v8

    if-ne v8, v2, :cond_3

    goto :goto_4

    :cond_3
    add-int/2addr v7, v8

    sub-int/2addr v6, v8

    goto :goto_1

    :cond_4
    :goto_2
    if-lez v1, :cond_5

    add-int/lit8 v4, v1, -0x1

    .line 6
    aget-byte v6, v3, v4

    if-nez v6, :cond_5

    move v1, v4

    goto :goto_2

    :cond_5
    if-lez v1, :cond_1

    .line 7
    iget-object v4, v0, Le/m/a/c/l1/n;->c:Le/m/a/c/l1/n$a;

    new-instance v6, Le/m/a/c/q1/t;

    invoke-direct {v6, v3, v1}, Le/m/a/c/q1/t;-><init>([BI)V

    check-cast v4, Le/m/a/c/l1/s$a;

    .line 8
    iget-boolean v1, v4, Le/m/a/c/l1/s$a;->m:Z

    if-nez v1, :cond_6

    iget-wide v7, v4, Le/m/a/c/l1/s$a;->i:J

    goto :goto_3

    :cond_6
    iget-object v1, v4, Le/m/a/c/l1/s$a;->n:Le/m/a/c/l1/s;

    .line 9
    sget-object v3, Le/m/a/c/l1/s;->Q:Ljava/util/Map;

    .line 10
    invoke-virtual {v1}, Le/m/a/c/l1/s;->u()J

    move-result-wide v7

    .line 11
    iget-wide v9, v4, Le/m/a/c/l1/s$a;->i:J

    invoke-static {v7, v8, v9, v10}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v7

    :goto_3
    move-wide v10, v7

    .line 12
    invoke-virtual {v6}, Le/m/a/c/q1/t;->a()I

    move-result v13

    .line 13
    iget-object v9, v4, Le/m/a/c/l1/s$a;->l:Le/m/a/c/g1/s;

    .line 14
    invoke-static {v9}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 15
    invoke-interface {v9, v6, v13}, Le/m/a/c/g1/s;->a(Le/m/a/c/q1/t;I)V

    const/4 v12, 0x1

    const/4 v14, 0x0

    const/4 v15, 0x0

    .line 16
    invoke-interface/range {v9 .. v15}, Le/m/a/c/g1/s;->c(JIIILe/m/a/c/g1/s$a;)V

    .line 17
    iput-boolean v5, v4, Le/m/a/c/l1/s$a;->m:Z

    goto :goto_0

    :goto_4
    if-eqz v4, :cond_7

    .line 18
    iget v1, v0, Le/m/a/c/l1/n;->b:I

    iput v1, v0, Le/m/a/c/l1/n;->e:I

    goto :goto_5

    :cond_7
    return v2

    .line 19
    :cond_8
    :goto_5
    iget-object v1, v0, Le/m/a/c/l1/n;->a:Le/m/a/c/p1/l;

    iget v3, v0, Le/m/a/c/l1/n;->e:I

    move/from16 v4, p3

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v3

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-interface {v1, v4, v5, v3}, Le/m/a/c/p1/l;->read([BII)I

    move-result v1

    if-eq v1, v2, :cond_9

    .line 20
    iget v2, v0, Le/m/a/c/l1/n;->e:I

    sub-int/2addr v2, v1

    iput v2, v0, Le/m/a/c/l1/n;->e:I

    :cond_9
    return v1
.end method
