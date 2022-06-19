.class public final Lw3/b/a/f0/g;
.super Lw3/b/a/h0/b;
.source "SourceFile"


# instance fields
.field public final b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    invoke-direct {p0, v0}, Lw3/b/a/h0/b;-><init>(Lw3/b/a/d;)V

    .line 2
    iput-object p1, p0, Lw3/b/a/f0/g;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(J)J
    .locals 0

    const-wide p1, 0x7fffffffffffffffL

    return-wide p1
.end method

.method public B(J)J
    .locals 0

    const-wide/high16 p1, -0x8000000000000000L

    return-wide p1
.end method

.method public C(JI)J
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-static {p0, p3, v0, v0}, Ls1/a/a/a/v0/f/d;->Y3(Lw3/b/a/c;III)V

    return-wide p1
.end method

.method public D(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 0

    .line 1
    iget-object p4, p0, Lw3/b/a/f0/g;->b:Ljava/lang/String;

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_1

    const-string p4, "1"

    invoke-virtual {p4, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p4

    if-eqz p4, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Lw3/b/a/l;

    sget-object p2, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object p2, Lw3/b/a/d;->b:Lw3/b/a/d;

    invoke-direct {p1, p2, p3}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-wide p1
.end method

.method public c(J)I
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    iget-object p1, p0, Lw3/b/a/f0/g;->b:Ljava/lang/String;

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
    iget-object p1, p0, Lw3/b/a/f0/g;->b:Ljava/lang/String;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    return p1
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
