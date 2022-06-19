.class public Le/k/a/c/d0/y/z;
.super Le/k/a/a/m0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/a/m0;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Class;)Le/k/a/a/k0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/k0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/a/m0;->a:Ljava/lang/Class;

    if-ne p1, v0, :cond_0

    move-object v0, p0

    goto :goto_0

    :cond_0
    new-instance v0, Le/k/a/c/d0/y/z;

    invoke-direct {v0, p1}, Le/k/a/c/d0/y/z;-><init>(Ljava/lang/Class;)V

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public e(Ljava/lang/Object;)Le/k/a/a/k0$a;
    .locals 3

    .line 1
    new-instance v0, Le/k/a/a/k0$a;

    const-class v1, Le/k/a/c/d0/y/z;

    iget-object v2, p0, Le/k/a/a/m0;->a:Ljava/lang/Class;

    invoke-direct {v0, v1, v2, p1}, Le/k/a/a/k0$a;-><init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Object;)V

    return-object v0
.end method

.method public f(Ljava/lang/Object;)Le/k/a/a/k0;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Le/k/a/a/k0<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    return-object p0
.end method
