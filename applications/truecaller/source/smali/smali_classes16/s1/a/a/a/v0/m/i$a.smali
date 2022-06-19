.class public final Ls1/a/a/a/v0/m/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/m/v0;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/m/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/a/a/a/v0/m/l1/e;

.field public final synthetic c:Ls1/a/a/a/v0/m/i;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/i;Ls1/a/a/a/v0/m/l1/e;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/m/l1/e;",
            ")V"
        }
    .end annotation

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Ls1/a/a/a/v0/m/i$a;->b:Ls1/a/a/a/v0/m/l1/e;

    .line 2
    sget-object p1, Ls1/h;->b:Ls1/h;

    new-instance p2, Ls1/a/a/a/v0/m/i$a$a;

    invoke-direct {p2, p0}, Ls1/a/a/a/v0/m/i$a$a;-><init>(Ls1/a/a/a/v0/m/i$a;)V

    invoke-static {p1, p2}, Le/q/f/a/d/a;->O1(Ls1/h;Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Ls1/a/a/a/v0/m/i$a;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;
    .locals 1

    const-string v0, "kotlinTypeRefiner"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/m/i;->a(Ls1/a/a/a/v0/m/l1/e;)Ls1/a/a/a/v0/m/v0;

    move-result-object p1

    return-object p1
.end method

.method public c()Ljava/util/Collection;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    return-object v0
.end method

.method public d()Ls1/a/a/a/v0/b/h;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v0}, Ls1/a/a/a/v0/m/i;->d()Ls1/a/a/a/v0/b/h;

    move-result-object v0

    return-object v0
.end method

.method public e()Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->e()Z

    move-result v0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public getParameters()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/b/w0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->getParameters()Ljava/util/List;

    move-result-object v0

    const-string v1, "this@AbstractTypeConstructor.parameters"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    return v0
.end method

.method public q()Ls1/a/a/a/v0/a/g;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-interface {v0}, Ls1/a/a/a/v0/m/v0;->q()Ls1/a/a/a/v0/a/g;

    move-result-object v0

    const-string v1, "this@AbstractTypeConstructor.builtIns"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/m/i$a;->c:Ls1/a/a/a/v0/m/i;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
