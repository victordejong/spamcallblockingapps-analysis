.class public final Le/i/b/s2/e;
.super Le/i/b/s2/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/i/b/s2/h;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Le/m/e/k;",
            "Le/m/e/f0/a<",
            "TT;>;)",
            "Le/m/e/b0<",
            "TT;>;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Le/m/e/f0/a;->getRawType()Ljava/lang/Class;

    move-result-object p2

    .line 2
    const-class v0, Le/i/b/u2/q;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    new-instance p2, Le/i/b/u2/j$a;

    invoke-direct {p2, p1}, Le/i/b/u2/j$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 4
    :cond_0
    const-class v0, Le/i/b/u2/s;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 5
    new-instance p2, Le/i/b/u2/k$a;

    invoke-direct {p2, p1}, Le/i/b/u2/k$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 6
    :cond_1
    const-class v0, Le/i/b/l2/c/c;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    new-instance p2, Le/i/b/l2/c/b$a;

    invoke-direct {p2, p1}, Le/i/b/l2/c/b$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 8
    :cond_2
    const-class v0, Le/i/b/z1/x;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 9
    new-instance p2, Le/i/b/z1/n$a;

    invoke-direct {p2, p1}, Le/i/b/z1/n$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 10
    :cond_3
    const-class v0, Le/i/b/z1/d0;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 11
    new-instance p2, Le/i/b/z1/p$a;

    invoke-direct {p2, p1}, Le/i/b/z1/p$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 12
    :cond_4
    const-class v0, Le/i/b/z1/d0$a;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 13
    new-instance p2, Le/i/b/z1/q$a;

    invoke-direct {p2, p1}, Le/i/b/z1/q$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 14
    :cond_5
    const-class v0, Le/i/b/z1/d0$b;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_6

    .line 15
    new-instance p2, Le/i/b/z1/r$a;

    invoke-direct {p2, p1}, Le/i/b/z1/r$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 16
    :cond_6
    const-class v0, Le/i/b/u2/c/m;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_7

    .line 17
    new-instance p2, Le/i/b/u2/c/g$a;

    invoke-direct {p2, p1}, Le/i/b/u2/c/g$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 18
    :cond_7
    const-class v0, Le/i/b/u2/c/n;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_8

    .line 19
    new-instance p2, Le/i/b/u2/c/h$a;

    invoke-direct {p2, p1}, Le/i/b/u2/c/h$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 20
    :cond_8
    const-class v0, Le/i/b/u2/c/o;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_9

    .line 21
    new-instance p2, Le/i/b/u2/c/i$a;

    invoke-direct {p2, p1}, Le/i/b/u2/c/i$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 22
    :cond_9
    const-class v0, Le/i/b/u2/c/p;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_a

    .line 23
    new-instance p2, Le/i/b/u2/c/j$a;

    invoke-direct {p2, p1}, Le/i/b/u2/c/j$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 24
    :cond_a
    const-class v0, Le/i/b/u2/c/q;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_b

    .line 25
    new-instance p2, Le/i/b/u2/c/k$a;

    invoke-direct {p2, p1}, Le/i/b/u2/c/k$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 26
    :cond_b
    const-class v0, Le/i/b/u2/c/r;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_c

    .line 27
    new-instance p2, Le/i/b/u2/c/l$a;

    invoke-direct {p2, p1}, Le/i/b/u2/c/l$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 28
    :cond_c
    const-class v0, Le/i/b/u2/a0;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_d

    .line 29
    new-instance p2, Le/i/b/u2/l$a;

    invoke-direct {p2, p1}, Le/i/b/u2/l$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 30
    :cond_d
    const-class v0, Le/i/b/u2/b0;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 31
    new-instance p2, Le/i/b/u2/m$a;

    invoke-direct {p2, p1}, Le/i/b/u2/m$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 32
    :cond_e
    const-class v0, Le/i/b/u2/d0;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 33
    new-instance p2, Le/i/b/u2/n$a;

    invoke-direct {p2, p1}, Le/i/b/u2/n$a;-><init>(Le/m/e/k;)V

    return-object p2

    .line 34
    :cond_f
    const-class v0, Le/i/b/u2/e0;

    invoke-virtual {v0, p2}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z

    move-result p2

    if-eqz p2, :cond_10

    .line 35
    new-instance p2, Le/i/b/u2/o$a;

    invoke-direct {p2, p1}, Le/i/b/u2/o$a;-><init>(Le/m/e/k;)V

    return-object p2

    :cond_10
    const/4 p1, 0x0

    return-object p1
.end method
