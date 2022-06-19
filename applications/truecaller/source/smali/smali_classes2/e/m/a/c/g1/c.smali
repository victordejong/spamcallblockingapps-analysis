.class public final Le/m/a/c/g1/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/q;


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
    iput-object p1, p0, Le/m/a/c/g1/c;->b:[I

    .line 3
    iput-object p2, p0, Le/m/a/c/g1/c;->c:[J

    .line 4
    iput-object p3, p0, Le/m/a/c/g1/c;->d:[J

    .line 5
    iput-object p4, p0, Le/m/a/c/g1/c;->e:[J

    .line 6
    array-length p1, p1

    iput p1, p0, Le/m/a/c/g1/c;->a:I

    if-lez p1, :cond_0

    add-int/lit8 p2, p1, -0x1

    .line 7
    aget-wide p2, p3, p2

    add-int/lit8 p1, p1, -0x1

    aget-wide v0, p4, p1

    add-long/2addr p2, v0

    iput-wide p2, p0, Le/m/a/c/g1/c;->f:J

    goto :goto_0

    :cond_0
    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Le/m/a/c/g1/c;->f:J

    :goto_0
    return-void
.end method


# virtual methods
.method public b(J)Le/m/a/c/g1/q$a;
    .locals 9

    .line 1
    iget-object v0, p0, Le/m/a/c/g1/c;->e:[J

    const/4 v1, 0x1

    invoke-static {v0, p1, p2, v1, v1}, Le/m/a/c/q1/d0;->c([JJZZ)I

    move-result v0

    .line 2
    new-instance v2, Le/m/a/c/g1/r;

    iget-object v3, p0, Le/m/a/c/g1/c;->e:[J

    aget-wide v4, v3, v0

    iget-object v6, p0, Le/m/a/c/g1/c;->c:[J

    aget-wide v7, v6, v0

    invoke-direct {v2, v4, v5, v7, v8}, Le/m/a/c/g1/r;-><init>(JJ)V

    cmp-long p1, v4, p1

    if-gez p1, :cond_1

    .line 3
    iget p1, p0, Le/m/a/c/g1/c;->a:I

    sub-int/2addr p1, v1

    if-ne v0, p1, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Le/m/a/c/g1/r;

    add-int/2addr v0, v1

    aget-wide v4, v3, v0

    aget-wide v0, v6, v0

    invoke-direct {p1, v4, v5, v0, v1}, Le/m/a/c/g1/r;-><init>(JJ)V

    .line 5
    new-instance p2, Le/m/a/c/g1/q$a;

    invoke-direct {p2, v2, p1}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;Le/m/a/c/g1/r;)V

    return-object p2

    .line 6
    :cond_1
    :goto_0
    new-instance p1, Le/m/a/c/g1/q$a;

    invoke-direct {p1, v2}, Le/m/a/c/g1/q$a;-><init>(Le/m/a/c/g1/r;)V

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
    iget-wide v0, p0, Le/m/a/c/g1/c;->f:J

    return-wide v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "ChunkIndex(length="

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Le/m/a/c/g1/c;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", sizes="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/c/g1/c;->b:[I

    .line 2
    invoke-static {v1}, Ljava/util/Arrays;->toString([I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", offsets="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/c/g1/c;->c:[J

    .line 3
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", timeUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/c/g1/c;->e:[J

    .line 4
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ", durationsUs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/m/a/c/g1/c;->d:[J

    .line 5
    invoke-static {v1}, Ljava/util/Arrays;->toString([J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
