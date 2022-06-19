.class public final Lw3/b/a/f0/n;
.super Lw3/b/a/h0/l;
.source "SourceFile"


# instance fields
.field public final d:Lw3/b/a/f0/c;


# direct methods
.method public constructor <init>(Lw3/b/a/f0/c;Lw3/b/a/j;)V
    .locals 1

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->m:Lw3/b/a/d;

    invoke-direct {p0, v0, p2}, Lw3/b/a/h0/l;-><init>(Lw3/b/a/d;Lw3/b/a/j;)V

    .line 2
    iput-object p1, p0, Lw3/b/a/f0/n;->d:Lw3/b/a/f0/c;

    return-void
.end method


# virtual methods
.method public F(Ljava/lang/String;Ljava/util/Locale;)I
    .locals 1

    .line 1
    invoke-static {p2}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lw3/b/a/f0/p;->h:Ljava/util/TreeMap;

    invoke-virtual {p2, p1}, Ljava/util/TreeMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Integer;

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p1

    return p1

    .line 4
    :cond_0
    new-instance p2, Lw3/b/a/l;

    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->m:Lw3/b/a/d;

    invoke-direct {p2, v0, p1}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/String;)V

    throw p2
.end method

.method public c(J)I
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/n;->d:Lw3/b/a/f0/c;

    invoke-virtual {v0, p1, p2}, Lw3/b/a/f0/c;->g0(J)I

    move-result p1

    return p1
.end method

.method public d(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lw3/b/a/f0/p;->c:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lw3/b/a/f0/p;->b:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public n(Ljava/util/Locale;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p1

    .line 2
    iget p1, p1, Lw3/b/a/f0/p;->k:I

    return p1
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x7

    return v0
.end method

.method public s()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v()Lw3/b/a/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lw3/b/a/f0/n;->d:Lw3/b/a/f0/c;

    .line 2
    iget-object v0, v0, Lw3/b/a/f0/a;->i:Lw3/b/a/j;

    return-object v0
.end method
