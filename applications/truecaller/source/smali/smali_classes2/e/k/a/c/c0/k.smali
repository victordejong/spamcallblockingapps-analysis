.class public abstract Le/k/a/c/c0/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/g0/t$a;
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/k/a/c/c0/k<",
        "TT;>;>",
        "Ljava/lang/Object;",
        "Le/k/a/c/g0/t$a;",
        "Ljava/io/Serializable;"
    }
.end annotation


# instance fields
.field public final a:I

.field public final b:Le/k/a/c/c0/a;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    sget-object v0, Le/k/a/a/r$b;->e:Le/k/a/a/r$b;

    .line 2
    sget-object v0, Le/k/a/a/k$d;->h:Le/k/a/a/k$d;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/a;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 3
    iput p2, p0, Le/k/a/c/c0/k;->a:I

    return-void
.end method

.method public constructor <init>(Le/k/a/c/c0/k;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "TT;>;I)V"
        }
    .end annotation

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 5
    iget-object p1, p1, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    iput-object p1, p0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 6
    iput p2, p0, Le/k/a/c/c0/k;->a:I

    return-void
.end method

.method public static c(Ljava/lang/Class;)I
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<F:",
            "Ljava/lang/Enum<",
            "TF;>;:",
            "Le/k/a/c/c0/e;",
            ">(",
            "Ljava/lang/Class<",
            "TF;>;)I"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ljava/lang/Class;->getEnumConstants()[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/Enum;

    array-length v0, p0

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v1, v0, :cond_1

    aget-object v3, p0, v1

    .line 2
    check-cast v3, Le/k/a/c/c0/e;

    invoke-interface {v3}, Le/k/a/c/c0/e;->c()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 3
    invoke-interface {v3}, Le/k/a/c/c0/e;->a()I

    move-result v3

    or-int/2addr v2, v3

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method


# virtual methods
.method public final b()Z
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/p;->p:Le/k/a/c/p;

    invoke-virtual {p0, v0}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v0

    return v0
.end method

.method public final d(Ljava/lang/Class;)Le/k/a/c/i;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/i;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 3
    sget-object v1, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    return-object p1
.end method

.method public e()Le/k/a/c/b;
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/p;->c:Le/k/a/c/p;

    invoke-virtual {p0, v0}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 3
    iget-object v0, v0, Le/k/a/c/c0/a;->c:Le/k/a/c/b;

    return-object v0

    .line 4
    :cond_0
    sget-object v0, Le/k/a/c/g0/z;->a:Le/k/a/c/g0/z;

    return-object v0
.end method

.method public abstract f(Ljava/lang/Class;)Le/k/a/c/c0/f;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/c0/f;"
        }
    .end annotation
.end method

.method public abstract g(Ljava/lang/Class;Ljava/lang/Class;)Le/k/a/a/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/r$b;"
        }
    .end annotation
.end method

.method public abstract h(Ljava/lang/Class;)Le/k/a/a/k$d;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/k$d;"
        }
    .end annotation
.end method

.method public abstract i(Ljava/lang/Class;)Le/k/a/a/r$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/r$b;"
        }
    .end annotation
.end method

.method public j(Ljava/lang/Class;Le/k/a/a/r$b;)Le/k/a/a/r$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/a/r$b;",
            ")",
            "Le/k/a/a/r$b;"
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Le/k/a/c/c0/l;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/l;->i:Le/k/a/c/c0/g;

    invoke-virtual {v0, p1}, Le/k/a/c/c0/g;->a(Ljava/lang/Class;)Le/k/a/c/c0/f;

    move-result-object p1

    return-object p2
.end method

.method public abstract k(Ljava/lang/Class;Le/k/a/c/g0/c;)Le/k/a/c/g0/g0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/g0/c;",
            ")",
            "Le/k/a/c/g0/g0<",
            "*>;"
        }
    .end annotation
.end method

.method public l(Le/k/a/c/i;)Le/k/a/c/c;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/a;->b:Le/k/a/c/g0/t;

    .line 3
    check-cast v0, Le/k/a/c/g0/r;

    .line 4
    invoke-virtual {v0, p0, p1}, Le/k/a/c/g0/r;->b(Le/k/a/c/c0/k;Le/k/a/c/i;)Le/k/a/c/g0/q;

    move-result-object v1

    if-nez v1, :cond_0

    .line 5
    invoke-virtual {v0, p0, p1, p0}, Le/k/a/c/g0/r;->c(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/t$a;)Le/k/a/c/g0/c;

    move-result-object v0

    .line 6
    invoke-static {p0, p1, v0}, Le/k/a/c/g0/q;->i(Le/k/a/c/c0/k;Le/k/a/c/i;Le/k/a/c/g0/c;)Le/k/a/c/g0/q;

    move-result-object v1

    :cond_0
    return-object v1
.end method

.method public m(Ljava/lang/Class;)Le/k/a/c/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/c/c;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/k/a/c/c0/k;->b:Le/k/a/c/c0/a;

    .line 2
    iget-object v0, v0, Le/k/a/c/c0/a;->a:Le/k/a/c/m0/o;

    .line 3
    sget-object v1, Le/k/a/c/m0/o;->e:Le/k/a/c/m0/n;

    const/4 v2, 0x0

    invoke-virtual {v0, v2, p1, v1}, Le/k/a/c/m0/o;->b(Le/k/a/c/m0/c;Ljava/lang/reflect/Type;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Le/k/a/c/c0/k;->l(Le/k/a/c/i;)Le/k/a/c/c;

    move-result-object p1

    return-object p1
.end method

.method public final n()Z
    .locals 1

    .line 1
    sget-object v0, Le/k/a/c/p;->c:Le/k/a/c/p;

    invoke-virtual {p0, v0}, Le/k/a/c/c0/k;->o(Le/k/a/c/p;)Z

    move-result v0

    return v0
.end method

.method public final o(Le/k/a/c/p;)Z
    .locals 1

    .line 1
    iget v0, p0, Le/k/a/c/c0/k;->a:I

    .line 2
    iget p1, p1, Le/k/a/c/p;->b:I

    and-int/2addr p1, v0

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
