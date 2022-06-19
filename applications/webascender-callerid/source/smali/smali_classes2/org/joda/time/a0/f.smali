.class public Lorg/joda/time/a0/f;
.super Lorg/joda/time/c;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field private final f:Lorg/joda/time/c;

.field private final g:Lorg/joda/time/h;

.field private final h:Lorg/joda/time/d;


# direct methods
.method public constructor <init>(Lorg/joda/time/c;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lorg/joda/time/a0/f;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/d;)V
    .locals 1

    const/4 v0, 0x0

    .line 2
    invoke-direct {p0, p1, v0, p2}, Lorg/joda/time/a0/f;-><init>(Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/d;)V

    return-void
.end method

.method public constructor <init>(Lorg/joda/time/c;Lorg/joda/time/h;Lorg/joda/time/d;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Lorg/joda/time/c;-><init>()V

    if-eqz p1, :cond_1

    .line 4
    iput-object p1, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    .line 5
    iput-object p2, p0, Lorg/joda/time/a0/f;->g:Lorg/joda/time/h;

    if-nez p3, :cond_0

    .line 6
    invoke-virtual {p1}, Lorg/joda/time/c;->x()Lorg/joda/time/d;

    move-result-object p3

    :cond_0
    iput-object p3, p0, Lorg/joda/time/a0/f;->h:Lorg/joda/time/d;

    return-void

    .line 7
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
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->A(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public B(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->B(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public D(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->D(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public E(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->E(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public F(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->F(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public G(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public H(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->H(JLjava/lang/String;Ljava/util/Locale;)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p1

    return p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->d(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public e(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->e(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public f(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->f(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->g(ILjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public h(JLjava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->h(JLjava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public i(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->i(Lorg/joda/time/t;Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public l()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->l()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public m()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->m()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->n(Ljava/util/Locale;)I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->o()I

    move-result v0

    return v0
.end method

.method public p(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->p(J)I

    move-result p1

    return p1
.end method

.method public q(Lorg/joda/time/t;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->q(Lorg/joda/time/t;)I

    move-result p1

    return p1
.end method

.method public r(Lorg/joda/time/t;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->r(Lorg/joda/time/t;[I)I

    move-result p1

    return p1
.end method

.method public s()I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->s()I

    move-result v0

    return v0
.end method

.method public t(Lorg/joda/time/t;)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1}, Lorg/joda/time/c;->t(Lorg/joda/time/t;)I

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

    invoke-virtual {p0}, Lorg/joda/time/a0/f;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public u(Lorg/joda/time/t;[I)I
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->u(Lorg/joda/time/t;[I)I

    move-result p1

    return p1
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->h:Lorg/joda/time/d;

    invoke-virtual {v0}, Lorg/joda/time/d;->G()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->g:Lorg/joda/time/h;

    if-eqz v0, :cond_0

    return-object v0

    .line 2
    :cond_0
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->w()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method

.method public x()Lorg/joda/time/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->h:Lorg/joda/time/d;

    return-object v0
.end method

.method public y(J)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->y(J)Z

    move-result p1

    return p1
.end method

.method public z()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lorg/joda/time/a0/f;->f:Lorg/joda/time/c;

    invoke-virtual {v0}, Lorg/joda/time/c;->z()Z

    move-result v0

    return v0
.end method
