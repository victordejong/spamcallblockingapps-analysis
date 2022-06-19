.class public final Lq3/b/l/l/k;
.super Lq3/b/l/l/a;
.source "SourceFile"


# instance fields
.field public final e:I

.field public f:I

.field public final g:Lq3/b/l/b;


# direct methods
.method public constructor <init>(Lq3/b/l/a;Lq3/b/l/b;)V
    .locals 1

    const-string v0, "json"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Lq3/b/l/l/a;-><init>(Lq3/b/l/a;Lq3/b/l/e;Ls1/z/c/f;)V

    iput-object p2, p0, Lq3/b/l/l/k;->g:Lq3/b/l/b;

    .line 2
    invoke-virtual {p2}, Lq3/b/l/b;->size()I

    move-result p1

    iput p1, p0, Lq3/b/l/l/k;->e:I

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Lq3/b/l/l/k;->f:I

    return-void
.end method


# virtual methods
.method public C(Ljava/lang/String;)Lq3/b/l/e;
    .locals 1

    const-string v0, "tag"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lq3/b/l/l/k;->g:Lq3/b/l/b;

    .line 2
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p1

    .line 3
    iget-object v0, v0, Lq3/b/l/b;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    const-string v0, "get(...)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lq3/b/l/e;

    return-object p1
.end method

.method public E(Lq3/b/i/d;I)Ljava/lang/String;
    .locals 1

    const-string v0, "desc"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public G()Lq3/b/l/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lq3/b/l/l/k;->g:Lq3/b/l/b;

    return-object v0
.end method

.method public q(Lq3/b/i/d;)I
    .locals 1

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget p1, p0, Lq3/b/l/l/k;->f:I

    iget v0, p0, Lq3/b/l/l/k;->e:I

    add-int/lit8 v0, v0, -0x1

    if-ge p1, v0, :cond_0

    add-int/lit8 p1, p1, 0x1

    .line 2
    iput p1, p0, Lq3/b/l/l/k;->f:I

    return p1

    :cond_0
    const/4 p1, -0x1

    return p1
.end method
