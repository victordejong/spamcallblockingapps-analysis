.class public abstract Lorg/joda/time/a0/b;
.super Lorg/joda/time/c;
.source "SourceFile"


# instance fields
.field private final a:Lorg/joda/time/d;


# direct methods
.method protected constructor <init>(Lorg/joda/time/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/joda/time/c;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lorg/joda/time/a0/b;->a:Lorg/joda/time/d;

    return-void

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "The type must not be null"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method

.method public B(J)J
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lorg/joda/time/a0/b;->a(JI)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public D(J)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/a0/b;->B(J)J

    move-result-wide v2

    sub-long v4, p1, v0

    sub-long p1, v2, p1

    cmp-long v6, p1, v4

    if-gtz v6, :cond_0

    return-wide v2

    :cond_0
    return-wide v0
.end method

.method public E(J)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/a0/b;->B(J)J

    move-result-wide v2

    sub-long v4, p1, v0

    sub-long p1, v2, p1

    cmp-long v6, v4, p1

    if-gez v6, :cond_0

    return-wide v0

    :cond_0
    cmp-long v6, p1, v4

    if-gez v6, :cond_1

    return-wide v2

    .line 3
    :cond_1
    invoke-virtual {p0, v2, v3}, Lorg/joda/time/c;->c(J)I

    move-result p1

    and-int/lit8 p1, p1, 0x1

    if-nez p1, :cond_2

    return-wide v2

    :cond_2
    return-wide v0
.end method

.method public F(J)J
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide v0

    .line 2
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/a0/b;->B(J)J

    move-result-wide v2

    sub-long v4, p1, v0

    sub-long p1, v2, p1

    cmp-long v6, v4, p1

    if-gtz v6, :cond_0

    return-wide v0

    :cond_0
    return-wide v2
.end method

.method public H(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p4}, Lorg/joda/time/a0/b;->J(Ljava/lang/String;Ljava/util/Locale;)I

    move-result p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method protected J(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    return p1

    .line 2
    :catch_0
    new-instance p2, Lorg/joda/time/IllegalFieldValueException;

    invoke-virtual {p0}, Lorg/joda/time/a0/b;->x()Lorg/joda/time/d;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Lorg/joda/time/IllegalFieldValueException;-><init>(Lorg/joda/time/d;Ljava/lang/String;)V

    throw p2
.end method

.method public K(Lorg/joda/time/t;ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lorg/joda/time/a0/b;->d(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public L(Lorg/joda/time/t;ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p2, p3}, Lorg/joda/time/a0/b;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/h;->c(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/h;->d(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/a0/b;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lorg/joda/time/a0/b;->d(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/b;->x()Lorg/joda/time/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/t;->Y(Lorg/joda/time/d;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/joda/time/a0/b;->K(Lorg/joda/time/t;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lorg/joda/time/a0/b;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/b;->x()Lorg/joda/time/d;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/joda/time/t;->Y(Lorg/joda/time/d;)I

    move-result v0

    invoke-virtual {p0, p1, v0, p2}, Lorg/joda/time/a0/b;->L(Lorg/joda/time/t;ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/h;->h(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/h;->j(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()Lorg/joda/time/h;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/c;->o()I

    move-result p1

    if-ltz p1, :cond_2

    const/16 v0, 0xa

    if-ge p1, v0, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/16 v0, 0x64

    if-ge p1, v0, :cond_1

    const/4 p1, 0x2

    return p1

    :cond_1
    const/16 v0, 0x3e8

    if-ge p1, v0, :cond_2

    const/4 p1, 0x3

    return p1

    .line 2
    :cond_2
    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public p(J)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/c;->o()I

    move-result p1

    return p1
.end method

.method public q(Lorg/joda/time/t;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/c;->o()I

    move-result p1

    return p1
.end method

.method public r(Lorg/joda/time/t;[I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/a0/b;->q(Lorg/joda/time/t;)I

    move-result p1

    return p1
.end method

.method public t(Lorg/joda/time/t;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/c;->s()I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DateTimeField["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lorg/joda/time/a0/b;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lorg/joda/time/t;[I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lorg/joda/time/a0/b;->t(Lorg/joda/time/t;)I

    move-result p1

    return p1
.end method

.method public final v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/b;->a:Lorg/joda/time/d;

    invoke-virtual {v0}, Lorg/joda/time/d;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final x()Lorg/joda/time/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/b;->a:Lorg/joda/time/d;

    return-object v0
.end method

.method public y(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final z()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
