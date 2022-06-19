.class public Le/k/a/c/d0/t;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/d0/t$a;
    }
.end annotation


# instance fields
.field public final a:Le/k/a/c/d;

.field public final b:Le/k/a/c/g0/i;

.field public final c:Z

.field public final d:Le/k/a/c/i;

.field public e:Le/k/a/c/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/k/a/c/j0/e;

.field public final g:Le/k/a/c/o;


# direct methods
.method public constructor <init>(Le/k/a/c/d;Le/k/a/c/g0/i;Le/k/a/c/i;Le/k/a/c/o;Le/k/a/c/j;Le/k/a/c/j0/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/d;",
            "Le/k/a/c/g0/i;",
            "Le/k/a/c/i;",
            "Le/k/a/c/o;",
            "Le/k/a/c/j<",
            "Ljava/lang/Object;",
            ">;",
            "Le/k/a/c/j0/e;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/t;->a:Le/k/a/c/d;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/t;->b:Le/k/a/c/g0/i;

    .line 4
    iput-object p3, p0, Le/k/a/c/d0/t;->d:Le/k/a/c/i;

    .line 5
    iput-object p5, p0, Le/k/a/c/d0/t;->e:Le/k/a/c/j;

    .line 6
    iput-object p6, p0, Le/k/a/c/d0/t;->f:Le/k/a/c/j0/e;

    .line 7
    iput-object p4, p0, Le/k/a/c/d0/t;->g:Le/k/a/c/o;

    .line 8
    instance-of p1, p2, Le/k/a/c/g0/g;

    iput-boolean p1, p0, Le/k/a/c/d0/t;->c:Z

    return-void
.end method


# virtual methods
.method public a(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/k/a/b/m;->u:Le/k/a/b/m;

    invoke-virtual {p1, v0}, Le/k/a/b/j;->O1(Le/k/a/b/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Le/k/a/c/d0/t;->e:Le/k/a/c/j;

    invoke-virtual {p1, p2}, Le/k/a/c/j;->c(Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/t;->f:Le/k/a/c/j0/e;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Le/k/a/c/d0/t;->e:Le/k/a/c/j;

    invoke-virtual {v1, p1, p2, v0}, Le/k/a/c/j;->f(Le/k/a/b/j;Le/k/a/c/g;Le/k/a/c/j0/e;)Ljava/lang/Object;

    move-result-object p1

    return-object p1

    .line 5
    :cond_1
    iget-object v0, p0, Le/k/a/c/d0/t;->e:Le/k/a/c/j;

    invoke-virtual {v0, p1, p2}, Le/k/a/c/j;->d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final b(Le/k/a/b/j;Le/k/a/c/g;Ljava/lang/Object;Ljava/lang/String;)V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Le/k/a/c/d0/t;->g:Le/k/a/c/o;

    if-nez v0, :cond_0

    move-object v0, p4

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {v0, p4, p2}, Le/k/a/c/o;->a(Ljava/lang/String;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p0, p1, p2}, Le/k/a/c/d0/t;->a(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;

    move-result-object p2

    invoke-virtual {p0, p3, v0, p2}, Le/k/a/c/d0/t;->c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_0
    .catch Le/k/a/c/d0/v; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    .line 4
    iget-object v0, p0, Le/k/a/c/d0/t;->e:Le/k/a/c/j;

    invoke-virtual {v0}, Le/k/a/c/j;->l()Le/k/a/c/d0/y/v;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    new-instance p1, Le/k/a/c/d0/t$a;

    iget-object v0, p0, Le/k/a/c/d0/t;->d:Le/k/a/c/i;

    .line 6
    iget-object v3, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    move-object v0, p1

    move-object v1, p0

    move-object v2, p2

    move-object v4, p3

    move-object v5, p4

    .line 7
    invoke-direct/range {v0 .. v5}, Le/k/a/c/d0/t$a;-><init>(Le/k/a/c/d0/t;Le/k/a/c/d0/v;Ljava/lang/Class;Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object p2, p2, Le/k/a/c/d0/v;->d:Le/k/a/c/d0/y/c0;

    .line 9
    invoke-virtual {p2, p1}, Le/k/a/c/d0/y/c0;->a(Le/k/a/c/d0/y/c0$a;)V

    :goto_1
    return-void

    .line 10
    :cond_1
    new-instance p3, Le/k/a/c/k;

    const-string p4, "Unresolved forward reference but no identity info."

    invoke-direct {p3, p1, p4, p2}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 11
    throw p3
.end method

.method public c(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-boolean v0, p0, Le/k/a/c/d0/t;->c:Z

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Le/k/a/c/d0/t;->b:Le/k/a/c/g0/i;

    check-cast v0, Le/k/a/c/g0/g;

    .line 3
    invoke-virtual {v0, p1}, Le/k/a/c/g0/g;->j(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/Map;

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 5
    :cond_0
    iget-object v0, p0, Le/k/a/c/d0/t;->b:Le/k/a/c/g0/i;

    check-cast v0, Le/k/a/c/g0/j;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    .line 6
    iget-object v0, v0, Le/k/a/c/g0/j;->d:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_1
    :goto_0
    return-void

    :catch_0
    move-exception p1

    .line 7
    instance-of v0, p1, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 8
    invoke-static {p3}, Le/k/a/c/n0/g;->f(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    .line 9
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Problem deserializing \"any\" property \'"

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "\' of class "

    .line 10
    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    .line 11
    iget-object v2, p0, Le/k/a/c/d0/t;->b:Le/k/a/c/g0/i;

    invoke-virtual {v2}, Le/k/a/c/g0/i;->g()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " (expected type: "

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p0, Le/k/a/c/d0/t;->d:Le/k/a/c/i;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, "; actual type: "

    .line 13
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, ")"

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 14
    invoke-static {p1}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p2

    if-eqz p2, :cond_2

    const-string p3, ", problem: "

    .line 15
    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_2
    const-string p2, " (no error message provided)"

    .line 16
    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    :goto_1
    new-instance p2, Le/k/a/c/k;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v1, p3, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 18
    :cond_3
    invoke-static {p1}, Le/k/a/c/n0/g;->J(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 19
    invoke-static {p1}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 20
    invoke-static {p1}, Le/k/a/c/n0/g;->s(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    .line 21
    new-instance p2, Le/k/a/c/k;

    invoke-static {p1}, Le/k/a/c/n0/g;->j(Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object p3

    invoke-direct {p2, v1, p3, p1}, Le/k/a/c/k;-><init>(Ljava/io/Closeable;Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/d0/t;->b:Le/k/a/c/g0/i;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Le/k/a/c/g0/b;->b()Ljava/lang/reflect/AnnotatedElement;

    move-result-object v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Missing method (broken JDK (de)serialization?)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[any property on class "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/k/a/c/d0/t;->b:Le/k/a/c/g0/i;

    invoke-virtual {v1}, Le/k/a/c/g0/i;->g()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    .line 3
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
