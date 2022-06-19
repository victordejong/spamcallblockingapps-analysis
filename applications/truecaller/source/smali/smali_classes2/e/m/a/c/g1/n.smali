.class public final Le/m/a/c/g1/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/m/a/c/q1/t;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/m/a/c/q1/t;

    const/16 v1, 0xa

    invoke-direct {v0, v1}, Le/m/a/c/q1/t;-><init>(I)V

    iput-object v0, p0, Le/m/a/c/g1/n;->a:Le/m/a/c/q1/t;

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/g1/e;Le/m/a/c/i1/i/b$a;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    .line 1
    :goto_0
    :try_start_0
    iget-object v3, p0, Le/m/a/c/g1/n;->a:Le/m/a/c/q1/t;

    iget-object v3, v3, Le/m/a/c/q1/t;->a:[B

    const/16 v4, 0xa

    .line 2
    invoke-virtual {p1, v3, v0, v4, v0}, Le/m/a/c/g1/e;->e([BIIZ)Z
    :try_end_0
    .catch Ljava/io/EOFException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    iget-object v3, p0, Le/m/a/c/g1/n;->a:Le/m/a/c/q1/t;

    invoke-virtual {v3, v0}, Le/m/a/c/q1/t;->C(I)V

    .line 4
    iget-object v3, p0, Le/m/a/c/g1/n;->a:Le/m/a/c/q1/t;

    invoke-virtual {v3}, Le/m/a/c/q1/t;->s()I

    move-result v3

    const v5, 0x494433

    if-eq v3, v5, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    iget-object v3, p0, Le/m/a/c/g1/n;->a:Le/m/a/c/q1/t;

    const/4 v5, 0x3

    invoke-virtual {v3, v5}, Le/m/a/c/q1/t;->D(I)V

    .line 6
    iget-object v3, p0, Le/m/a/c/g1/n;->a:Le/m/a/c/q1/t;

    invoke-virtual {v3}, Le/m/a/c/q1/t;->p()I

    move-result v3

    add-int/lit8 v5, v3, 0xa

    if-nez v1, :cond_1

    .line 7
    new-array v1, v5, [B

    .line 8
    iget-object v6, p0, Le/m/a/c/g1/n;->a:Le/m/a/c/q1/t;

    iget-object v6, v6, Le/m/a/c/q1/t;->a:[B

    invoke-static {v6, v0, v1, v0, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 9
    invoke-virtual {p1, v1, v4, v3, v0}, Le/m/a/c/g1/e;->e([BIIZ)Z

    .line 10
    new-instance v3, Le/m/a/c/i1/i/b;

    invoke-direct {v3, p2}, Le/m/a/c/i1/i/b;-><init>(Le/m/a/c/i1/i/b$a;)V

    invoke-virtual {v3, v1, v5}, Le/m/a/c/i1/i/b;->c([BI)Lcom/google/android/exoplayer2/metadata/Metadata;

    move-result-object v1

    goto :goto_1

    .line 11
    :cond_1
    invoke-virtual {p1, v3, v0}, Le/m/a/c/g1/e;->a(IZ)Z

    :goto_1
    add-int/2addr v2, v5

    goto :goto_0

    .line 12
    :catch_0
    :goto_2
    iput v0, p1, Le/m/a/c/g1/e;->f:I

    .line 13
    invoke-virtual {p1, v2, v0}, Le/m/a/c/g1/e;->a(IZ)Z

    return-object v1
.end method
