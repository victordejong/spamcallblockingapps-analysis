.class public abstract Lw3/b/a/h0/b;
.super Lw3/b/a/c;
.source "SourceFile"


# instance fields
.field public final a:Lw3/b/a/d;


# direct methods
.method public constructor <init>(Lw3/b/a/d;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lw3/b/a/c;-><init>()V

    if-eqz p1, :cond_0

    .line 2
    iput-object p1, p0, Lw3/b/a/h0/b;->a:Lw3/b/a/d;

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
    .locals 3

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide v0

    cmp-long v2, v0, p1

    if-eqz v2, :cond_0

    const/4 p1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1, p1}, Lw3/b/a/h0/b;->a(JI)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public D(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 0

    .line 1
    invoke-virtual {p0, p3, p4}, Lw3/b/a/h0/b;->F(Ljava/lang/String;Ljava/util/Locale;)I

    move-result p3

    .line 2
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public F(Ljava/lang/String;Ljava/util/Locale;)I
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
    new-instance p2, Lw3/b/a/l;

    .line 3
    iget-object v0, p0, Lw3/b/a/h0/b;->a:Lw3/b/a/d;

    .line 4
    invoke-direct {p2, v0, p1}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/String;)V

    throw p2
.end method

.method public a(JI)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/j;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/j;->c(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/h0/b;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lw3/b/a/h0/b;->d(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final f(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/b;->a:Lw3/b/a/d;

    .line 2
    invoke-interface {p1, v0}, Lw3/b/a/b0;->L0(Lw3/b/a/d;)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lw3/b/a/h0/b;->d(ILjava/util/Locale;)Ljava/lang/String;

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

.method public final getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/b;->a:Lw3/b/a/d;

    .line 2
    iget-object v0, v0, Lw3/b/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    invoke-virtual {p0, p1, p3}, Lw3/b/a/h0/b;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public final i(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/b;->a:Lw3/b/a/d;

    .line 2
    invoke-interface {p1, v0}, Lw3/b/a/b0;->L0(Lw3/b/a/d;)I

    move-result p1

    .line 3
    invoke-virtual {p0, p1, p2}, Lw3/b/a/h0/b;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/j;->d(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/j;->e(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public m()Lw3/b/a/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lw3/b/a/c;->o()I

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
    invoke-virtual {p0}, Lw3/b/a/c;->o()I

    move-result p1

    return p1
.end method

.method public q(Lw3/b/a/b0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/c;->o()I

    move-result p1

    return p1
.end method

.method public r(Lw3/b/a/b0;[I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lw3/b/a/h0/b;->q(Lw3/b/a/b0;)I

    move-result p1

    return p1
.end method

.method public t(Lw3/b/a/b0;)I
    .locals 0

    .line 1
    invoke-virtual {p0}, Lw3/b/a/c;->s()I

    move-result p1

    return p1
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    const-string v0, "DateTimeField["

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lw3/b/a/h0/b;->a:Lw3/b/a/d;

    .line 3
    iget-object v1, v1, Lw3/b/a/d;->a:Ljava/lang/String;

    const/16 v2, 0x5d

    .line 4
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lw3/b/a/b0;[I)I
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lw3/b/a/h0/b;->t(Lw3/b/a/b0;)I

    move-result p1

    return p1
.end method

.method public final w()Lw3/b/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/b;->a:Lw3/b/a/d;

    return-object v0
.end method

.method public x(J)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method

.method public final y()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public z(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide v0

    sub-long/2addr p1, v0

    return-wide p1
.end method
