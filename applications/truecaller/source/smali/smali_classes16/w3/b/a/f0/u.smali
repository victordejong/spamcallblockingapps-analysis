.class public Lw3/b/a/f0/u;
.super Lw3/b/a/h0/d;
.source "SourceFile"


# static fields
.field public static final c:Lw3/b/a/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lw3/b/a/f0/u;

    invoke-direct {v0}, Lw3/b/a/f0/u;-><init>()V

    sput-object v0, Lw3/b/a/f0/u;->c:Lw3/b/a/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .line 1
    sget-object v0, Lw3/b/a/f0/s;->t0:Lw3/b/a/f0/s;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->K:Lw3/b/a/c;

    .line 3
    sget-object v1, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v1, Lw3/b/a/d;->c:Lw3/b/a/d;

    invoke-direct {p0, v0, v1}, Lw3/b/a/h0/d;-><init>(Lw3/b/a/c;Lw3/b/a/d;)V

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->A(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public B(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->B(J)J

    move-result-wide p1

    return-wide p1
.end method

.method public C(JI)J
    .locals 2

    .line 1
    invoke-virtual {p0}, Lw3/b/a/f0/u;->o()I

    move-result v0

    const/4 v1, 0x0

    invoke-static {p0, p3, v1, v0}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 3
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result v0

    if-gez v0, :cond_0

    neg-int p3, p3

    .line 4
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lw3/b/a/h0/d;->C(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public a(JI)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/c;->a(JI)J

    move-result-wide p1

    return-wide p1
.end method

.method public b(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->b(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->c(J)I

    move-result p1

    if-gez p1, :cond_0

    neg-int p1, p1

    :cond_0
    return p1
.end method

.method public j(JJ)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->j(JJ)I

    move-result p1

    return p1
.end method

.method public k(JJ)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2, p3, p4}, Lw3/b/a/c;->k(JJ)J

    move-result-wide p1

    return-wide p1
.end method

.method public o()I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0}, Lw3/b/a/c;->o()I

    move-result v0

    return v0
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/f0/s;->t0:Lw3/b/a/f0/s;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->n:Lw3/b/a/j;

    return-object v0
.end method

.method public z(J)J
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/h0/d;->b:Lw3/b/a/c;

    .line 2
    invoke-virtual {v0, p1, p2}, Lw3/b/a/c;->z(J)J

    move-result-wide p1

    return-wide p1
.end method
