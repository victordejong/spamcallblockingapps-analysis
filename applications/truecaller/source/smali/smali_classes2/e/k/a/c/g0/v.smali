.class public abstract Le/k/a/c/g0/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/k/a/c/d;
.implements Ljava/io/Serializable;


# instance fields
.field public final a:Le/k/a/c/u;

.field public transient b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/k/a/c/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/k/a/c/g0/v;)V
    .locals 0

    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 4
    iget-object p1, p1, Le/k/a/c/g0/v;->a:Le/k/a/c/u;

    iput-object p1, p0, Le/k/a/c/g0/v;->a:Le/k/a/c/u;

    return-void
.end method

.method public constructor <init>(Le/k/a/c/u;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_0

    .line 2
    sget-object p1, Le/k/a/c/u;->j:Le/k/a/c/u;

    :cond_0
    iput-object p1, p0, Le/k/a/c/g0/v;->a:Le/k/a/c/u;

    return-void
.end method


# virtual methods
.method public a()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/v;->a:Le/k/a/c/u;

    .line 2
    iget-object v0, v0, Le/k/a/c/u;->a:Ljava/lang/Boolean;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public e(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/k$d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/k$d;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2}, Le/k/a/c/c0/k;->h(Ljava/lang/Class;)Le/k/a/a/k$d;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p0}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    invoke-virtual {p1, v0}, Le/k/a/c/b;->n(Le/k/a/c/g0/b;)Le/k/a/a/k$d;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-nez p2, :cond_2

    if-nez p1, :cond_1

    .line 5
    sget-object p1, Le/k/a/c/d;->I:Le/k/a/a/k$d;

    :cond_1
    return-object p1

    :cond_2
    if-nez p1, :cond_3

    goto :goto_1

    .line 6
    :cond_3
    invoke-virtual {p2, p1}, Le/k/a/a/k$d;->f(Le/k/a/a/k$d;)Le/k/a/a/k$d;

    move-result-object p2

    :goto_1
    return-object p2
.end method

.method public f(Le/k/a/c/c0/k;Ljava/lang/Class;)Le/k/a/a/r$b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/c0/k<",
            "*>;",
            "Ljava/lang/Class<",
            "*>;)",
            "Le/k/a/a/r$b;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object v0

    .line 2
    invoke-interface {p0}, Le/k/a/c/d;->c()Le/k/a/c/g0/i;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    invoke-virtual {p1, p2}, Le/k/a/c/c0/k;->i(Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object p1

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v1}, Le/k/a/c/g0/b;->d()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1, p2, v2}, Le/k/a/c/c0/k;->g(Ljava/lang/Class;Ljava/lang/Class;)Le/k/a/a/r$b;

    move-result-object p1

    if-nez v0, :cond_1

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {v0, v1}, Le/k/a/c/b;->J(Le/k/a/c/g0/b;)Le/k/a/a/r$b;

    move-result-object p2

    if-nez p1, :cond_2

    return-object p2

    .line 6
    :cond_2
    invoke-virtual {p1, p2}, Le/k/a/a/r$b;->a(Le/k/a/a/r$b;)Le/k/a/a/r$b;

    move-result-object p1

    return-object p1
.end method

.method public getMetadata()Le/k/a/c/u;
    .locals 1

    .line 1
    iget-object v0, p0, Le/k/a/c/g0/v;->a:Le/k/a/c/u;

    return-object v0
.end method
