.class public Lw3/b/a/h0/f;
.super Lw3/b/a/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Lw3/b/a/c;

.field public final b:Lw3/b/a/j;

.field public final c:Lw3/b/a/d;


# direct methods
.method public constructor <init>(Lw3/b/a/c;Lw3/b/a/j;Lw3/b/a/d;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lw3/b/a/c;-><init>()V

    if-eqz p1, :cond_1

    .line 2
    iput-object p1, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    .line 3
    iput-object p2, p0, Lw3/b/a/h0/f;->b:Lw3/b/a/j;

    if-nez p3, :cond_0

    .line 4
    invoke-virtual {p1}, Lw3/b/a/c;->w()Lw3/b/a/d;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lw3/b/a/h0/f;->c:Lw3/b/a/d;

    return-void

    .line 5
    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "The field must not be null"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method


# virtual methods
.method public A(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->A(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public B(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public D(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->D(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    return p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->d(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->f(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->c:Lw3/b/a/d;

    .line 2
    iget-object v0, v0, Lw3/b/a/d;->a:Ljava/lang/String;

    return-object v0
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->i(Lw3/b/a/b0;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public l()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->l()Lw3/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public m()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->m()Lw3/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1}, Lw3/b/a/c;->n(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->o()I

    move-result v0

    return v0
.end method

.method public p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->p(J)I

    move-result p1

    return p1
.end method

.method public q(Lw3/b/a/b0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1}, Lw3/b/a/c;->q(Lw3/b/a/b0;)I

    move-result p1

    return p1
.end method

.method public r(Lw3/b/a/b0;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->r(Lw3/b/a/b0;[I)I

    move-result p1

    return p1
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->s()I

    move-result v0

    return v0
.end method

.method public t(Lw3/b/a/b0;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1}, Lw3/b/a/c;->t(Lw3/b/a/b0;)I

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
    iget-object v1, p0, Lw3/b/a/h0/f;->c:Lw3/b/a/d;

    .line 3
    iget-object v1, v1, Lw3/b/a/d;->a:Ljava/lang/String;

    const/16 v2, 0x5d

    .line 4
    invoke-static {v0, v1, v2}, Le/d/c/a/a;->e(Ljava/lang/StringBuilder;Ljava/lang/String;C)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lw3/b/a/b0;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->u(Lw3/b/a/b0;[I)I

    move-result p1

    return p1
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->b:Lw3/b/a/j;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->v()Lw3/b/a/j;

    move-result-object v0

    return-object v0
.end method

.method public w()Lw3/b/a/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->c:Lw3/b/a/d;

    return-object v0
.end method

.method public x(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->x(J)Z

    move-result p1

    return p1
.end method

.method public y()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0}, Lw3/b/a/c;->y()Z

    move-result v0

    return v0
.end method

.method public z(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/f;->a:Lw3/b/a/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->z(J)J

    move-result-wide p1

    return-wide p1
.end method
