.class public final Ls1/a/a/a/v0/b/h1/f$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/b/h1/f;-><init>(Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/b/f1/h;Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/b/r0;Ls1/a/a/a/v0/b/r;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ls1/a/a/a/v0/b/h1/f;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/h1/f;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/b/h1/f$b;->a:Ls1/a/a/a/v0/b/h1/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method public c()Ljava/util/Collection;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/f$b;->a:Ls1/a/a/a/v0/b/h1/f;

    .line 2
    check-cast v0, Ls1/a/a/a/v0/k/b/g0/l;

    invoke-virtual {v0}, Ls1/a/a/a/v0/k/b/g0/l;->G0()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/e0;->O0()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->c()Ljava/util/Collection;

    move-result-object v0

    const-string v1, "declarationDescriptor.un\u2026pe.constructor.supertypes"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/b/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/f$b;->a:Ls1/a/a/a/v0/b/h1/f;

    return-object v0
.end method

.method public e()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getParameters()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/f$b;->a:Ls1/a/a/a/v0/b/h1/f;

    check-cast v0, Ls1/a/a/a/v0/k/b/g0/l;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/l;->k:Ljava/util/List;

    if-eqz v0, :cond_0

    return-object v0

    :cond_0
    const-string v0, "typeConstructorParameters"

    invoke-static {v0}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 v0, 0x0

    throw v0
.end method

.method public q()Ls1/a/a/a/v0/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/h1/f$b;->a:Ls1/a/a/a/v0/b/h1/f;

    .line 2
    invoke-static {v0}, Ls1/a/a/a/v0/j/v/b;->f(Ls1/a/a/a/v0/b/k;)Ls1/a/a/a/v0/a/g;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[typealias "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/b/h1/f$b;->a:Ls1/a/a/a/v0/b/h1/f;

    .line 3
    invoke-virtual {v1}, Ls1/a/a/a/v0/b/h1/m;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v1

    invoke-virtual {v1}, Ls1/a/a/a/v0/f/e;->c()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 v1, 0x5d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
