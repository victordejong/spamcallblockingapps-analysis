.class public Le/k/a/c/l0/t/m;
.super Le/k/a/c/l0/t/p0;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/l0/i;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/p0<",
        "Ljava/lang/Enum<",
        "*>;>;",
        "Le/k/a/c/l0/i;"
    }
.end annotation

.annotation runtime Le/k/a/c/b0/a;
.end annotation


# static fields
.field public static final synthetic e:I


# instance fields
.field public final c:Le/k/a/c/n0/k;

.field public final d:Ljava/lang/Boolean;


# direct methods
.method public constructor <init>(Le/k/a/c/n0/k;Ljava/lang/Boolean;)V
    .locals 2

    .line 1
    iget-object v0, p1, Le/k/a/c/n0/k;->a:Ljava/lang/Class;

    const/4 v1, 0x0

    .line 2
    invoke-direct {p0, v0, v1}, Le/k/a/c/l0/t/p0;-><init>(Ljava/lang/Class;Z)V

    .line 3
    iput-object p1, p0, Le/k/a/c/l0/t/m;->c:Le/k/a/c/n0/k;

    .line 4
    iput-object p2, p0, Le/k/a/c/l0/t/m;->d:Ljava/lang/Boolean;

    return-void
.end method

.method public static p(Ljava/lang/Class;Le/k/a/a/k$d;ZLjava/lang/Boolean;)Ljava/lang/Boolean;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/a/k$d;",
            "Z",
            "Ljava/lang/Boolean;",
            ")",
            "Ljava/lang/Boolean;"
        }
    .end annotation

    if-nez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 1
    :cond_0
    iget-object p1, p1, Le/k/a/a/k$d;->b:Le/k/a/a/k$c;

    :goto_0
    if-nez p1, :cond_1

    return-object p3

    .line 2
    :cond_1
    sget-object v0, Le/k/a/a/k$c;->a:Le/k/a/a/k$c;

    if-eq p1, v0, :cond_8

    sget-object v0, Le/k/a/a/k$c;->c:Le/k/a/a/k$c;

    if-ne p1, v0, :cond_2

    goto :goto_4

    .line 3
    :cond_2
    sget-object p3, Le/k/a/a/k$c;->i:Le/k/a/a/k$c;

    if-eq p1, p3, :cond_7

    sget-object p3, Le/k/a/a/k$c;->b:Le/k/a/a/k$c;

    if-ne p1, p3, :cond_3

    goto :goto_3

    .line 4
    :cond_3
    invoke-virtual {p1}, Le/k/a/a/k$c;->a()Z

    move-result p3

    if-nez p3, :cond_6

    sget-object p3, Le/k/a/a/k$c;->d:Le/k/a/a/k$c;

    if-ne p1, p3, :cond_4

    goto :goto_2

    .line 5
    :cond_4
    new-instance p3, Ljava/lang/IllegalArgumentException;

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p1, v0, v1

    const/4 p1, 0x1

    .line 6
    invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p0

    aput-object p0, v0, p1

    const/4 p0, 0x2

    if-eqz p2, :cond_5

    const-string p1, "class"

    goto :goto_1

    :cond_5
    const-string p1, "property"

    :goto_1
    aput-object p1, v0, p0

    const-string p0, "Unsupported serialization shape (%s) for Enum %s, not supported as %s annotation"

    .line 7
    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p3, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p3

    .line 8
    :cond_6
    :goto_2
    sget-object p0, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    return-object p0

    .line 9
    :cond_7
    :goto_3
    sget-object p0, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    return-object p0

    :cond_8
    :goto_4
    return-object p3
.end method


# virtual methods
.method public b(Le/k/a/c/a0;Le/k/a/c/d;)Le/k/a/c/n;
    .locals 2
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

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Le/k/a/c/l0/t/q0;->a:Ljava/lang/Class;

    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Le/k/a/c/l0/t/m;->d:Ljava/lang/Boolean;

    invoke-static {p2, p1, v0, v1}, Le/k/a/c/l0/t/m;->p(Ljava/lang/Class;Le/k/a/a/k$d;ZLjava/lang/Boolean;)Ljava/lang/Boolean;

    move-result-object p1

    .line 5
    iget-object p2, p0, Le/k/a/c/l0/t/m;->d:Ljava/lang/Boolean;

    invoke-static {p1, p2}, Ljava/util/Objects;->equals(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_0

    .line 6
    new-instance p2, Le/k/a/c/l0/t/m;

    iget-object v0, p0, Le/k/a/c/l0/t/m;->c:Le/k/a/c/n0/k;

    invoke-direct {p2, v0, p1}, Le/k/a/c/l0/t/m;-><init>(Le/k/a/c/n0/k;Ljava/lang/Boolean;)V

    return-object p2

    :cond_0
    return-object p0
.end method

.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    check-cast p1, Ljava/lang/Enum;

    .line 2
    iget-object v0, p0, Le/k/a/c/l0/t/m;->d:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    sget-object v0, Le/k/a/c/z;->r:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result v0

    :goto_0
    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->J0(I)V

    goto :goto_1

    .line 6
    :cond_1
    sget-object v0, Le/k/a/c/z;->q:Le/k/a/c/z;

    invoke-virtual {p3, v0}, Le/k/a/c/a0;->M(Le/k/a/c/z;)Z

    move-result p3

    if-eqz p3, :cond_2

    .line 7
    invoke-virtual {p1}, Ljava/lang/Enum;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Le/k/a/b/g;->T1(Ljava/lang/String;)V

    goto :goto_1

    .line 8
    :cond_2
    iget-object p3, p0, Le/k/a/c/l0/t/m;->c:Le/k/a/c/n0/k;

    .line 9
    iget-object p3, p3, Le/k/a/c/n0/k;->b:[Le/k/a/b/p;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    aget-object p1, p3, p1

    .line 10
    invoke-virtual {p2, p1}, Le/k/a/b/g;->S1(Le/k/a/b/p;)V

    :goto_1
    return-void
.end method
