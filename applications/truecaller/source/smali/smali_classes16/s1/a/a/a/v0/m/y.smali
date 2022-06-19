.class public abstract Ls1/a/a/a/v0/m/y;
.super Ls1/a/a/a/v0/m/i1;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/n1/f;


# instance fields
.field public final b:Ls1/a/a/a/v0/m/l0;

.field public final c:Ls1/a/a/a/v0/m/l0;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/l0;Ls1/a/a/a/v0/m/l0;)V
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ls1/a/a/a/v0/m/i1;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/v0/m/y;->b:Ls1/a/a/a/v0/m/l0;

    iput-object p2, p0, Ls1/a/a/a/v0/m/y;->c:Ls1/a/a/a/v0/m/l0;

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
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/y;->V0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->N0()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public O0()Ls1/a/a/a/v0/m/v0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/y;->V0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    return-object v0
.end method

.method public P0()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/y;->V0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->P0()Z

    move-result v0

    return v0
.end method

.method public abstract V0()Ls1/a/a/a/v0/m/l0;
.end method

.method public abstract W0(Ls1/a/a/a/v0/i/c;Ls1/a/a/a/v0/i/i;)Ljava/lang/String;
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/y;->V0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    return-object v0
.end method

.method public s()Ls1/a/a/a/v0/j/y/i;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/m/y;->V0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->s()Ls1/a/a/a/v0/j/y/i;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Ls1/a/a/a/v0/i/c;->b:Ls1/a/a/a/v0/i/c;

    invoke-virtual {v0, p0}, Ls1/a/a/a/v0/i/c;->w(Ls1/a/a/a/v0/m/e0;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
