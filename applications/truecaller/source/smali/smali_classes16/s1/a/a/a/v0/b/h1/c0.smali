.class public abstract Ls1/a/a/a/v0/b/h1/c0;
.super Ls1/a/a/a/v0/b/h1/n;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/c0;


# instance fields
.field public final e:Ls1/a/a/a/v0/f/b;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/f/b;)V
    .locals 3

    const-string v0, "module"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "fqName"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/f1/h;->c0:Ls1/a/a/a/v0/b/f1/h$a;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object v0, Ls1/a/a/a/v0/b/f1/h$a;->a:Ls1/a/a/a/v0/b/f1/h;

    .line 4
    invoke-virtual {p2}, Ls1/a/a/a/v0/f/b;->h()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    sget-object v2, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    invoke-direct {p0, p1, v0, v1, v2}, Ls1/a/a/a/v0/b/h1/n;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;)V

    iput-object p2, p0, Ls1/a/a/a/v0/b/h1/c0;->e:Ls1/a/a/a/v0/f/b;

    return-void
.end method


# virtual methods
.method public b()Ls1/a/a/a/v0/b/a0;
    .locals 2

    .line 2
    invoke-super {p0}, Ls1/a/a/a/v0/b/h1/n;->b()Ls1/a/a/a/v0/b/k;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ModuleDescriptor"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ls1/a/a/a/v0/b/a0;

    return-object v0
.end method

.method public bridge synthetic b()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/h1/c0;->b()Ls1/a/a/a/v0/b/a0;

    move-result-object v0

    return-object v0
.end method

.method public final d()Ls1/a/a/a/v0/f/b;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/c0;->e:Ls1/a/a/a/v0/f/b;

    return-object v0
.end method

.method public d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            "D:",
            "Ljava/lang/Object;",
            ">(",
            "Ls1/a/a/a/v0/b/m<",
            "TR;TD;>;TD;)TR;"
        }
    .end annotation

    const-string v0, "visitor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0, p2}, Ls1/a/a/a/v0/b/m;->k(Ls1/a/a/a/v0/b/c0;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 2

    .line 1
    sget-object v0, Ls1/a/a/a/v0/b/r0;->a:Ls1/a/a/a/v0/b/r0;

    const-string v1, "SourceElement.NO_SOURCE"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "package "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/c0;->e:Ls1/a/a/a/v0/f/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
