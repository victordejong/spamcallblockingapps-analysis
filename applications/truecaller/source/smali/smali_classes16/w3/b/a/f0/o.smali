.class public final Lw3/b/a/f0/o;
.super Lw3/b/a/h0/b;
.source "SourceFile"


# instance fields
.field public final b:Lw3/b/a/f0/c;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/c;)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    invoke-direct {p0, v0}, Lw3/b/a/h0/b;-><init>(Lw3/b/a/d;)V

    .line 2
    iput-object p1, p0, Lw3/b/a/f0/o;->b:Lw3/b/a/f0/c;

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/o;->c(J)I

    move-result p1

    if-nez p1, :cond_0

    .line 2
    iget-object p1, p0, Lw3/b/a/f0/o;->b:Lw3/b/a/f0/c;

    const-wide/16 v0, 0x0

    const/4 p2, 0x1

    invoke-virtual {p1, v0, v1, p2}, Lw3/b/a/f0/c;->D0(JI)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide p1, 0x7fffffffffffffffL

    return-wide p1
.end method

.method public B(J)J
    .locals 2

    .line 1
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/o;->c(J)I

    move-result p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    .line 2
    iget-object p1, p0, Lw3/b/a/f0/o;->b:Lw3/b/a/f0/c;

    const-wide/16 v0, 0x0

    invoke-virtual {p1, v0, v1, p2}, Lw3/b/a/f0/c;->D0(JI)J

    move-result-wide p1

    return-wide p1

    :cond_0
    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method public C(JI)J
    .locals 2

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, p3, v0, v1}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    .line 2
    invoke-virtual {p0, p1, p2}, Lw3/b/a/f0/o;->c(J)I

    move-result v0

    if-eq v0, p3, :cond_0

    .line 3
    iget-object p3, p0, Lw3/b/a/f0/o;->b:Lw3/b/a/f0/c;

    invoke-virtual {p3, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result p3

    .line 4
    iget-object v0, p0, Lw3/b/a/f0/o;->b:Lw3/b/a/f0/c;

    neg-int p3, p3

    invoke-virtual {v0, p1, p2, p3}, Lw3/b/a/f0/c;->D0(JI)J

    move-result-wide p1

    :cond_0
    return-wide p1
.end method

.method public D(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 0

    .line 1
    invoke-static {p4}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p4

    .line 2
    iget-object p4, p4, Lw3/b/a/f0/p;->g:Ljava/util/TreeMap;

    invoke-virtual {p4, p3}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/Integer;

    if-eqz p4, :cond_0

    .line 3
    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 4
    invoke-virtual {p0, p1, p2, p3}, Lw3/b/a/f0/o;->C(JI)J

    move-result-wide p1

    return-wide p1

    .line 5
    :cond_0
    new-instance p1, Lw3/b/a/l;

    sget-object p2, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object p2, Lw3/b/a/d;->b:Lw3/b/a/d;

    invoke-direct {p1, p2, p3}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/String;)V

    throw p1
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/o;->b:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->w0(J)I

    move-result p1

    if-gtz p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lw3/b/a/f0/p;->a:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public l()Lw3/b/a/j;
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/k;->b:Lw3/b/a/k;

    invoke-static {v0}, Lw3/b/a/h0/s;->m(Lw3/b/a/k;)Lw3/b/a/h0/s;

    move-result-object v0

    return-object v0
.end method

.method public n(Ljava/util/Locale;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p1

    .line 2
    iget p1, p1, Lw3/b/a/f0/p;->j:I

    return p1
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
