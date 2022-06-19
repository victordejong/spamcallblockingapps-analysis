.class public final Lq3/b/l/l/l;
.super Lq3/b/l/l/j;
.source "SourceFile"


# instance fields
.field public final i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final j:I

.field public k:I

.field public final l:Lq3/b/l/j;


# direct methods
.method public constructor <init>(Lq3/b/l/a;Lq3/b/l/j;)V
    .locals 7

    const-string v0, "json"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v1 .. v6}, Lq3/b/l/l/j;-><init>(Lq3/b/l/a;Lq3/b/l/j;Ljava/lang/String;Lq3/b/i/d;I)V

    iput-object p2, p0, Lq3/b/l/l/l;->l:Lq3/b/l/j;

    .line 2
    invoke-virtual {p2}, Lq3/b/l/j;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-static {p1}, Ls1/u/i;->S0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lq3/b/l/l/l;->i:Ljava/util/List;

    .line 3
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    mul-int/lit8 p1, p1, 0x2

    iput p1, p0, Lq3/b/l/l/l;->j:I

    const/4 p1, -0x1

    .line 4
    iput p1, p0, Lq3/b/l/l/l;->k:I

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lq3/b/l/e;
    .locals 2

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lq3/b/l/l/l;->k:I

    rem-int/lit8 v0, v0, 0x2

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lq3/b/l/h;

    const/4 v1, 0x1

    invoke-direct {v0, p1, v1}, Lq3/b/l/h;-><init>(Ljava/lang/Object;Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lq3/b/l/l/l;->l:Lq3/b/l/j;

    .line 4
    invoke-static {v0, p1}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Lq3/b/l/e;

    :goto_0
    return-object v0
.end method

.method public E(Lq3/b/i/d;I)Ljava/lang/String;
    .locals 1

    const-string v0, "desc"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    div-int/lit8 p2, p2, 0x2

    .line 2
    iget-object p1, p0, Lq3/b/l/l/l;->i:Ljava/util/List;

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public G()Lq3/b/l/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/l/l/l;->l:Lq3/b/l/j;

    return-object v0
.end method

.method public I()Lq3/b/l/j;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/l/l/l;->l:Lq3/b/l/j;

    return-object v0
.end method

.method public b(Lq3/b/i/d;)V
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public q(Lq3/b/i/d;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lq3/b/l/l/l;->k:I

    iget v0, p0, Lq3/b/l/l/l;->j:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lq3/b/l/l/l;->k:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
