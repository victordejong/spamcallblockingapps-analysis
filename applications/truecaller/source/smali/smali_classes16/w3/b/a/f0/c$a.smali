.class public Lw3/b/a/f0/c$a;
.super Lw3/b/a/h0/k;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lw3/b/a/f0/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    sget-object v0, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object v0, Lw3/b/a/d;->n:Lw3/b/a/d;

    .line 2
    sget-object v1, Lw3/b/a/f0/c;->V:Lw3/b/a/j;

    .line 3
    sget-object v2, Lw3/b/a/f0/c;->W:Lw3/b/a/j;

    .line 4
    invoke-direct {p0, v0, v1, v2}, Lw3/b/a/h0/k;-><init>(Lw3/b/a/d;Lw3/b/a/j;Lw3/b/a/j;)V

    return-void
.end method


# virtual methods
.method public D(JLjava/lang/String;Ljava/util/Locale;)J
    .locals 2

    .line 1
    invoke-static {p4}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p4

    .line 2
    iget-object p4, p4, Lw3/b/a/f0/p;->f:[Ljava/lang/String;

    .line 3
    array-length v0, p4

    :cond_0
    add-int/lit8 v0, v0, -0x1

    if-ltz v0, :cond_1

    .line 4
    aget-object v1, p4, v0

    invoke-virtual {v1, p3}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 5
    invoke-virtual {p0, p1, p2, v0}, Lw3/b/a/h0/k;->C(JI)J

    move-result-wide p1

    return-wide p1

    .line 6
    :cond_1
    new-instance p1, Lw3/b/a/l;

    sget-object p2, Lw3/b/a/d;->b:Lw3/b/a/d;

    sget-object p2, Lw3/b/a/d;->n:Lw3/b/a/d;

    invoke-direct {p1, p2, p3}, Lw3/b/a/l;-><init>(Lw3/b/a/d;Ljava/lang/String;)V

    throw p1
.end method

.method public g(ILjava/util/Locale;)Ljava/lang/String;
    .locals 0

    .line 1
    invoke-static {p2}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p2

    .line 2
    iget-object p2, p2, Lw3/b/a/f0/p;->f:[Ljava/lang/String;

    aget-object p1, p2, p1

    return-object p1
.end method

.method public n(Ljava/util/Locale;)I
    .locals 0

    .line 1
    invoke-static {p1}, Lw3/b/a/f0/p;->b(Ljava/util/Locale;)Lw3/b/a/f0/p;

    move-result-object p1

    .line 2
    iget p1, p1, Lw3/b/a/f0/p;->m:I

    return p1
.end method
