.class Lorg/joda/time/y/v;
.super Lorg/joda/time/a0/d;
.source "SourceFile"


# static fields
.field static final c:Lorg/joda/time/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/joda/time/y/v;

    invoke-direct {v0}, Lorg/joda/time/y/v;-><init>()V

    sput-object v0, Lorg/joda/time/y/v;->c:Lorg/joda/time/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .line 1
    invoke-static {}, Lorg/joda/time/y/t;->R0()Lorg/joda/time/y/t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/y/a;->O()Lorg/joda/time/c;

    move-result-object v0

    invoke-static {}, Lorg/joda/time/d;->W()Lorg/joda/time/d;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lorg/joda/time/a0/d;-><init>(Lorg/joda/time/c;Lorg/joda/time/d;)V

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->A(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public B(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->B(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(J)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->C(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public G(JI)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/y/v;->o()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p3, v1, v0}, Lorg/joda/time/a0/h;->i(Lorg/joda/time/c;III)V

    .line 2
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result v0

    if-gez v0, :cond_0

    neg-int p3, p3

    .line 3
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lorg/joda/time/a0/d;->G(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3}, Lorg/joda/time/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lorg/joda/time/c;->c(J)I

    move-result p1

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    return p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0, p1, p2, p3, p4}, Lorg/joda/time/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public o()I
    .locals 1

    .line 1
    invoke-virtual {p0}, Lorg/joda/time/a0/d;->M()Lorg/joda/time/c;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/c;->o()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public w()Lorg/joda/time/h;
    .locals 1

    .line 1
    invoke-static {}, Lorg/joda/time/y/t;->R0()Lorg/joda/time/y/t;

    move-result-object v0

    invoke-virtual {v0}, Lorg/joda/time/y/a;->j()Lorg/joda/time/h;

    move-result-object v0

    return-object v0
.end method
