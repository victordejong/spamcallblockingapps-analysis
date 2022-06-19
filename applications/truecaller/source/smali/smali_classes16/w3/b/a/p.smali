.class public final Lw3/b/a/p;
.super Lw3/b/a/e0/g;
.source "SourceFile"

# interfaces
.implements Lw3/b/a/b0;
.implements Ljava/io/Serializable;


# static fields
.field public static final d:Ljava/util/Set;
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

.field public transient c:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lw3/b/a/p;->d:Ljava/util/Set;

    .line 2
    sget-object v1, Lw3/b/a/k;->h:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 3
    sget-object v1, Lw3/b/a/k;->g:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 4
    sget-object v1, Lw3/b/a/k;->f:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 5
    sget-object v1, Lw3/b/a/k;->d:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 6
    sget-object v1, Lw3/b/a/k;->e:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 7
    sget-object v1, Lw3/b/a/k;->c:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 8
    sget-object v1, Lw3/b/a/k;->b:Lw3/b/a/k;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public constructor <init>()V
    .locals 3

    .line 24
    sget-object v0, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 25
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v2

    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(III)V
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 2
    invoke-direct {p0}, Lw3/b/a/e0/g;-><init>()V

    .line 3
    invoke-static {v0}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v0

    const/4 v1, 0x0

    .line 4
    invoke-virtual {v0, p1, p2, p3, v1}, Lw3/b/a/a;->p(IIII)J

    move-result-wide p1

    .line 5
    iput-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 6
    iput-wide p1, p0, Lw3/b/a/p;->a:J

    return-void
.end method

.method public constructor <init>(J)V
    .locals 1

    .line 7
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V

    return-void
.end method

.method public constructor <init>(JLw3/b/a/a;)V
    .locals 2

    .line 8
    invoke-direct {p0}, Lw3/b/a/e0/g;-><init>()V

    .line 9
    invoke-static {p3}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object p3

    .line 10
    invoke-virtual {p3}, Lw3/b/a/a;->s()Lw3/b/a/g;

    move-result-object v0

    sget-object v1, Lw3/b/a/g;->b:Lw3/b/a/g;

    invoke-virtual {v0, v1, p1, p2}, Lw3/b/a/g;->j(Lw3/b/a/g;J)J

    move-result-wide p1

    .line 11
    invoke-virtual {p3}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object p3

    .line 12
    invoke-virtual {p3}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    iput-wide p1, p0, Lw3/b/a/p;->a:J

    .line 13
    iput-object p3, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 5

    .line 14
    invoke-direct {p0}, Lw3/b/a/e0/g;-><init>()V

    .line 15
    invoke-static {}, Lw3/b/a/g0/d;->a()Lw3/b/a/g0/d;

    move-result-object v0

    .line 16
    iget-object v0, v0, Lw3/b/a/g0/d;->b:Lw3/b/a/g0/e;

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move-object v2, v1

    goto :goto_0

    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Lw3/b/a/g0/e;->b(Ljava/lang/Class;)Lw3/b/a/g0/c;

    move-result-object v0

    check-cast v0, Lw3/b/a/g0/j;

    if-eqz v0, :cond_1

    .line 17
    invoke-interface {v0, p1, v1}, Lw3/b/a/g0/j;->a(Ljava/lang/Object;Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v1

    .line 18
    invoke-static {v1}, Lw3/b/a/e;->a(Lw3/b/a/a;)Lw3/b/a/a;

    move-result-object v1

    .line 19
    invoke-virtual {v1}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v2

    iput-object v2, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 20
    sget-object v3, Lw3/b/a/i0/i;->b0:Lw3/b/a/i0/b;

    .line 21
    invoke-interface {v0, p0, p1, v1, v3}, Lw3/b/a/g0/j;->d(Lw3/b/a/b0;Ljava/lang/Object;Lw3/b/a/a;Lw3/b/a/i0/b;)[I

    move-result-object p1

    const/4 v0, 0x0

    .line 22
    aget v1, p1, v0

    const/4 v3, 0x1

    aget v3, p1, v3

    const/4 v4, 0x2

    aget p1, p1, v4

    invoke-virtual {v2, v1, v3, p1, v0}, Lw3/b/a/a;->p(IIII)J

    move-result-wide v0

    iput-wide v0, p0, Lw3/b/a/p;->a:J

    return-void

    .line 23
    :cond_1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "No partial converter found for type: "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-nez p1, :cond_2

    const-string p1, "null"

    goto :goto_1

    :cond_2
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    :goto_1
    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static e(Ljava/util/Date;)Lw3/b/a/p;
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/util/Date;->getTime()J

    move-result-wide v0

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    const/4 v1, 0x1

    if-gez v0, :cond_1

    .line 2
    new-instance v0, Ljava/util/GregorianCalendar;

    invoke-direct {v0}, Ljava/util/GregorianCalendar;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Ljava/util/GregorianCalendar;->setTime(Ljava/util/Date;)V

    const/4 p0, 0x0

    .line 4
    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    .line 5
    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v2

    .line 6
    new-instance v3, Lw3/b/a/p;

    if-ne p0, v1, :cond_0

    goto :goto_0

    :cond_0
    rsub-int/lit8 v2, v2, 0x1

    :goto_0
    const/4 p0, 0x2

    invoke-virtual {v0, p0}, Ljava/util/Calendar;->get(I)I

    move-result p0

    add-int/2addr p0, v1

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    invoke-direct {v3, v2, p0, v0}, Lw3/b/a/p;-><init>(III)V

    return-object v3

    .line 7
    :cond_1
    new-instance v0, Lw3/b/a/p;

    invoke-virtual {p0}, Ljava/util/Date;->getYear()I

    move-result v2

    add-int/lit16 v2, v2, 0x76c

    invoke-virtual {p0}, Ljava/util/Date;->getMonth()I

    move-result v3

    add-int/2addr v3, v1

    invoke-virtual {p0}, Ljava/util/Date;->getDate()I

    move-result p0

    invoke-direct {v0, v2, v3, p0}, Lw3/b/a/p;-><init>(III)V

    return-object v0
.end method

.method public static h()Lw3/b/a/p;
    .locals 4

    .line 1
    new-instance v0, Lw3/b/a/p;

    .line 2
    sget-object v1, Lw3/b/a/e;->a:Lw3/b/a/e$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    .line 3
    invoke-static {}, Lw3/b/a/f0/t;->Y()Lw3/b/a/f0/t;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V

    return-object v0
.end method

.method private readResolve()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lw3/b/a/p;

    iget-wide v1, p0, Lw3/b/a/p;->a:J

    .line 3
    sget-object v3, Lw3/b/a/f0/t;->Q:Lw3/b/a/f0/t;

    .line 4
    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V

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
    new-instance v0, Lw3/b/a/p;

    iget-wide v1, p0, Lw3/b/a/p;->a:J

    iget-object v3, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    invoke-virtual {v3}, Lw3/b/a/a;->Q()Lw3/b/a/a;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V

    return-object v0

    :cond_1
    return-object p0
.end method


# virtual methods
.method public G0(Lw3/b/a/d;)Z
    .locals 5

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 1
    :cond_0
    invoke-virtual {p1}, Lw3/b/a/d;->a()Lw3/b/a/k;

    move-result-object v1

    .line 2
    sget-object v2, Lw3/b/a/p;->d:Ljava/util/Set;

    invoke-interface {v2, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 3
    iget-object v2, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 4
    invoke-virtual {v1, v2}, Lw3/b/a/k;->a(Lw3/b/a/a;)Lw3/b/a/j;

    move-result-object v1

    invoke-virtual {v1}, Lw3/b/a/j;->g()J

    move-result-wide v1

    .line 5
    iget-object v3, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 6
    invoke-virtual {v3}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object v3

    invoke-virtual {v3}, Lw3/b/a/j;->g()J

    move-result-wide v3

    cmp-long v1, v1, v3

    if-ltz v1, :cond_1

    goto :goto_0

    :cond_1
    return v0

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 8
    invoke-virtual {p1, v0}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p1

    invoke-virtual {p1}, Lw3/b/a/c;->y()Z

    move-result p1

    return p1
.end method

.method public L0(Lw3/b/a/d;)I
    .locals 3

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p0, p1}, Lw3/b/a/p;->G0(Lw3/b/a/d;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 3
    invoke-virtual {p1, v0}, Lw3/b/a/d;->b(Lw3/b/a/a;)Lw3/b/a/c;

    move-result-object p1

    .line 4
    iget-wide v0, p0, Lw3/b/a/p;->a:J

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
    instance-of v1, p1, Lw3/b/a/p;

    if-eqz v1, :cond_3

    .line 2
    move-object v1, p1

    check-cast v1, Lw3/b/a/p;

    .line 3
    iget-object v2, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    iget-object v3, v1, Lw3/b/a/p;->b:Lw3/b/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 4
    iget-wide v2, p0, Lw3/b/a/p;->a:J

    iget-wide v4, v1, Lw3/b/a/p;->a:J

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

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    invoke-virtual {p2}, Lw3/b/a/a;->g()Lw3/b/a/c;

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
    invoke-virtual {p2}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object p1

    return-object p1

    .line 4
    :cond_2
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
    instance-of v1, p1, Lw3/b/a/p;

    if-eqz v1, :cond_2

    .line 2
    move-object v1, p1

    check-cast v1, Lw3/b/a/p;

    .line 3
    iget-object v2, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    iget-object v3, v1, Lw3/b/a/p;->b:Lw3/b/a/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iget-wide v2, p0, Lw3/b/a/p;->a:J

    iget-wide v4, v1, Lw3/b/a/p;->a:J

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

.method public f()I
    .locals 3

    .line 1
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->S()Lw3/b/a/c;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/p;->a:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lw3/b/a/c;->c(J)I

    move-result v0

    return v0
.end method

.method public g(I)Lw3/b/a/p;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/p;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->j(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/p;->n(J)Lw3/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public getValue(I)I
    .locals 2

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_1

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    .line 1
    iget-object p1, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {p1}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object p1

    .line 3
    iget-wide v0, p0, Lw3/b/a/p;->a:J

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
    iget-object p1, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 7
    invoke-virtual {p1}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object p1

    .line 8
    iget-wide v0, p0, Lw3/b/a/p;->a:J

    .line 9
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1

    .line 10
    :cond_2
    iget-object p1, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 11
    invoke-virtual {p1}, Lw3/b/a/a;->S()Lw3/b/a/c;

    move-result-object p1

    .line 12
    iget-wide v0, p0, Lw3/b/a/p;->a:J

    .line 13
    invoke-virtual {p1, v0, v1}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget v0, p0, Lw3/b/a/p;->c:I

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0}, Lw3/b/a/e0/g;->hashCode()I

    move-result v0

    iput v0, p0, Lw3/b/a/p;->c:I

    :cond_0
    return v0
.end method

.method public i(I)Lw3/b/a/p;
    .locals 3

    if-nez p1, :cond_0

    return-object p0

    .line 1
    :cond_0
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->j()Lw3/b/a/j;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/p;->a:J

    .line 4
    invoke-virtual {v0, v1, v2, p1}, Lw3/b/a/j;->a(JI)J

    move-result-wide v0

    .line 5
    invoke-virtual {p0, v0, v1}, Lw3/b/a/p;->n(J)Lw3/b/a/p;

    move-result-object p1

    return-object p1
.end method

.method public j()Ljava/util/Date;
    .locals 7

    .line 1
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object v0

    .line 3
    iget-wide v1, p0, Lw3/b/a/p;->a:J

    .line 4
    invoke-virtual {v0, v1, v2}, Lw3/b/a/c;->c(J)I

    move-result v0

    .line 5
    new-instance v1, Ljava/util/Date;

    invoke-virtual {p0}, Lw3/b/a/p;->f()I

    move-result v2

    add-int/lit16 v2, v2, -0x76c

    .line 6
    iget-object v3, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 7
    invoke-virtual {v3}, Lw3/b/a/a;->E()Lw3/b/a/c;

    move-result-object v3

    .line 8
    iget-wide v4, p0, Lw3/b/a/p;->a:J

    .line 9
    invoke-virtual {v3, v4, v5}, Lw3/b/a/c;->c(J)I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    .line 10
    invoke-direct {v1, v2, v3, v0}, Ljava/util/Date;-><init>(III)V

    .line 11
    invoke-static {v1}, Lw3/b/a/p;->e(Ljava/util/Date;)Lw3/b/a/p;

    move-result-object v2

    .line 12
    invoke-virtual {v2, p0}, Lw3/b/a/e0/g;->d(Lw3/b/a/b0;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 13
    :goto_0
    invoke-virtual {v2, p0}, Lw3/b/a/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 14
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v2

    const-wide/32 v4, 0x36ee80

    add-long/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/util/Date;->setTime(J)V

    .line 15
    invoke-static {v1}, Lw3/b/a/p;->e(Ljava/util/Date;)Lw3/b/a/p;

    move-result-object v2

    goto :goto_0

    .line 16
    :cond_0
    :goto_1
    invoke-virtual {v1}, Ljava/util/Date;->getDate()I

    move-result v2

    const-wide/16 v3, 0x3e8

    if-ne v2, v0, :cond_1

    .line 17
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    sub-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/util/Date;->setTime(J)V

    goto :goto_1

    .line 18
    :cond_1
    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v5

    add-long/2addr v5, v3

    invoke-virtual {v1, v5, v6}, Ljava/util/Date;->setTime(J)V

    goto :goto_2

    .line 19
    :cond_2
    invoke-virtual {v2, p0}, Lw3/b/a/p;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 20
    new-instance v2, Ljava/util/Date;

    invoke-virtual {v1}, Ljava/util/Date;->getTime()J

    move-result-wide v3

    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v5

    invoke-virtual {v5}, Ljava/util/TimeZone;->getDSTSavings()I

    move-result v5

    int-to-long v5, v5

    sub-long/2addr v3, v5

    invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V

    .line 21
    invoke-virtual {v2}, Ljava/util/Date;->getDate()I

    move-result v3

    if-ne v3, v0, :cond_3

    move-object v1, v2

    :cond_3
    :goto_2
    return-object v1
.end method

.method public l()Lw3/b/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    return-object v0
.end method

.method public m(Lw3/b/a/g;)Lw3/b/a/b;
    .locals 5

    .line 1
    invoke-static {p1}, Lw3/b/a/e;->d(Lw3/b/a/g;)Lw3/b/a/g;

    move-result-object p1

    .line 2
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 3
    invoke-virtual {v0, p1}, Lw3/b/a/a;->R(Lw3/b/a/g;)Lw3/b/a/a;

    move-result-object v0

    .line 4
    iget-wide v1, p0, Lw3/b/a/p;->a:J

    const-wide/32 v3, 0x1499700

    add-long/2addr v1, v3

    const/4 v3, 0x0

    .line 5
    invoke-virtual {p1, v1, v2, v3}, Lw3/b/a/g;->a(JZ)J

    move-result-wide v1

    .line 6
    invoke-virtual {v0}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object p1

    invoke-virtual {p1, v1, v2}, Lw3/b/a/c;->B(J)J

    move-result-wide v1

    .line 7
    new-instance p1, Lw3/b/a/b;

    invoke-direct {p1, v1, v2, v0}, Lw3/b/a/b;-><init>(JLw3/b/a/a;)V

    return-object p1
.end method

.method public n(J)Lw3/b/a/p;
    .locals 2

    .line 1
    iget-object v0, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    invoke-virtual {v0}, Lw3/b/a/a;->g()Lw3/b/a/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    .line 2
    iget-wide v0, p0, Lw3/b/a/p;->a:J

    cmp-long v0, p1, v0

    if-nez v0, :cond_0

    move-object v0, p0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Lw3/b/a/p;

    .line 4
    iget-object v1, p0, Lw3/b/a/p;->b:Lw3/b/a/a;

    .line 5
    invoke-direct {v0, p1, p2, v1}, Lw3/b/a/p;-><init>(JLw3/b/a/a;)V

    :goto_0
    return-object v0
.end method

.method public size()I
    .locals 1

    const/4 v0, 0x3

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1
    .annotation runtime Lorg/joda/convert/ToString;
    .end annotation

    .line 1
    sget-object v0, Lw3/b/a/i0/i;->o:Lw3/b/a/i0/b;

    .line 2
    invoke-virtual {v0, p0}, Lw3/b/a/i0/b;->g(Lw3/b/a/b0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
