.class public final Ls1/a/a/a/v0/b/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/b/w0;


# instance fields
.field public final a:Ls1/a/a/a/v0/b/w0;

.field public final b:Ls1/a/a/a/v0/b/k;

.field public final c:I


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/w0;Ls1/a/a/a/v0/b/k;I)V
    .locals 1

    const-string v0, "originalDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "declarationDescriptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    iput-object p2, p0, Ls1/a/a/a/v0/b/c;->b:Ls1/a/a/a/v0/b/k;

    iput p3, p0, Ls1/a/a/a/v0/b/c;->c:I

    return-void
.end method


# virtual methods
.method public F()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/h;
    .locals 1

    .line 1
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/c;->a()Ls1/a/a/a/v0/b/w0;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic a()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 2
    invoke-virtual {p0}, Ls1/a/a/a/v0/b/c;->a()Ls1/a/a/a/v0/b/w0;

    move-result-object v0

    return-object v0
.end method

.method public a()Ls1/a/a/a/v0/b/w0;
    .locals 2

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/w0;->a()Ls1/a/a/a/v0/b/w0;

    move-result-object v0

    const-string v1, "originalDescriptor.original"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public b()Ls1/a/a/a/v0/b/k;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->b:Ls1/a/a/a/v0/b/k;

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

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0, p1, p2}, Ls1/a/a/a/v0/b/k;->d0(Ls1/a/a/a/v0/b/m;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getAnnotations()Ls1/a/a/a/v0/b/f1/h;
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/f1/a;->getAnnotations()Ls1/a/a/a/v0/b/f1/h;

    move-result-object v0

    return-object v0
.end method

.method public getName()Ls1/a/a/a/v0/f/e;
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/k;->getName()Ls1/a/a/a/v0/f/e;

    move-result-object v0

    return-object v0
.end method

.method public getSource()Ls1/a/a/a/v0/b/r0;
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/n;->getSource()Ls1/a/a/a/v0/b/r0;

    move-result-object v0

    return-object v0
.end method

.method public getUpperBounds()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Ls1/a/a/a/v0/m/e0;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/w0;->getUpperBounds()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public j()I
    .locals 2

    .line 1
    iget v0, p0, Ls1/a/a/a/v0/b/c;->c:I

    iget-object v1, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v1}, Ls1/a/a/a/v0/b/w0;->j()I

    move-result v1

    add-int/2addr v1, v0

    return v1
.end method

.method public k()Ls1/a/a/a/v0/m/j1;
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/w0;->k()Ls1/a/a/a/v0/m/j1;

    move-result-object v0

    return-object v0
.end method

.method public l0()Ls1/a/a/a/v0/l/m;
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/w0;->l0()Ls1/a/a/a/v0/l/m;

    move-result-object v0

    return-object v0
.end method

.method public o()Ls1/a/a/a/v0/m/v0;
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/w0;->o()Ls1/a/a/a/v0/m/v0;

    move-result-object v0

    return-object v0
.end method

.method public t()Ls1/a/a/a/v0/m/l0;
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/h;->t()Ls1/a/a/a/v0/m/l0;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "[inner-copy]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public w()Z
    .locals 1

    iget-object v0, p0, Ls1/a/a/a/v0/b/c;->a:Ls1/a/a/a/v0/b/w0;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/w0;->w()Z

    move-result v0

    return v0
.end method
