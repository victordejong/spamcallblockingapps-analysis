.class public abstract Ls1/a/a/a/v0/m/l0;
.super Ls1/a/a/a/v0/m/i1;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/n1/i;
.implements Ls1/a/a/a/v0/m/n1/j;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/m/i1;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic S0(Z)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/l0;->V0(Z)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method

.method public abstract V0(Z)Ls1/a/a/a/v0/m/l0;
.end method

.method public abstract W0(Ls1/a/a/a/v0/b/f1/h;)Ls1/a/a/a/v0/m/l0;
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .line 1
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    .line 2
    invoke-interface {p0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ls1/a/a/a/v0/b/f1/c;

    const/4 v3, 0x3

    new-array v4, v3, [Ljava/lang/String;

    const-string v5, "["

    const/4 v6, 0x0

    aput-object v5, v4, v6

    .line 3
    sget-object v5, Ls1/a/a/a/v0/i/c;->b:Ls1/a/a/a/v0/i/c;

    const/4 v7, 0x0

    const/4 v8, 0x2

    invoke-static {v5, v1, v7, v8, v7}, Ls1/a/a/a/v0/i/c;->s(Ls1/a/a/a/v0/i/c;Ls1/a/a/a/v0/b/f1/c;Ls1/a/a/a/v0/b/f1/e;ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v4, v2

    const-string v1, "] "

    aput-object v1, v4, v8

    const-string v1, "$this$append"

    .line 4
    invoke-static {v9, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "value"

    invoke-static {v4, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    if-ge v6, v3, :cond_0

    .line 5
    aget-object v1, v4, v6

    .line 6
    invoke-virtual {v9, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 8
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v2

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/16 v8, 0x70

    const-string v2, ", "

    const-string v3, "<"

    const-string v4, ">"

    move-object v1, v9

    invoke-static/range {v0 .. v8}, Ls1/u/i;->M(Ljava/lang/Iterable;Ljava/lang/Appendable;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Ljava/lang/CharSequence;ILjava/lang/CharSequence;Ls1/z/b/l;I)Ljava/lang/Appendable;

    .line 9
    :cond_2
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v0

    if-eqz v0, :cond_3

    const-string v0, "?"

    invoke-virtual {v9, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    :cond_3
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "StringBuilder().apply(builderAction).toString()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
