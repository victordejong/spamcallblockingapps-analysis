.class public abstract Ls1/a/a/a/v0/m/s;
.super Ls1/a/a/a/v0/m/l0;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/v0/m/l0;-><init>()V

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->X0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public O0()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->X0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    return-object v0
.end method

.method public P0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->X0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v0

    return v0
.end method

.method public bridge synthetic Q0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/e0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/s;->Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic T0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/i1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/s;->Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l0;

    move-result-object p1

    return-object p1
.end method

.method public abstract X0()Ls1/a/a/a/v0/m/l0;
.end method

.method public Y0(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/l0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->X0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {p1, v0}, Ls1/a/a/a/v0/m/l1/e;->g(Ls1/a/a/a/v0/m/e0;)Ls1/a/a/a/v0/m/e0;

    move-result-object p1

    const-string v0, "null cannot be cast to non-null type org.jetbrains.kotlin.types.SimpleType"

    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p1, Ls1/a/a/a/v0/m/l0;

    invoke-virtual {p0, p1}, Ls1/a/a/a/v0/m/s;->Z0(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/s;

    move-result-object p1

    return-object p1
.end method

.method public abstract Z0(Ls1/a/a/a/v0/m/l0;)Ls1/a/a/a/v0/m/s;
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->X0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    return-object v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/s;->X0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    return-object v0
.end method
