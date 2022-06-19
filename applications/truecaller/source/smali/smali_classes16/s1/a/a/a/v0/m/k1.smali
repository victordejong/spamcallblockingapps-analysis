.class public abstract Ls1/a/a/a/v0/m/k1;
.super Ls1/a/a/a/v0/m/e0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/m/e0;-><init>(Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public N0()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/y0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/k1;->S0()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public O0()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/k1;->S0()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    return-object v0
.end method

.method public P0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/k1;->S0()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v0

    return v0
.end method

.method public final R0()Ls1/a/a/a/v0/m/i1;
    .locals 2

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/k1;->S0()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    .line 2
    :goto_0
    instance-of v1, v0, Ls1/a/a/a/v0/m/k1;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Ls1/a/a/a/v0/m/k1;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/k1;->S0()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.types.UnwrappedType"

    .line 4
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/m/i1;

    return-object v0
.end method

.method public abstract S0()Ls1/a/a/a/v0/m/e0;
.end method

.method public T0()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/k1;->S0()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    return-object v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/k1;->S0()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/k1;->T0()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/k1;->S0()Ls1/a/a/a/v0/m/e0;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    :cond_0
    const-string v0, "<Not computed yet>"

    :goto_0
    return-object v0
.end method
