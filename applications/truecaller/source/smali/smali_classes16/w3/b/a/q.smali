.class public final Lw3/b/a/q;
.super Lw3/b/a/e0/g;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/b0;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:J

.field public final b:Lw3/b/a/a;


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 12
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 13
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/q;-><init>(JLw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(IIIIIII)V
    .locals 10

    move-object v0, p0

    .line 1
    sget-object v1, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 2
    invoke-direct {p0}, Lw3/b/a/e0/g;-><init>()V

    .line 3
    invoke-static {v1}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v1

    invoke-virtual {v1}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v1

    move-object v2, v1

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    move/from16 v8, p6

    move/from16 v9, p7

    .line 4
    invoke-virtual/range {v2 .. v9}, Lw3/b/a/a;->q(IIIIIII)J

    move-result-wide v2

    .line 5
    iput-object v1, v0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 6
    iput-wide v2, v0, Lw3/b/a/q;->a:J

    return-void
.end method

.method public constructor <init>(JLw3/b/a/a;)V
    .locals 2

    .line 7
    invoke-direct {p0}, Lw3/b/a/e0/g;-><init>()V

    .line 8
    invoke-static {p3}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p3

    .line 9
    invoke-virtual {p3}, Lw3/b/a/a;->s()Lw3/b/a/g;

    move-result-object v0

    sget-object v1, Lw3/b/a/g;->b:Lw3/b/a/g;

    invoke-virtual {v0, v1, p1, p2}, Lw3/b/a/g;->j(Lw3/b/a/g;J)J

    move-result-wide p1

    .line 10
    iput-wide p1, p0, Lw3/b/a/q;->a:J

    .line 11
    invoke-virtual {p3}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object p1

    iput-object p1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    return-void
.end method

.method public static e(Ljava/util/Calendar;)Lw3/b/a/q;
    .locals 12

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 3
    new-instance v11, Lw3/b/a/q;

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v2, 0x1

    :goto_0
    move v4, v2

    const/4 v0, 0x2

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v0

    add-int/lit8 v5, v0, 0x1

    const/4 v0, 0x5

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v6

    const/16 v0, 0xb

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v7

    const/16 v0, 0xc

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v8

    const/16 v0, 0xd

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v9

    const/16 v0, 0xe

    invoke-virtual {p0, v0}, Ljava/util/Calendar;->get(I)I

    move-result v10

    move-object v3, v11

    invoke-direct/range {v3 .. v10}, Lw3/b/a/q;-><init>(IIIIIII)V

    return-object v11
.end method

.method public static g()Lw3/b/a/q;
    .locals 4

    .line 1
    new-instance v0, Lw3/b/a/q;

    .line 2
    sget-object v1, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/q;-><init>(JLw3/b/a/a;)V

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/q;

    iget-wide v1, p0, Lw3/b/a/q;->a:J

    .line 3
    sget-object v3, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/q;-><init>(JLw3/b/a/a;)V

    return-object v0

    .line 5
    :cond_0
    sget-object v1, Lw3/b/a/g;->b:Lw3/b/a/g;

    invoke-virtual {v0}, Lw3/b/a/a;->s()Lw3/b/a/g;

    move-result-object v0

    invoke-virtual {v1, v0}, Lw3/b/a/g;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 6
    new-instance v0, Lw3/b/a/q;

    iget-wide v1, p0, Lw3/b/a/q;->a:J

    iget-object v3, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    invoke-virtual {v3}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/q;-><init>(JLw3/b/a/a;)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public G0(Lw3/b/a/d;)Z
    .locals 1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {p1, v0}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lw3/b/a/c;->y()Z

    move-result p1

    return p1
.end method

.method public L0(Lw3/b/a/d;)I
    .locals 2

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {p1, v0}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p1

    .line 3
    iget-wide v0, p0, Lw3/b/a/q;->a:J

    .line 4
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The DateTimeFieldType must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public a(Lw3/b/a/b0;)I
    .locals 6

    const/4 v0, 0x0

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/q;

    if-eqz v1, :cond_3

    .line 2
    move-object v1, p1

    check-cast v1, Lw3/b/a/q;

    .line 3
    iget-object v2, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    iget-object v3, v1, Lw3/b/a/q;->b:Lw3/b/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-wide v2, p0, Lw3/b/a/q;->a:J

    iget-wide v4, v1, Lw3/b/a/q;->a:J

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    const/4 v0, -0x1

    goto :goto_0

    :cond_1
    cmp-long p1, v2, v4

    if-nez p1, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 5
    :cond_3
    invoke-super {p0, p1}, Lw3/b/a/e0/g;->a(Lw3/b/a/b0;)I

    move-result p1

    return p1
.end method

.method public c(ILw3/b/a/a;)Lw3/b/a/c;
    .locals 1

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Lw3/b/a/a;->z()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    new-instance p2, Ljava/lang/IndexOutOfBoundsException;

    const-string v0, "Invalid index: "

    invoke-static {v0, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw p2

    .line 3
    :cond_1
    invoke-virtual {p2}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p2}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    invoke-virtual {p2}, Lw3/b/a/a;->S()Lw3/b/a/c;

    move-result-object p1

    return-object p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/q;

    if-eqz v1, :cond_2

    .line 2
    move-object v1, p1

    check-cast v1, Lw3/b/a/q;

    .line 3
    iget-object v2, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    iget-object v3, v1, Lw3/b/a/q;->b:Lw3/b/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-wide v2, p0, Lw3/b/a/q;->a:J

    iget-wide v4, v1, Lw3/b/a/q;->a:J

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 5
    :cond_2
    invoke-super {p0, p1}, Lw3/b/a/e0/g;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public f(I)Lw3/b/a/q;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/q;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->j(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/q;->j(J)Lw3/b/a/q;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)I
    .locals 2

    if-eqz p1, :cond_3

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {p1}, Lw3/b/a/a;->z()Lw3/b/a/c;

    move-result-object p1

    .line 3
    iget-wide v0, p0, Lw3/b/a/q;->a:J

    .line 4
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1

    .line 5
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Invalid index: "

    invoke-static {v1, p1}, Le/d/c/a/a;->i2(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 6
    :cond_1
    iget-object p1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 7
    invoke-virtual {p1}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object p1

    .line 8
    iget-wide v0, p0, Lw3/b/a/q;->a:J

    .line 9
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1

    .line 10
    :cond_2
    iget-object p1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 11
    invoke-virtual {p1}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object p1

    .line 12
    iget-wide v0, p0, Lw3/b/a/q;->a:J

    .line 13
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1

    .line 14
    :cond_3
    iget-object p1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 15
    invoke-virtual {p1}, Lw3/b/a/a;->S()Lw3/b/a/c;

    move-result-object p1

    .line 16
    iget-wide v0, p0, Lw3/b/a/q;->a:J

    .line 17
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1
.end method

.method public h(I)Lw3/b/a/q;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/q;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/q;->j(J)Lw3/b/a/q;

    move-result-object p1

    return-object p1
.end method

.method public i()Lw3/b/a/b;
    .locals 13

    const/4 v0, 0x0

    .line 1
    invoke-static {v0}, Lw3/b/a/e;->d(Lw3/b/a/g;)Lw3/b/a/g;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    invoke-virtual {v1, v0}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v10

    .line 3
    new-instance v0, Lw3/b/a/b;

    .line 4
    iget-object v1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 5
    invoke-virtual {v1}, Lw3/b/a/a;->S()Lw3/b/a/c;

    move-result-object v1

    .line 6
    iget-wide v2, p0, Lw3/b/a/q;->a:J

    .line 7
    invoke-virtual {v1, v2, v3}, Lw3/b/a/c;->c(J)I

    move-result v3

    .line 8
    iget-object v1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 9
    invoke-virtual {v1}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object v1

    .line 10
    iget-wide v4, p0, Lw3/b/a/q;->a:J

    .line 11
    invoke-virtual {v1, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v4

    .line 12
    iget-object v1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 13
    invoke-virtual {v1}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object v1

    .line 14
    iget-wide v5, p0, Lw3/b/a/q;->a:J

    .line 15
    invoke-virtual {v1, v5, v6}, Lw3/b/a/c;->c(J)I

    move-result v5

    .line 16
    iget-object v1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 17
    invoke-virtual {v1}, Lw3/b/a/a;->v()Lw3/b/a/c;

    move-result-object v1

    .line 18
    iget-wide v6, p0, Lw3/b/a/q;->a:J

    .line 19
    invoke-virtual {v1, v6, v7}, Lw3/b/a/c;->c(J)I

    move-result v6

    .line 20
    iget-object v1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 21
    invoke-virtual {v1}, Lw3/b/a/a;->C()Lw3/b/a/c;

    move-result-object v1

    .line 22
    iget-wide v7, p0, Lw3/b/a/q;->a:J

    .line 23
    invoke-virtual {v1, v7, v8}, Lw3/b/a/c;->c(J)I

    move-result v7

    .line 24
    iget-object v1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 25
    invoke-virtual {v1}, Lw3/b/a/a;->H()Lw3/b/a/c;

    move-result-object v1

    .line 26
    iget-wide v8, p0, Lw3/b/a/q;->a:J

    .line 27
    invoke-virtual {v1, v8, v9}, Lw3/b/a/c;->c(J)I

    move-result v8

    .line 28
    iget-object v1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 29
    invoke-virtual {v1}, Lw3/b/a/a;->A()Lw3/b/a/c;

    move-result-object v1

    .line 30
    iget-wide v11, p0, Lw3/b/a/q;->a:J

    .line 31
    invoke-virtual {v1, v11, v12}, Lw3/b/a/c;->c(J)I

    move-result v9

    move-object v2, v0

    .line 32
    invoke-direct/range {v2 .. v10}, Lw3/b/a/b;-><init>(IIIIIIILw3/b/a/a;)V

    return-object v0
.end method

.method public j(J)Lw3/b/a/q;
    .locals 2

    .line 1
    iget-wide v0, p0, Lw3/b/a/q;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance v0, Lw3/b/a/q;

    .line 3
    iget-object v1, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 4
    invoke-direct {v0, p1, p2, v1}, Lw3/b/a/q;-><init>(JLw3/b/a/a;)V

    :goto_0
    return-object v0
.end method

.method public l()Lw3/b/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x4

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 1
    sget-object v0, Lw3/b/a/i0/i;->E:Lw3/b/a/i0/b;

    .line 2
    invoke-virtual {v0, p0}, Lw3/b/a/i0/b;->g(Lw3/b/a/b0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
