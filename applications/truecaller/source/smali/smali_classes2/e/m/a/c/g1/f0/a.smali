.class public final Le/m/a/c/g1/f0/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/m/a/c/g1/h;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/c/g1/f0/a$a;,
        Le/m/a/c/g1/f0/a$c;,
        Le/m/a/c/g1/f0/a$b;
    }
.end annotation


# instance fields
.field public a:Le/m/a/c/g1/i;

.field public b:Le/m/a/c/g1/s;

.field public c:Le/m/a/c/g1/f0/a$b;

.field public d:I

.field public e:J


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Le/m/a/c/g1/f0/a;->d:I

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Le/m/a/c/g1/f0/a;->e:J

    return-void
.end method


# virtual methods
.method public a(JJ)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/m/a/c/g1/f0/a;->c:Le/m/a/c/g1/f0/a$b;

    if-eqz p1, :cond_0

    .line 2
    invoke-interface {p1, p3, p4}, Le/m/a/c/g1/f0/a$b;->c(J)V

    :cond_0
    return-void
.end method

.method public d(Le/m/a/c/g1/e;Le/m/a/c/g1/p;)I
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    iget-object p2, p0, Le/m/a/c/g1/f0/a;->b:Le/m/a/c/g1/s;

    invoke-static {p2}, Ln3/g0/y;->z(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    sget p2, Le/m/a/c/q1/d0;->a:I

    .line 3
    iget-object p2, p0, Le/m/a/c/g1/f0/a;->c:Le/m/a/c/g1/f0/a$b;

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-nez p2, :cond_8

    .line 4
    invoke-static {p1}, Ln3/g0/y;->z1(Le/m/a/c/g1/e;)Le/m/a/c/g1/f0/b;

    move-result-object v5

    if-eqz v5, :cond_7

    .line 5
    iget p2, v5, Le/m/a/c/g1/f0/b;->a:I

    const/16 v2, 0x11

    if-ne p2, v2, :cond_0

    .line 6
    new-instance p2, Le/m/a/c/g1/f0/a$a;

    iget-object v2, p0, Le/m/a/c/g1/f0/a;->a:Le/m/a/c/g1/i;

    iget-object v3, p0, Le/m/a/c/g1/f0/a;->b:Le/m/a/c/g1/s;

    invoke-direct {p2, v2, v3, v5}, Le/m/a/c/g1/f0/a$a;-><init>(Le/m/a/c/g1/i;Le/m/a/c/g1/s;Le/m/a/c/g1/f0/b;)V

    iput-object p2, p0, Le/m/a/c/g1/f0/a;->c:Le/m/a/c/g1/f0/a$b;

    goto/16 :goto_2

    :cond_0
    const/4 v2, 0x6

    if-ne p2, v2, :cond_1

    .line 7
    new-instance p2, Le/m/a/c/g1/f0/a$c;

    iget-object v3, p0, Le/m/a/c/g1/f0/a;->a:Le/m/a/c/g1/i;

    iget-object v4, p0, Le/m/a/c/g1/f0/a;->b:Le/m/a/c/g1/s;

    const/4 v7, -0x1

    const-string v6, "audio/g711-alaw"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Le/m/a/c/g1/f0/a$c;-><init>(Le/m/a/c/g1/i;Le/m/a/c/g1/s;Le/m/a/c/g1/f0/b;Ljava/lang/String;I)V

    iput-object p2, p0, Le/m/a/c/g1/f0/a;->c:Le/m/a/c/g1/f0/a$b;

    goto :goto_2

    :cond_1
    const/4 v2, 0x7

    if-ne p2, v2, :cond_2

    .line 8
    new-instance p2, Le/m/a/c/g1/f0/a$c;

    iget-object v3, p0, Le/m/a/c/g1/f0/a;->a:Le/m/a/c/g1/i;

    iget-object v4, p0, Le/m/a/c/g1/f0/a;->b:Le/m/a/c/g1/s;

    const/4 v7, -0x1

    const-string v6, "audio/g711-mlaw"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Le/m/a/c/g1/f0/a$c;-><init>(Le/m/a/c/g1/i;Le/m/a/c/g1/s;Le/m/a/c/g1/f0/b;Ljava/lang/String;I)V

    iput-object p2, p0, Le/m/a/c/g1/f0/a;->c:Le/m/a/c/g1/f0/a$b;

    goto :goto_2

    .line 9
    :cond_2
    iget v2, v5, Le/m/a/c/g1/f0/b;->e:I

    if-eq p2, v0, :cond_5

    const/4 v3, 0x3

    if-eq p2, v3, :cond_3

    const v3, 0xfffe

    if-eq p2, v3, :cond_5

    move v7, v1

    goto :goto_1

    :cond_3
    const/16 p2, 0x20

    if-ne v2, p2, :cond_4

    const/4 p2, 0x4

    goto :goto_0

    :cond_4
    move p2, v1

    goto :goto_0

    .line 10
    :cond_5
    invoke-static {v2}, Le/m/a/c/q1/d0;->l(I)I

    move-result p2

    :goto_0
    move v7, p2

    :goto_1
    if-eqz v7, :cond_6

    .line 11
    new-instance p2, Le/m/a/c/g1/f0/a$c;

    iget-object v3, p0, Le/m/a/c/g1/f0/a;->a:Le/m/a/c/g1/i;

    iget-object v4, p0, Le/m/a/c/g1/f0/a;->b:Le/m/a/c/g1/s;

    const-string v6, "audio/raw"

    move-object v2, p2

    invoke-direct/range {v2 .. v7}, Le/m/a/c/g1/f0/a$c;-><init>(Le/m/a/c/g1/i;Le/m/a/c/g1/s;Le/m/a/c/g1/f0/b;Ljava/lang/String;I)V

    iput-object p2, p0, Le/m/a/c/g1/f0/a;->c:Le/m/a/c/g1/f0/a$b;

    goto :goto_2

    .line 12
    :cond_6
    new-instance p1, Le/m/a/c/m0;

    const-string p2, "Unsupported WAV format type: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, v5, Le/m/a/c/g1/f0/b;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 13
    :cond_7
    new-instance p1, Le/m/a/c/m0;

    const-string p2, "Unsupported or unrecognized wav header."

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 14
    :cond_8
    :goto_2
    iget p2, p0, Le/m/a/c/g1/f0/a;->d:I

    const-wide/16 v2, -0x1

    const/4 v4, -0x1

    if-ne p2, v4, :cond_d

    .line 15
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 16
    iput v1, p1, Le/m/a/c/g1/e;->f:I

    .line 17
    new-instance p2, Le/m/a/c/q1/t;

    const/16 v5, 0x8

    invoke-direct {p2, v5}, Le/m/a/c/q1/t;-><init>(I)V

    .line 18
    invoke-static {p1, p2}, Le/m/a/c/g1/f0/c;->a(Le/m/a/c/g1/e;Le/m/a/c/q1/t;)Le/m/a/c/g1/f0/c;

    move-result-object v6

    .line 19
    :goto_3
    iget v7, v6, Le/m/a/c/g1/f0/c;->a:I

    const v8, 0x64617461

    if-eq v7, v8, :cond_b

    const v8, 0x52494646

    const-wide/16 v9, 0x8

    .line 20
    iget-wide v11, v6, Le/m/a/c/g1/f0/c;->b:J

    add-long/2addr v11, v9

    if-ne v7, v8, :cond_9

    const-wide/16 v11, 0xc

    :cond_9
    const-wide/32 v7, 0x7fffffff

    cmp-long v7, v11, v7

    if-gtz v7, :cond_a

    long-to-int v6, v11

    .line 21
    invoke-virtual {p1, v6}, Le/m/a/c/g1/e;->i(I)V

    .line 22
    invoke-static {p1, p2}, Le/m/a/c/g1/f0/c;->a(Le/m/a/c/g1/e;Le/m/a/c/q1/t;)Le/m/a/c/g1/f0/c;

    move-result-object v6

    goto :goto_3

    .line 23
    :cond_a
    new-instance p1, Le/m/a/c/m0;

    const-string p2, "Chunk is too large (~2GB+) to skip; id: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget v0, v6, Le/m/a/c/g1/f0/c;->a:I

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Le/m/a/c/m0;-><init>(Ljava/lang/String;)V

    throw p1

    .line 24
    :cond_b
    invoke-virtual {p1, v5}, Le/m/a/c/g1/e;->i(I)V

    .line 25
    iget-wide v7, p1, Le/m/a/c/g1/e;->d:J

    .line 26
    iget-wide v5, v6, Le/m/a/c/g1/f0/c;->b:J

    add-long/2addr v5, v7

    .line 27
    iget-wide v9, p1, Le/m/a/c/g1/e;->c:J

    cmp-long p2, v9, v2

    if-eqz p2, :cond_c

    cmp-long p2, v5, v9

    if-lez p2, :cond_c

    move-wide v5, v9

    .line 28
    :cond_c
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-static {p2, v5}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object p2

    .line 29
    iget-object v5, p2, Landroid/util/Pair;->first:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Long;

    invoke-virtual {v5}, Ljava/lang/Long;->intValue()I

    move-result v5

    iput v5, p0, Le/m/a/c/g1/f0/a;->d:I

    .line 30
    iget-object p2, p2, Landroid/util/Pair;->second:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Long;

    invoke-virtual {p2}, Ljava/lang/Long;->longValue()J

    move-result-wide v5

    iput-wide v5, p0, Le/m/a/c/g1/f0/a;->e:J

    .line 31
    iget-object p2, p0, Le/m/a/c/g1/f0/a;->c:Le/m/a/c/g1/f0/a$b;

    iget v7, p0, Le/m/a/c/g1/f0/a;->d:I

    invoke-interface {p2, v7, v5, v6}, Le/m/a/c/g1/f0/a$b;->b(IJ)V

    goto :goto_4

    .line 32
    :cond_d
    iget-wide v5, p1, Le/m/a/c/g1/e;->d:J

    const-wide/16 v7, 0x0

    cmp-long v5, v5, v7

    if-nez v5, :cond_e

    .line 33
    invoke-virtual {p1, p2}, Le/m/a/c/g1/e;->i(I)V

    .line 34
    :cond_e
    :goto_4
    iget-wide v5, p0, Le/m/a/c/g1/f0/a;->e:J

    cmp-long p2, v5, v2

    if-eqz p2, :cond_f

    goto :goto_5

    :cond_f
    move v0, v1

    :goto_5
    invoke-static {v0}, Ln3/g0/y;->x(Z)V

    .line 35
    iget-wide v2, p0, Le/m/a/c/g1/f0/a;->e:J

    .line 36
    iget-wide v5, p1, Le/m/a/c/g1/e;->d:J

    sub-long/2addr v2, v5

    .line 37
    iget-object p2, p0, Le/m/a/c/g1/f0/a;->c:Le/m/a/c/g1/f0/a$b;

    invoke-interface {p2, p1, v2, v3}, Le/m/a/c/g1/f0/a$b;->a(Le/m/a/c/g1/e;J)Z

    move-result p1

    if-eqz p1, :cond_10

    move v1, v4

    :cond_10
    return v1
.end method

.method public h(Le/m/a/c/g1/i;)V
    .locals 2

    .line 1
    iput-object p1, p0, Le/m/a/c/g1/f0/a;->a:Le/m/a/c/g1/i;

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-interface {p1, v0, v1}, Le/m/a/c/g1/i;->i(II)Le/m/a/c/g1/s;

    move-result-object v0

    iput-object v0, p0, Le/m/a/c/g1/f0/a;->b:Le/m/a/c/g1/s;

    .line 3
    invoke-interface {p1}, Le/m/a/c/g1/i;->g()V

    return-void
.end method

.method public i(Le/m/a/c/g1/e;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Ljava/lang/InterruptedException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Ln3/g0/y;->z1(Le/m/a/c/g1/e;)Le/m/a/c/g1/f0/b;

    move-result-object p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public release()V
    .locals 0

    return-void
.end method
