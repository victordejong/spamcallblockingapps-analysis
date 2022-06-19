.class public final Lw3/b/a/r;
.super Lw3/b/a/e0/g;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/b0;
.implements Ljava/io/Serializable;


# static fields
.field public static final c:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Lw3/b/a/k;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final a:J

.field public final b:Lw3/b/a/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Lw3/b/a/r;

    const/4 v1, 0x0

    invoke-direct {v0, v1, v1, v1, v1}, Lw3/b/a/r;-><init>(IIII)V

    .line 2
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lw3/b/a/r;->c:Ljava/util/Set;

    .line 3
    sget-object v1, Lw3/b/a/k;->m:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lw3/b/a/k;->l:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lw3/b/a/k;->k:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lw3/b/a/k;->j:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 13
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 14
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/r;-><init>(JLw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(IIII)V
    .locals 8

    .line 1
    sget-object v0, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 2
    invoke-direct {p0}, Lw3/b/a/e0/g;-><init>()V

    .line 3
    invoke-static {v0}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v0

    const-wide/16 v2, 0x0

    move-object v1, v0

    move v4, p1

    move v5, p2

    move v6, p3

    move v7, p4

    .line 4
    invoke-virtual/range {v1 .. v7}, Lw3/b/a/a;->r(JIIII)J

    move-result-wide p1

    .line 5
    iput-object v0, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    .line 6
    iput-wide p1, p0, Lw3/b/a/r;->a:J

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
    invoke-virtual {p3}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object p3

    .line 11
    invoke-virtual {p3}, Lw3/b/a/a;->z()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    int-to-long p1, p1

    iput-wide p1, p0, Lw3/b/a/r;->a:J

    .line 12
    iput-object p3, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    return-void
.end method

.method public static f(Ljava/lang/String;)Lw3/b/a/r;
    .locals 3
    .annotation runtime Lorg/joda/convert/FromString;
    .end annotation

    .line 1
    sget-object v0, Lw3/b/a/i0/i;->d0:Lw3/b/a/i0/b;

    .line 2
    invoke-virtual {v0, p0}, Lw3/b/a/i0/b;->c(Ljava/lang/String;)Lw3/b/a/q;

    move-result-object p0

    .line 3
    new-instance v0, Lw3/b/a/r;

    .line 4
    iget-wide v1, p0, Lw3/b/a/q;->a:J

    .line 5
    iget-object p0, p0, Lw3/b/a/q;->b:Lw3/b/a/a;

    .line 6
    invoke-direct {v0, v1, v2, p0}, Lw3/b/a/r;-><init>(JLw3/b/a/a;)V

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/r;

    iget-wide v1, p0, Lw3/b/a/r;->a:J

    .line 3
    sget-object v3, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/r;-><init>(JLw3/b/a/a;)V

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
    new-instance v0, Lw3/b/a/r;

    iget-wide v1, p0, Lw3/b/a/r;->a:J

    iget-object v3, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    invoke-virtual {v3}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/r;-><init>(JLw3/b/a/a;)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public G0(Lw3/b/a/d;)Z
    .locals 2

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lw3/b/a/d;->a()Lw3/b/a/k;

    move-result-object v1

    invoke-virtual {p0, v1}, Lw3/b/a/r;->e(Lw3/b/a/k;)Z

    move-result v1

    if-nez v1, :cond_1

    return v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lw3/b/a/d;->c()Lw3/b/a/k;

    move-result-object p1

    .line 3
    invoke-virtual {p0, p1}, Lw3/b/a/r;->e(Lw3/b/a/k;)Z

    move-result v1

    if-nez v1, :cond_2

    sget-object v1, Lw3/b/a/k;->h:Lw3/b/a/k;

    if-ne p1, v1, :cond_3

    :cond_2
    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method public L0(Lw3/b/a/d;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lw3/b/a/r;->G0(Lw3/b/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    .line 3
    invoke-virtual {p1, v0}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p1

    .line 4
    iget-wide v0, p0, Lw3/b/a/r;->a:J

    .line 5
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1

    .line 6
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Field \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p1, "\' is not supported"

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_1
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
    instance-of v1, p1, Lw3/b/a/r;

    if-eqz v1, :cond_3

    .line 2
    move-object v1, p1

    check-cast v1, Lw3/b/a/r;

    .line 3
    iget-object v2, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    iget-object v3, v1, Lw3/b/a/r;->b:Lw3/b/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-wide v2, p0, Lw3/b/a/r;->a:J

    iget-wide v4, v1, Lw3/b/a/r;->a:J

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
    invoke-virtual {p2}, Lw3/b/a/a;->A()Lw3/b/a/c;

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
    invoke-virtual {p2}, Lw3/b/a/a;->H()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
    invoke-virtual {p2}, Lw3/b/a/a;->C()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 5
    :cond_3
    invoke-virtual {p2}, Lw3/b/a/a;->v()Lw3/b/a/c;

    move-result-object p1

    return-object p1
.end method

.method public e(Lw3/b/a/k;)Z
    .locals 6

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    iget-object v1, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {p1, v1}, Lw3/b/a/k;->a(Lw3/b/a/a;)Lw3/b/a/j;

    move-result-object v1

    .line 3
    sget-object v2, Lw3/b/a/r;->c:Ljava/util/Set;

    invoke-interface {v2, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-nez p1, :cond_2

    invoke-virtual {v1}, Lw3/b/a/j;->g()J

    move-result-wide v2

    .line 4
    iget-object p1, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    .line 5
    invoke-virtual {p1}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object p1

    invoke-virtual {p1}, Lw3/b/a/j;->g()J

    move-result-wide v4

    cmp-long p1, v2, v4

    if-gez p1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {v1}, Lw3/b/a/j;->i()Z

    move-result p1

    return p1
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 6

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 1
    :cond_0
    instance-of v1, p1, Lw3/b/a/r;

    if-eqz v1, :cond_2

    .line 2
    move-object v1, p1

    check-cast v1, Lw3/b/a/r;

    .line 3
    iget-object v2, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    iget-object v3, v1, Lw3/b/a/r;->b:Lw3/b/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-wide v2, p0, Lw3/b/a/r;->a:J

    iget-wide v4, v1, Lw3/b/a/r;->a:J

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

.method public g(Ljava/lang/String;Ljava/util/Locale;)Ljava/lang/String;
    .locals 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lw3/b/a/i0/a;->a(Ljava/lang/String;)Lw3/b/a/i0/b;

    move-result-object p1

    .line 2
    iget-object v0, p1, Lw3/b/a/i0/b;->c:Ljava/util/Locale;

    if-eq p2, v0, :cond_1

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    new-instance v0, Lw3/b/a/i0/b;

    iget-object v2, p1, Lw3/b/a/i0/b;->a:Lw3/b/a/i0/l;

    iget-object v3, p1, Lw3/b/a/i0/b;->b:Lw3/b/a/i0/j;

    iget-boolean v5, p1, Lw3/b/a/i0/b;->d:Z

    iget-object v6, p1, Lw3/b/a/i0/b;->e:Lw3/b/a/a;

    iget-object v7, p1, Lw3/b/a/i0/b;->f:Lw3/b/a/g;

    iget-object v8, p1, Lw3/b/a/i0/b;->g:Ljava/lang/Integer;

    iget v9, p1, Lw3/b/a/i0/b;->h:I

    move-object v1, v0

    move-object v4, p2

    invoke-direct/range {v1 .. v9}, Lw3/b/a/i0/b;-><init>(Lw3/b/a/i0/l;Lw3/b/a/i0/j;Ljava/util/Locale;ZLw3/b/a/a;Lw3/b/a/g;Ljava/lang/Integer;I)V

    move-object p1, v0

    .line 5
    :cond_1
    :goto_0
    invoke-virtual {p1, p0}, Lw3/b/a/i0/b;->g(Lw3/b/a/b0;)Ljava/lang/String;

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
    iget-object p1, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {p1}, Lw3/b/a/a;->A()Lw3/b/a/c;

    move-result-object p1

    .line 3
    iget-wide v0, p0, Lw3/b/a/r;->a:J

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
    iget-object p1, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    .line 7
    invoke-virtual {p1}, Lw3/b/a/a;->H()Lw3/b/a/c;

    move-result-object p1

    .line 8
    iget-wide v0, p0, Lw3/b/a/r;->a:J

    .line 9
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1

    .line 10
    :cond_2
    iget-object p1, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    .line 11
    invoke-virtual {p1}, Lw3/b/a/a;->C()Lw3/b/a/c;

    move-result-object p1

    .line 12
    iget-wide v0, p0, Lw3/b/a/r;->a:J

    .line 13
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1

    .line 14
    :cond_3
    iget-object p1, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

    .line 15
    invoke-virtual {p1}, Lw3/b/a/a;->v()Lw3/b/a/c;

    move-result-object p1

    .line 16
    iget-wide v0, p0, Lw3/b/a/r;->a:J

    .line 17
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1
.end method

.method public l()Lw3/b/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/r;->b:Lw3/b/a/a;

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
    sget-object v0, Lw3/b/a/i0/i;->A:Lw3/b/a/i0/b;

    .line 2
    invoke-virtual {v0, p0}, Lw3/b/a/i0/b;->g(Lw3/b/a/b0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
