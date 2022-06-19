.class public abstract Le/k/a/c/l0/t/w;
.super Le/k/a/c/l0/t/p0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/l0/t/p0<",
        "TT;>;",
        "Le/k/a/c/l0/i;"
    }
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/Class;Le/k/a/b/j$b;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/b/j$b;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const/4 p3, 0x0

    .line 1
    invoke-direct {p0, p1, p3}, Le/k/a/c/l0/t/p0;-><init>(Ljava/lang/Class;Z)V

    .line 2
    sget-object p1, Le/k/a/b/j$b;->a:Le/k/a/b/j$b;

    if-eq p2, p1, :cond_0

    sget-object p1, Le/k/a/b/j$b;->b:Le/k/a/b/j$b;

    :cond_0
    return-void
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/a0;",
            "Le/k/a/c/d;",
            ")",
            "Le/k/a/c/n<",
            "*>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/k/a/c/k;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 2
    invoke-virtual {p0, p1, p2, v0}, Le/k/a/c/l0/t/q0;->l(Le/k/a/c/a0;Le/k/a/c/d;Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 3
    iget-object p1, p1, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/16 p2, 0x8

    if-eq p1, p2, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    .line 6
    const-class p2, Ljava/math/BigDecimal;

    if-ne p1, p2, :cond_1

    .line 7
    sget-object p1, Le/k/a/c/l0/t/v;->c:Le/k/a/c/l0/t/v;

    sget-object p1, Le/k/a/c/l0/t/v$a;->c:Le/k/a/c/l0/t/v$a;

    return-object p1

    .line 8
    :cond_1
    sget-object p1, Le/k/a/c/l0/t/t0;->c:Le/k/a/c/l0/t/t0;

    return-object p1

    :cond_2
    :goto_0
    return-object p0
.end method
