.class public Le/k/a/c/l0/s/k;
.super Le/k/a/a/m0;
.source "SourceFile"


# instance fields
.field public final b:Le/k/a/c/l0/c;


# direct methods
.method public constructor <init>(Le/k/a/c/g0/a0;Le/k/a/c/l0/c;)V
    .locals 0

    .line 3
    iget-object p1, p1, Le/k/a/c/g0/a0;->d:Ljava/lang/Class;

    .line 4
    invoke-direct {p0, p1}, Le/k/a/a/m0;-><init>(Ljava/lang/Class;)V

    .line 5
    iput-object p2, p0, Le/k/a/c/l0/s/k;->b:Le/k/a/c/l0/c;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Le/k/a/c/l0/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Le/k/a/c/l0/c;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/a/m0;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p2, p0, Le/k/a/c/l0/s/k;->b:Le/k/a/c/l0/c;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/a/k0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/a/k0<",
            "*>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    const-class v1, Le/k/a/c/l0/s/k;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    .line 2
    check-cast p1, Le/k/a/c/l0/s/k;

    .line 3
    iget-object v0, p1, Le/k/a/a/m0;->a:Ljava/lang/Class;

    .line 4
    iget-object v1, p0, Le/k/a/a/m0;->a:Ljava/lang/Class;

    if-ne v0, v1, :cond_0

    .line 5
    iget-object p1, p1, Le/k/a/c/l0/s/k;->b:Le/k/a/c/l0/c;

    iget-object v0, p0, Le/k/a/c/l0/s/k;->b:Le/k/a/c/l0/c;

    if-ne p1, v0, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2
.end method

.method public b(Ljava/lang/Class;)Le/k/a/a/k0;
    .locals 2
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
    new-instance v0, Le/k/a/c/l0/s/k;

    iget-object v1, p0, Le/k/a/c/l0/s/k;->b:Le/k/a/c/l0/c;

    invoke-direct {v0, p1, v1}, Le/k/a/c/l0/s/k;-><init>(Ljava/lang/Class;Le/k/a/c/l0/c;)V

    :goto_0
    return-object v0
.end method

.method public c(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/k/a/c/l0/s/k;->b:Le/k/a/c/l0/c;

    .line 2
    iget-object v1, v0, Le/k/a/c/l0/c;->j:Ljava/lang/reflect/Method;

    if-nez v1, :cond_0

    iget-object v0, v0, Le/k/a/c/l0/c;->k:Ljava/lang/reflect/Field;

    invoke-virtual {v0, p1}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    return-object p1

    :catch_0
    move-exception p1

    .line 4
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Problem accessing property \'"

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/k/a/c/l0/s/k;->b:Le/k/a/c/l0/c;

    .line 5
    iget-object v2, v2, Le/k/a/c/l0/c;->c:Le/k/a/b/w/i;

    .line 6
    iget-object v2, v2, Le/k/a/b/w/i;->a:Ljava/lang/String;

    .line 7
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "\': "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v0

    :catch_1
    move-exception p1

    .line 8
    throw p1
.end method

.method public e(Ljava/lang/Object;)Le/k/a/a/k0$a;
    .locals 3

    .line 1
    new-instance v0, Le/k/a/a/k0$a;

    const-class v1, Le/k/a/c/l0/s/k;

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
