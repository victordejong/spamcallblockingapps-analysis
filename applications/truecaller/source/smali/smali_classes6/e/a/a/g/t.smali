.class public Le/a/a/g/t;
.super Le/a/r2/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/a/a/g/r;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r2/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Le/a/r2/w;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Le/a/r2/w;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-class v0, Le/a/a/k/a/c0;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Le/a/a/k/a/b0;

    invoke-direct {p1, p2}, Le/a/a/k/a/b0;-><init>(Le/a/r2/w;)V

    return-object p1

    .line 3
    :cond_0
    const-class v0, Le/a/a/k/y/k;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    new-instance p1, Le/a/a/k/y/j;

    invoke-direct {p1, p2}, Le/a/a/k/y/j;-><init>(Le/a/r2/w;)V

    return-object p1

    .line 5
    :cond_1
    const-class v0, Le/a/a/k/i;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance p1, Le/a/a/k/h;

    invoke-direct {p1, p2}, Le/a/a/k/h;-><init>(Le/a/r2/w;)V

    return-object p1

    .line 7
    :cond_2
    const-class v0, Le/a/a/y0/q;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 8
    new-instance p1, Le/a/a/y0/p;

    invoke-direct {p1, p2}, Le/a/a/y0/p;-><init>(Le/a/r2/w;)V

    return-object p1

    .line 9
    :cond_3
    const-class v0, Le/a/a/g/b0;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 10
    new-instance p1, Le/a/a/g/a0;

    invoke-direct {p1, p2}, Le/a/a/g/a0;-><init>(Le/a/r2/w;)V

    return-object p1

    .line 11
    :cond_4
    const-class v0, Le/a/a/g/m;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 12
    new-instance p1, Le/a/a/g/l;

    invoke-direct {p1, p2}, Le/a/a/g/l;-><init>(Le/a/r2/w;)V

    return-object p1

    .line 13
    :cond_5
    invoke-virtual {p0, p1, p2}, Le/a/r2/b0;->b(Ljava/lang/Class;Le/a/r2/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
