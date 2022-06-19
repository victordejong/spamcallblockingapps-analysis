.class public final Le/a/d/c/a/p/a/h;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/d/c/a/p/a/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/d/c/a/p/a/e;",
        ">;",
        "Le/a/d/c/a/p/a/c;"
    }
.end annotation


# instance fields
.field public final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "Le/a/d/c0/z1/e;",
            ">;"
        }
    .end annotation
.end field

.field public e:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set<",
            "+",
            "Le/a/d/v/l/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/d/c0/z1/e;",
            ">;"
        }
    .end annotation
.end field

.field public g:Z

.field public h:Z

.field public i:Z

.field public j:Lq3/a/p1;

.field public k:Le/a/d/c/a/p/a/d;

.field public final l:Ls1/w/f;

.field public final m:Ls1/w/f;

.field public final n:Le/a/d/v/d;

.field public final o:Le/a/d/w/d;

.field public final p:Le/a/p5/c0;

.field public final q:Le/a/s2/a;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/d/v/d;Le/a/d/w/d;Le/a/p5/c0;Le/a/s2/a;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "groupCallManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "invitationManager"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "announce"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/d/c/a/p/a/h;->l:Ls1/w/f;

    iput-object p2, p0, Le/a/d/c/a/p/a/h;->m:Ls1/w/f;

    iput-object p3, p0, Le/a/d/c/a/p/a/h;->n:Le/a/d/v/d;

    iput-object p4, p0, Le/a/d/c/a/p/a/h;->o:Le/a/d/w/d;

    iput-object p5, p0, Le/a/d/c/a/p/a/h;->p:Le/a/p5/c0;

    iput-object p6, p0, Le/a/d/c/a/p/a/h;->q:Le/a/s2/a;

    .line 2
    new-instance p1, Ljava/util/LinkedHashSet;

    invoke-direct {p1}, Ljava/util/LinkedHashSet;-><init>()V

    iput-object p1, p0, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    .line 3
    sget-object p1, Ls1/u/u;->a:Ls1/u/u;

    iput-object p1, p0, Le/a/d/c/a/p/a/h;->e:Ljava/util/Set;

    .line 4
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Le/a/d/c/a/p/a/h;->f:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final Ij(Le/a/d/c0/z1/e;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/e;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/d/c/a/p/a/e;->g(Le/a/d/c0/z1/e;)V

    :cond_0
    return-void
.end method

.method public final Jj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c/a/p/a/h;->f:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/c0/z1/e;

    .line 3
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/p/a/e;

    if-eqz v2, :cond_0

    .line 4
    iget v1, v1, Le/a/d/c0/z1/e;->a:I

    .line 5
    invoke-interface {v2, v1}, Le/a/d/c/a/p/a/e;->h0(I)V

    goto :goto_0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/d/c/a/p/a/h;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public final Kj(Le/a/d/c0/z1/e;)V
    .locals 6

    .line 1
    new-instance v3, Le/a/d/c/a/p/a/h$b;

    const/4 v0, 0x0

    invoke-direct {v3, p0, p1, v0}, Le/a/d/c/a/p/a/h$b;-><init>(Le/a/d/c/a/p/a/h;Le/a/d/c0/z1/e;Ls1/w/d;)V

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    .line 2
    new-instance v0, Le/a/d/c/a/p/a/h$a;

    invoke-direct {v0, p0}, Le/a/d/c/a/p/a/h$a;-><init>(Le/a/d/c/a/p/a/h;)V

    move-object v1, p1

    check-cast v1, Lq3/a/u1;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 3
    invoke-virtual {v1, v2, v3, v0}, Lq3/a/u1;->n0(ZZLs1/z/b/l;)Lq3/a/v0;

    .line 4
    iput-object p1, p0, Le/a/d/c/a/p/a/h;->j:Lq3/a/p1;

    return-void
.end method

.method public final Lj(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Le/a/d/c0/z1/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "to delete: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, " | current: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/d/c/a/p/a/h;->d:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    .line 3
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/d/c/a/p/a/e;

    if-eqz p1, :cond_0

    .line 4
    invoke-interface {p1}, Le/a/d/c/a/p/a/e;->H0()V

    .line 5
    invoke-interface {p1}, Le/a/d/c/a/p/a/e;->C()V

    :cond_0
    return-void
.end method

.method public final Mj()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/d/c/a/p/a/h;->e:Ljava/util/Set;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/v/l/a;

    .line 3
    iget-object v2, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/p/a/e;

    if-eqz v2, :cond_0

    invoke-interface {v2, v1}, Le/a/d/c/a/p/a/e;->setCallOnTile(Le/a/d/v/l/a;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 13

    .line 1
    check-cast p1, Le/a/d/c/a/p/a/e;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    new-instance v4, Le/a/d/c/a/p/a/l;

    const/4 p1, 0x0

    invoke-direct {v4, p0, p1}, Le/a/d/c/a/p/a/l;-><init>(Le/a/d/c/a/p/a/h;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    .line 5
    new-instance v10, Le/a/d/c/a/p/a/j;

    invoke-direct {v10, p0, p1}, Le/a/d/c/a/p/a/j;-><init>(Le/a/d/c/a/p/a/h;Ls1/w/d;)V

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/d/c/a/p/a/e;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/d/c/a/p/a/e;->s0()V

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/d/c/a/p/a/h;->q:Le/a/s2/a;

    invoke-interface {v0}, Le/a/s2/a;->release()V

    .line 3
    invoke-super {p0}, Le/a/u2/a/a;->c()V

    return-void
.end method
