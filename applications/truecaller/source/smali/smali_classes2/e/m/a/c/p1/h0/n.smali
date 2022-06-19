.class public final Le/m/a/c/p1/h0/n;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Ljava/util/TreeSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/TreeSet<",
            "Le/m/a/c/p1/h0/w;",
            ">;"
        }
    .end annotation
.end field

.field public d:Le/m/a/c/p1/h0/s;

.field public e:Z


# direct methods
.method public constructor <init>(ILjava/lang/String;Le/m/a/c/p1/h0/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p1, p0, Le/m/a/c/p1/h0/n;->a:I

    .line 3
    iput-object p2, p0, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    .line 4
    iput-object p3, p0, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    .line 5
    new-instance p1, Ljava/util/TreeSet;

    invoke-direct {p1}, Ljava/util/TreeSet;-><init>()V

    iput-object p1, p0, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    return-void
.end method


# virtual methods
.method public a(JJ)J
    .locals 10

    .line 1
    invoke-virtual {p0, p1, p2}, Le/m/a/c/p1/h0/n;->b(J)Le/m/a/c/p1/h0/w;

    move-result-object v0

    .line 2
    iget-boolean v1, v0, Le/m/a/c/p1/h0/l;->d:Z

    const/4 v2, 0x1

    xor-int/2addr v1, v2

    const/4 v3, 0x0

    if-eqz v1, :cond_2

    .line 3
    iget-wide p1, v0, Le/m/a/c/p1/h0/l;->c:J

    const-wide/16 v0, -0x1

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    if-eqz v2, :cond_1

    const-wide p1, 0x7fffffffffffffffL

    .line 4
    :cond_1
    invoke-static {p1, p2, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    neg-long p1, p1

    return-wide p1

    :cond_2
    add-long v1, p1, p3

    .line 5
    iget-wide v4, v0, Le/m/a/c/p1/h0/l;->b:J

    iget-wide v6, v0, Le/m/a/c/p1/h0/l;->c:J

    add-long/2addr v4, v6

    cmp-long v6, v4, v1

    if-gez v6, :cond_5

    .line 6
    iget-object v6, p0, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    invoke-virtual {v6, v0, v3}, Ljava/util/TreeSet;->tailSet(Ljava/lang/Object;Z)Ljava/util/NavigableSet;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/NavigableSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/m/a/c/p1/h0/w;

    .line 7
    iget-wide v6, v3, Le/m/a/c/p1/h0/l;->b:J

    cmp-long v8, v6, v4

    if-lez v8, :cond_4

    goto :goto_1

    .line 8
    :cond_4
    iget-wide v8, v3, Le/m/a/c/p1/h0/l;->c:J

    add-long/2addr v6, v8

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->max(JJ)J

    move-result-wide v4

    cmp-long v3, v4, v1

    if-ltz v3, :cond_3

    :cond_5
    :goto_1
    sub-long/2addr v4, p1

    .line 9
    invoke-static {v4, v5, p3, p4}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(J)Le/m/a/c/p1/h0/w;
    .locals 10

    .line 1
    iget-object v1, p0, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    .line 2
    new-instance v9, Le/m/a/c/p1/h0/w;

    const-wide/16 v4, -0x1

    const-wide v6, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v8, 0x0

    move-object v0, v9

    move-wide v2, p1

    invoke-direct/range {v0 .. v8}, Le/m/a/c/p1/h0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    .line 3
    iget-object v0, p0, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, v9}, Ljava/util/TreeSet;->floor(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/p1/h0/w;

    if-eqz v0, :cond_0

    .line 4
    iget-wide v1, v0, Le/m/a/c/p1/h0/l;->b:J

    iget-wide v3, v0, Le/m/a/c/p1/h0/l;->c:J

    add-long/2addr v1, v3

    cmp-long v1, v1, p1

    if-lez v1, :cond_0

    return-object v0

    .line 5
    :cond_0
    iget-object v0, p0, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    invoke-virtual {v0, v9}, Ljava/util/TreeSet;->ceiling(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/m/a/c/p1/h0/w;

    .line 6
    iget-object v2, p0, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    if-nez v0, :cond_1

    .line 7
    new-instance v0, Le/m/a/c/p1/h0/w;

    const-wide/16 v5, -0x1

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    move-object v1, v0

    move-wide v3, p1

    invoke-direct/range {v1 .. v9}, Le/m/a/c/p1/h0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    goto :goto_0

    .line 8
    :cond_1
    iget-wide v0, v0, Le/m/a/c/p1/h0/l;->b:J

    sub-long v5, v0, p1

    .line 9
    new-instance v0, Le/m/a/c/p1/h0/w;

    const-wide v7, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v9, 0x0

    move-object v1, v0

    move-wide v3, p1

    invoke-direct/range {v1 .. v9}, Le/m/a/c/p1/h0/w;-><init>(Ljava/lang/String;JJJLjava/io/File;)V

    :goto_0
    return-object v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    :cond_0
    const/4 v1, 0x0

    if-eqz p1, :cond_3

    .line 1
    const-class v2, Le/m/a/c/p1/h0/n;

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Le/m/a/c/p1/h0/n;

    .line 3
    iget v2, p0, Le/m/a/c/p1/h0/n;->a:I

    iget v3, p1, Le/m/a/c/p1/h0/n;->a:I

    if-ne v2, v3, :cond_2

    iget-object v2, p0, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    iget-object v3, p1, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    .line 4
    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    iget-object v3, p1, Le/m/a/c/p1/h0/n;->c:Ljava/util/TreeSet;

    .line 5
    invoke-virtual {v2, v3}, Ljava/util/TreeSet;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    iget-object v2, p0, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    iget-object p1, p1, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    .line 6
    invoke-virtual {v2, p1}, Le/m/a/c/p1/h0/s;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v1

    :goto_0
    return v0

    :cond_3
    :goto_1
    return v1
.end method

.method public hashCode()I
    .locals 3

    .line 1
    iget v0, p0, Le/m/a/c/p1/h0/n;->a:I

    mul-int/lit8 v0, v0, 0x1f

    .line 2
    iget-object v1, p0, Le/m/a/c/p1/h0/n;->b:Ljava/lang/String;

    const/16 v2, 0x1f

    invoke-static {v1, v0, v2}, Le/d/c/a/a;->q2(Ljava/lang/String;II)I

    move-result v0

    .line 3
    iget-object v1, p0, Le/m/a/c/p1/h0/n;->d:Le/m/a/c/p1/h0/s;

    invoke-virtual {v1}, Le/m/a/c/p1/h0/s;->hashCode()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method
