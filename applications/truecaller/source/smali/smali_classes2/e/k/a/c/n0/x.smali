.class public Le/k/a/c/n0/x;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public transient a:Le/k/a/c/n0/m;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/n0/m<",
            "Le/k/a/c/m0/b;",
            "Le/k/a/c/v;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Le/k/a/c/n0/m;

    const/16 v1, 0x14

    const/16 v2, 0xc8

    invoke-direct {v0, v1, v2}, Le/k/a/c/n0/m;-><init>(II)V

    iput-object v0, p0, Le/k/a/c/n0/x;->a:Le/k/a/c/n0/m;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Le/k/a/c/c0/k;)Le/k/a/c/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/c0/k<",
            "*>;)",
            "Le/k/a/c/v;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/k/a/c/m0/b;

    invoke-direct {v0, p1}, Le/k/a/c/m0/b;-><init>(Ljava/lang/Class;)V

    .line 2
    iget-object v1, p0, Le/k/a/c/n0/x;->a:Le/k/a/c/n0/m;

    .line 3
    iget-object v1, v1, Le/k/a/c/n0/m;->b:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 4
    check-cast v1, Le/k/a/c/v;

    if-eqz v1, :cond_0

    return-object v1

    .line 5
    :cond_0
    invoke-virtual {p2, p1}, Le/k/a/c/c0/k;->m(Ljava/lang/Class;)Le/k/a/c/c;

    move-result-object v1

    .line 6
    invoke-virtual {p2}, Le/k/a/c/c0/k;->e()Le/k/a/c/b;

    move-result-object p2

    .line 7
    check-cast v1, Le/k/a/c/g0/q;

    .line 8
    iget-object v1, v1, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 9
    invoke-virtual {p2, v1}, Le/k/a/c/b;->P(Le/k/a/c/g0/c;)Le/k/a/c/v;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 10
    invoke-virtual {p2}, Le/k/a/c/v;->c()Z

    move-result v1

    if-nez v1, :cond_2

    .line 11
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/k/a/c/v;->a(Ljava/lang/String;)Le/k/a/c/v;

    move-result-object p2

    .line 12
    :cond_2
    iget-object p1, p0, Le/k/a/c/n0/x;->a:Le/k/a/c/n0/m;

    invoke-virtual {p1, v0, p2}, Le/k/a/c/n0/m;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Le/k/a/c/n0/x;

    invoke-direct {v0}, Le/k/a/c/n0/x;-><init>()V

    return-object v0
.end method
