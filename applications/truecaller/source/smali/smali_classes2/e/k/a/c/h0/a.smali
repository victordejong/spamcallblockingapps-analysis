.class public Le/k/a/c/h0/a;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/k/a/c/c;

.field public final b:Le/k/a/c/f;

.field public final c:Le/k/a/c/b;

.field public final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/k/a/c/g0/e;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/k/a/c/g0/e;

.field public final f:[Le/k/a/c/h0/b;


# direct methods
.method public constructor <init>(Le/k/a/c/g;Le/k/a/c/c;)V
    .locals 13

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Le/k/a/c/h0/a;->a:Le/k/a/c/c;

    .line 3
    invoke-virtual {p1}, Le/k/a/c/g;->y()Le/k/a/c/b;

    move-result-object v0

    iput-object v0, p0, Le/k/a/c/h0/a;->c:Le/k/a/c/b;

    .line 4
    iget-object p1, p1, Le/k/a/c/g;->c:Le/k/a/c/f;

    .line 5
    iput-object p1, p0, Le/k/a/c/h0/a;->b:Le/k/a/c/f;

    .line 6
    sget-object p1, Le/k/a/c/h0/c;->e:Ljava/lang/RuntimeException;

    if-nez p1, :cond_7

    .line 7
    sget-object p1, Le/k/a/c/h0/c;->d:Le/k/a/c/h0/c;

    .line 8
    iget-object v0, p2, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 9
    iget-object v0, v0, Le/k/a/c/i;->a:Ljava/lang/Class;

    .line 10
    invoke-virtual {p1, v0}, Le/k/a/c/h0/c;->a(Ljava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    .line 11
    array-length v2, v1

    new-array v3, v2, [Le/k/a/c/h0/b;

    const/4 v4, 0x0

    move v5, v4

    .line 12
    :goto_0
    array-length v6, v1

    if-ge v5, v6, :cond_0

    const/4 v6, 0x2

    const/4 v7, 0x3

    const/4 v8, 0x1

    .line 13
    :try_start_0
    iget-object v9, p1, Le/k/a/c/h0/c;->b:Ljava/lang/reflect/Method;

    aget-object v10, v1, v5

    new-array v11, v4, [Ljava/lang/Object;

    invoke-virtual {v9, v10, v11}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 14
    :try_start_1
    iget-object v10, p1, Le/k/a/c/h0/c;->c:Ljava/lang/reflect/Method;

    aget-object v11, v1, v5

    new-array v12, v4, [Ljava/lang/Object;

    invoke-virtual {v10, v11, v12}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Class;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    .line 15
    new-instance v6, Le/k/a/c/h0/b;

    invoke-direct {v6, v10, v9}, Le/k/a/c/h0/b;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    aput-object v6, v3, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :catch_0
    move-exception p1

    .line 16
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array v2, v7, [Ljava/lang/Object;

    .line 17
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-static {v0}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const-string v0, "Failed to access type of field #%d (of %d) of Record type %s"

    .line 18
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    :catch_1
    move-exception p1

    .line 19
    new-instance p2, Ljava/lang/IllegalArgumentException;

    new-array v2, v7, [Ljava/lang/Object;

    .line 20
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v4

    array-length v1, v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v2, v8

    invoke-static {v0}, Le/k/a/c/n0/g;->E(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v6

    const-string v0, "Failed to access name of field #%d (of %d) of Record type %s"

    .line 21
    invoke-static {v0, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p2, v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw p2

    .line 22
    :cond_0
    iput-object v3, p0, Le/k/a/c/h0/a;->f:[Le/k/a/c/h0/b;

    const/4 p1, 0x0

    if-nez v2, :cond_1

    .line 23
    check-cast p2, Le/k/a/c/g0/q;

    .line 24
    iget-object p1, p2, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    .line 25
    invoke-virtual {p1}, Le/k/a/c/g0/c;->f()Le/k/a/c/g0/c$a;

    move-result-object p1

    iget-object p1, p1, Le/k/a/c/g0/c$a;->a:Le/k/a/c/g0/e;

    .line 26
    invoke-static {p1}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p2

    iput-object p2, p0, Le/k/a/c/h0/a;->d:Ljava/util/List;

    goto :goto_3

    .line 27
    :cond_1
    check-cast p2, Le/k/a/c/g0/q;

    .line 28
    iget-object p2, p2, Le/k/a/c/g0/q;->e:Le/k/a/c/g0/c;

    invoke-virtual {p2}, Le/k/a/c/g0/c;->i()Ljava/util/List;

    move-result-object p2

    .line 29
    iput-object p2, p0, Le/k/a/c/h0/a;->d:Ljava/util/List;

    .line 30
    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/k/a/c/g0/e;

    .line 31
    invoke-virtual {v0}, Le/k/a/c/g0/e;->q()I

    move-result v1

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    move v1, v4

    :goto_2
    if-ge v1, v2, :cond_4

    .line 32
    invoke-virtual {v0, v1}, Le/k/a/c/g0/e;->s(I)Ljava/lang/Class;

    move-result-object v3

    iget-object v5, p0, Le/k/a/c/h0/a;->f:[Le/k/a/c/h0/b;

    aget-object v5, v5, v1

    iget-object v5, v5, Le/k/a/c/h0/b;->a:Ljava/lang/Class;

    invoke-virtual {v3, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    goto :goto_1

    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    :cond_4
    move-object p1, v0

    :cond_5
    :goto_3
    if-eqz p1, :cond_6

    .line 33
    iput-object p1, p0, Le/k/a/c/h0/a;->e:Le/k/a/c/g0/e;

    return-void

    .line 34
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Failed to find the canonical Record constructor of type "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Le/k/a/c/h0/a;->a:Le/k/a/c/c;

    .line 35
    iget-object v0, v0, Le/k/a/c/c;->a:Le/k/a/c/i;

    .line 36
    invoke-static {v0}, Le/k/a/c/n0/g;->t(Le/k/a/c/i;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 37
    :cond_7
    throw p1
.end method
