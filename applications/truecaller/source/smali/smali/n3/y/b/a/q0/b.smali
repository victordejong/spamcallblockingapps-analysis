.class public final Ln3/y/b/a/q0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/q0/n;


# instance fields
.field public final a:I

.field public final b:[I

.field public final c:[J

.field public final d:[J

.field public final e:[J

.field public final f:J


# direct methods
.method public constructor <init>([I[J[J[J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/q0/b;->b:[I

    .line 3
    iput-object p2, p0, Ln3/y/b/a/q0/b;->c:[J

    .line 4
    iput-object p3, p0, Ln3/y/b/a/q0/b;->d:[J

    .line 5
    iput-object p4, p0, Ln3/y/b/a/q0/b;->e:[J

    .line 6
    array-length p1, p1

    iput p1, p0, Ln3/y/b/a/q0/b;->a:I

    if-lez p1, :cond_0

    add-int/lit8 p1, p1, -0x1

    .line 7
    aget-wide p2, p3, p1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Ln3/y/b/a/q0/b;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Ln3/y/b/a/q0/b;->f:J

    :goto_0
    return-void
.end method


# virtual methods
.method public b(J)Ln3/y/b/a/q0/n$a;
    .locals 9

    .line 1
    iget-object v0, p0, Ln3/y/b/a/q0/b;->e:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Ln3/y/b/a/x0/x;->d([JJZZ)I

    move-result v0

    .line 2
    new-instance v2, Ln3/y/b/a/q0/o;

    iget-object v3, p0, Ln3/y/b/a/q0/b;->e:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Ln3/y/b/a/q0/b;->c:[J

    aget-wide v7, v6, v0

    invoke-direct {v2, v4, v5, v7, v8}, Ln3/y/b/a/q0/o;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    .line 3
    iget p1, p0, Ln3/y/b/a/q0/b;->a:I

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ln3/y/b/a/q0/o;

    add-int/2addr v0, v1

    aget-wide v4, v3, v0

    aget-wide v0, v6, v0

    invoke-direct {p1, v4, v5, v0, v1}, Ln3/y/b/a/q0/o;-><init>(JJ)V

    .line 5
    new-instance p2, Ln3/y/b/a/q0/n$a;

    invoke-direct {p2, v2, p1}, Ln3/y/b/a/q0/n$a;-><init>(Ln3/y/b/a/q0/o;Ln3/y/b/a/q0/o;)V

    return-object p2

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Ln3/y/b/a/q0/n$a;

    invoke-direct {p1, v2}, Ln3/y/b/a/q0/n$a;-><init>(Ln3/y/b/a/q0/o;)V

    return-object p1
.end method

.method public c()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public g()J
    .locals 2

    .line 1
    iget-wide v0, p0, Ln3/y/b/a/q0/b;->f:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 7

    .line 1
    iget v0, p0, Ln3/y/b/a/q0/b;->a:I

    iget-object v1, p0, Ln3/y/b/a/q0/b;->b:[I

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Ln3/y/b/a/q0/b;->c:[J

    .line 3
    invoke-static {v2}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Ln3/y/b/a/q0/b;->e:[J

    .line 4
    invoke-static {v3}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Ln3/y/b/a/q0/b;->d:[J

    .line 5
    invoke-static {v4}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v4

    const/16 v5, 0x47

    invoke-static {v1, v5}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v2, v5}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v3, v5}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v5

    invoke-static {v4, v5}, Le/d/c/a/a;->f2(Ljava/lang/String;I)I

    move-result v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "ChunkIndex(length="

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, ", sizes="

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, ", offsets="

    const-string v1, ", timeUs="

    invoke-static {v6, v0, v2, v1, v3}, Le/d/c/a/a;->T0(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v0, ", durationsUs="

    const-string v1, ")"

    invoke-static {v6, v0, v4, v1}, Le/d/c/a/a;->j(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
