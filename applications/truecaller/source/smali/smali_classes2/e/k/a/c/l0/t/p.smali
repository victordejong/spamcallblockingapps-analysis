.class public Le/k/a/c/l0/t/p;
.super Le/k/a/c/l0/t/p0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/p0<",
        "Ljava/net/InetAddress;",
        ">;",
        "Le/k/a/c/l0/i;"
    }
.end annotation


# instance fields
.field public final c:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    const-class v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/p0;-><init>(Ljava/lang/Class;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Le/k/a/c/l0/t/p;->c:Z

    return-void
.end method

.method public constructor <init>(Z)V
    .locals 1

    .line 3
    const-class v0, Ljava/net/InetAddress;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/p0;-><init>(Ljava/lang/Class;)V

    .line 4
    iput-boolean p1, p0, Le/k/a/c/l0/t/p;->c:Z

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

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p1, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    .line 4
    invoke-virtual {p1}, Le/k/a/a/k$c;->a()Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Le/k/a/a/k$c;->d:Le/k/a/a/k$c;

    if-ne p1, p2, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    iget-boolean p2, p0, Le/k/a/c/l0/t/p;->c:Z

    if-eq p1, p2, :cond_2

    .line 6
    new-instance p2, Le/k/a/c/l0/t/p;

    invoke-direct {p2, p1}, Le/k/a/c/l0/t/p;-><init>(Z)V

    return-object p2

    :cond_2
    return-object p0
.end method

.method public bridge synthetic f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/net/InetAddress;

    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/t/p;->p(Ljava/net/InetAddress;Le/k/a/b/g;)V

    return-void
.end method

.method public g(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;Le/k/a/c/j0/h;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/net/InetAddress;

    .line 2
    const-class p3, Ljava/net/InetAddress;

    sget-object v0, Le/k/a/b/m;->p:Le/k/a/b/m;

    .line 3
    invoke-virtual {p4, p1, v0}, Le/k/a/c/j0/h;->d(Ljava/lang/Object;Le/k/a/b/m;)Le/k/a/b/z/b;

    move-result-object v0

    .line 4
    iput-object p3, v0, Le/k/a/b/z/b;->b:Ljava/lang/Class;

    .line 5
    invoke-virtual {p4, p2, v0}, Le/k/a/c/j0/h;->e(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    move-result-object p3

    .line 6
    invoke-virtual {p0, p1, p2}, Le/k/a/c/l0/t/p;->p(Ljava/net/InetAddress;Le/k/a/b/g;)V

    .line 7
    invoke-virtual {p4, p2, p3}, Le/k/a/c/j0/h;->f(Le/k/a/b/g;Le/k/a/b/z/b;)Le/k/a/b/z/b;

    return-void
.end method

.method public p(Ljava/net/InetAddress;Le/k/a/b/g;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Le/k/a/c/l0/t/p;->c:Z

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/net/InetAddress;->getHostAddress()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {p1}, Ljava/net/InetAddress;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object p1

    const/16 v0, 0x2f

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->indexOf(I)I

    move-result v0

    if-ltz v0, :cond_2

    if-nez v0, :cond_1

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 6
    invoke-virtual {p1, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p1

    .line 7
    :cond_2
    :goto_0
    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    return-void
.end method
