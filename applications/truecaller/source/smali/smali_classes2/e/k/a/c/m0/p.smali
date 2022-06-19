.class public Le/k/a/c/m0/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/k/a/c/m0/p$a;
    }
.end annotation


# instance fields
.field public final a:Le/k/a/c/m0/o;


# direct methods
.method public constructor <init>(Le/k/a/c/m0/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/m0/p;->a:Le/k/a/c/m0/o;

    return-void
.end method


# virtual methods
.method public a(Le/k/a/c/m0/p$a;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;
    .locals 4

    .line 1
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    .line 2
    iget-object v2, p1, Le/k/a/c/m0/p$a;->a:Ljava/lang/String;

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const/4 v3, 0x1

    .line 3
    iget p1, p1, Le/k/a/c/m0/p$a;->b:I

    invoke-virtual {v2, p1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    aput-object p1, v1, v3

    const/4 p1, 0x2

    aput-object p2, v1, p1

    const-string p1, "Failed to parse type \'%s\' (remaining: \'%s\'): %s"

    .line 4
    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    return-object v0
.end method

.method public b(Le/k/a/c/m0/p$a;)Le/k/a/c/i;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Le/k/a/c/m0/p$a;->hasMoreTokens()Z

    move-result v0

    const-string v1, "Unexpected end-of-string"

    if-eqz v0, :cond_6

    .line 2
    invoke-virtual {p1}, Le/k/a/c/m0/p$a;->nextToken()Ljava/lang/String;

    move-result-object v0

    .line 3
    :try_start_0
    iget-object v2, p0, Le/k/a/c/m0/p;->a:Le/k/a/c/m0/o;

    invoke-virtual {v2, v0}, Le/k/a/c/m0/o;->m(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 4
    invoke-virtual {p1}, Le/k/a/c/m0/p$a;->hasMoreTokens()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_5

    .line 5
    invoke-virtual {p1}, Le/k/a/c/m0/p$a;->nextToken()Ljava/lang/String;

    move-result-object v2

    const-string v4, "<"

    .line 6
    invoke-virtual {v4, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 7
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 8
    :goto_0
    invoke-virtual {p1}, Le/k/a/c/m0/p$a;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 9
    invoke-virtual {p0, p1}, Le/k/a/c/m0/p;->b(Le/k/a/c/m0/p$a;)Le/k/a/c/i;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 10
    invoke-virtual {p1}, Le/k/a/c/m0/p$a;->hasMoreTokens()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 11
    invoke-virtual {p1}, Le/k/a/c/m0/p$a;->nextToken()Ljava/lang/String;

    move-result-object v4

    const-string v5, ">"

    .line 12
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 13
    sget-object p1, Le/k/a/c/m0/n;->f:[Le/k/a/c/i;

    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 14
    :cond_0
    invoke-virtual {v2, p1}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Le/k/a/c/i;

    .line 15
    :goto_1
    invoke-static {v0, p1}, Le/k/a/c/m0/n;->c(Ljava/lang/Class;[Le/k/a/c/i;)Le/k/a/c/m0/n;

    move-result-object p1

    .line 16
    iget-object v1, p0, Le/k/a/c/m0/p;->a:Le/k/a/c/m0/o;

    invoke-virtual {v1, v3, v0, p1}, Le/k/a/c/m0/o;->c(Le/k/a/c/m0/c;Ljava/lang/Class;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    return-object p1

    :cond_1
    const-string v5, ","

    .line 17
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    goto :goto_0

    .line 18
    :cond_2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unexpected token \'"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "\', expected \',\' or \'>\')"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/k/a/c/m0/p;->a(Le/k/a/c/m0/p$a;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 19
    :cond_3
    invoke-virtual {p0, p1, v1}, Le/k/a/c/m0/p;->a(Le/k/a/c/m0/p$a;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 20
    :cond_4
    iput-object v2, p1, Le/k/a/c/m0/p$a;->c:Ljava/lang/String;

    .line 21
    :cond_5
    iget-object p1, p0, Le/k/a/c/m0/p;->a:Le/k/a/c/m0/o;

    .line 22
    sget-object v1, Le/k/a/c/m0/n;->g:Le/k/a/c/m0/n;

    .line 23
    invoke-virtual {p1, v3, v0, v1}, Le/k/a/c/m0/o;->c(Le/k/a/c/m0/c;Ljava/lang/Class;Le/k/a/c/m0/n;)Le/k/a/c/i;

    move-result-object p1

    return-object p1

    :catch_0
    move-exception v1

    .line 24
    invoke-static {v1}, Le/k/a/c/n0/g;->K(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    .line 25
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Cannot locate class \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "\', problem: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, p1, v0}, Le/k/a/c/m0/p;->a(Le/k/a/c/m0/p$a;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1

    .line 26
    :cond_6
    invoke-virtual {p0, p1, v1}, Le/k/a/c/m0/p;->a(Le/k/a/c/m0/p$a;Ljava/lang/String;)Ljava/lang/IllegalArgumentException;

    move-result-object p1

    throw p1
.end method
