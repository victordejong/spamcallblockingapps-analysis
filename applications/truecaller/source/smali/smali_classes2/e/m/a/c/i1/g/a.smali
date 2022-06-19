.class public final Le/m/a/c/i1/g/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/i1/b;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/m/a/c/i1/d;)Lcom/google/android/exoplayer2/metadata/Metadata;
    .locals 13

    .line 1
    iget-object p1, p1, Le/m/a/c/e1/e;->b:Ljava/nio/ByteBuffer;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v0

    .line 4
    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->limit()I

    move-result p1

    .line 5
    new-instance v1, Lcom/google/android/exoplayer2/metadata/Metadata;

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/google/android/exoplayer2/metadata/Metadata$Entry;

    const/4 v3, 0x0

    new-instance v4, Le/m/a/c/q1/t;

    invoke-direct {v4, v0, p1}, Le/m/a/c/q1/t;-><init>([BI)V

    .line 6
    invoke-virtual {v4}, Le/m/a/c/q1/t;->l()Ljava/lang/String;

    move-result-object v6

    .line 7
    invoke-static {v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    invoke-virtual {v4}, Le/m/a/c/q1/t;->l()Ljava/lang/String;

    move-result-object v7

    .line 9
    invoke-static {v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    invoke-virtual {v4}, Le/m/a/c/q1/t;->r()J

    move-result-wide v8

    .line 11
    invoke-virtual {v4}, Le/m/a/c/q1/t;->r()J

    move-result-wide v10

    .line 12
    iget-object p1, v4, Le/m/a/c/q1/t;->a:[B

    .line 13
    iget v0, v4, Le/m/a/c/q1/t;->b:I

    .line 14
    iget v4, v4, Le/m/a/c/q1/t;->c:I

    .line 15
    invoke-static {p1, v0, v4}, Ljava/util/Arrays;->copyOfRange([BII)[B

    move-result-object v12

    .line 16
    new-instance p1, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;

    move-object v5, p1

    invoke-direct/range {v5 .. v12}, Lcom/google/android/exoplayer2/metadata/emsg/EventMessage;-><init>(Ljava/lang/String;Ljava/lang/String;JJ[B)V

    aput-object p1, v2, v3

    .line 17
    invoke-direct {v1, v2}, Lcom/google/android/exoplayer2/metadata/Metadata;-><init>([Lcom/google/android/exoplayer2/metadata/Metadata$Entry;)V

    return-object v1
.end method
