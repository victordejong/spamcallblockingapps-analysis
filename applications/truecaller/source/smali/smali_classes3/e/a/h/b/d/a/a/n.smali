.class public final Le/a/h/b/d/a/a/n;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/h/b/d/a/a/m;",
        ">;",
        "Le/a/h/b/d/a/a/l;"
    }
.end annotation


# instance fields
.field public b:Le/a/h/b/d/a/a/m;


# direct methods
.method public constructor <init>()V
    .locals 0
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    return-void
.end method


# virtual methods
.method public B0()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Le/a/h/b/d/a/a/m;->B0()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :goto_0
    invoke-interface {v0, v2}, Le/a/h/b/d/a/a/m;->M3(Z)V

    :cond_1
    return-void
.end method

.method public E0(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/h/b/v0/a;",
            ">;",
            "Ljava/util/List<",
            "Le/a/h/b/v0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldItems"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItems"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/h/b/d/a/a/m;->E0(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h/b/d/a/a/m;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Le/a/h/b/d/a/a/m;->B0()I

    move-result p2

    const/4 v0, 0x1

    if-ge p2, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-interface {p1, v0}, Le/a/h/b/d/a/a/m;->M3(Z)V

    return-void
.end method

.method public H0(Le/a/h/b/z0/a;Le/a/h/b/z0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/h/b/d/a/a/m;->H0(Le/a/h/b/z0/a;Le/a/h/b/z0/a;)V

    :cond_0
    return-void
.end method

.method public Y0(Le/a/h/b/d/a/a/e0/a;Le/a/h/b/d/a/a/e0/a;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/h/b/d/a/a/m;->Y0(Le/a/h/b/d/a/a/e0/a;Le/a/h/b/d/a/a/e0/a;)V

    :cond_0
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h/b/d/a/a/m;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Le/a/h/b/d/a/a/m;->S3()V

    .line 4
    iput-object p1, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    return-void
.end method

.method public d1(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/h/b/x0/a;",
            ">;",
            "Ljava/util/List<",
            "Le/a/h/b/x0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldItems"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItems"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/h/b/d/a/a/m;->d1(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method

.method public o1(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "itemPositions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/h/b/d/a/a/m;->o1(Ljava/util/Set;)V

    :cond_0
    return-void
.end method

.method public r0(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/h/b/d/a/a/m;->r0(I)V

    :cond_0
    return-void
.end method

.method public w(Ljava/util/List;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/h/b/u0/a;",
            ">;",
            "Ljava/util/List<",
            "Le/a/h/b/u0/a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "oldItems"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newItems"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2}, Le/a/h/b/d/a/a/m;->g3(Ljava/util/List;Ljava/util/List;)V

    :cond_0
    return-void
.end method

.method public y(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/h/b/d/a/a/m;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Le/a/h/b/d/a/a/m;->K4()V

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Le/a/h/b/d/a/a/n;->b:Le/a/h/b/d/a/a/m;

    return-void
.end method
