.class public final Le/a/b0/a/c/b;
.super Le/a/u2/a/a;
.source "SourceFile"

# interfaces
.implements Le/a/b0/a/c/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/a<",
        "Le/a/b0/a/c/d;",
        ">;",
        "Le/a/b0/a/c/c;"
    }
.end annotation


# instance fields
.field public final d:Lq3/a/b3/c;

.field public final e:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/Integer;",
            "Ljava/util/List<",
            "Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;",
            ">;>;"
        }
    .end annotation
.end field

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public final h:Le/a/p5/h0;


# direct methods
.method public constructor <init>(Ls1/w/f;Le/a/p5/h0;)V
    .locals 8
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "uiContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "resourceProvider"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/u2/a/a;-><init>(Ls1/w/f;)V

    iput-object p2, p0, Le/a/b0/a/c/b;->h:Le/a/p5/h0;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object v0

    iput-object v0, p0, Le/a/b0/a/c/b;->d:Lq3/a/b3/c;

    const/4 v0, 0x3

    new-array v1, v0, [Ls1/k;

    const/4 v2, 0x2

    .line 3
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v2, [Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    .line 4
    sget-object v5, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->Left:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v5, v4, p1

    .line 5
    sget-object v5, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->Right:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v5, v4, p2

    .line 6
    invoke-static {v4}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 7
    new-instance v6, Ls1/k;

    invoke-direct {v6, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v6, v1, p1

    .line 8
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    new-array v4, v0, [Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    .line 9
    sget-object v6, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->TopLeft:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v6, v4, p1

    aput-object v5, v4, p2

    .line 10
    sget-object v5, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->BottomLeft:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v5, v4, v2

    .line 11
    invoke-static {v4}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 12
    new-instance v7, Ls1/k;

    invoke-direct {v7, v3, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v7, v1, p2

    const/4 v3, 0x4

    .line 13
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    new-array v3, v3, [Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v6, v3, p1

    .line 14
    sget-object v6, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->TopRight:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v6, v3, p2

    aput-object v5, v3, v2

    .line 15
    sget-object v5, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;->BottomRight:Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    aput-object v5, v3, v0

    .line 16
    invoke-static {v3}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 17
    new-instance v3, Ls1/k;

    invoke-direct {v3, v4, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    aput-object v3, v1, v2

    .line 18
    invoke-static {v1}, Ls1/u/i;->W([Ls1/k;)Ljava/util/Map;

    move-result-object v0

    iput-object v0, p0, Le/a/b0/a/c/b;->e:Ljava/util/Map;

    .line 19
    new-instance v0, Le/a/b0/a/c/b$a;

    invoke-direct {v0, p1, p0}, Le/a/b0/a/c/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/a/c/b;->f:Ls1/g;

    .line 20
    new-instance p1, Le/a/b0/a/c/b$a;

    invoke-direct {p1, p2, p0}, Le/a/b0/a/c/b$a;-><init>(ILjava/lang/Object;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/b0/a/c/b;->g:Ls1/g;

    return-void
.end method


# virtual methods
.method public final Ij(Le/a/b0/a/c/m/b;Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;I)Le/a/b0/a/c/m/a$c;
    .locals 2

    .line 1
    iget-object p1, p1, Le/a/b0/a/c/m/b;->c:Ljava/lang/String;

    if-eqz p1, :cond_1

    .line 2
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const-string p1, ""

    .line 3
    :goto_1
    iget-object v0, p0, Le/a/b0/a/c/b;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Integer;

    .line 4
    aget-object v0, v0, p3

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 5
    iget-object v1, p0, Le/a/b0/a/c/b;->g:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Ljava/lang/Integer;

    .line 6
    aget-object p3, v1, p3

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    .line 7
    new-instance v1, Le/a/b0/a/c/m/a$c;

    invoke-direct {v1, p2, p1, v0, p3}, Le/a/b0/a/c/m/a$c;-><init>(Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;Ljava/lang/String;II)V

    return-object v1
.end method

.method public ub(Ljava/util/List;)Lq3/a/p1;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Le/a/b0/a/c/m/b;",
            ">;)",
            "Lq3/a/p1;"
        }
    .end annotation

    const-string v0, "configs"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-lt v0, v1, :cond_7

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x4

    if-gt v0, v1, :cond_6

    .line 3
    iget-object v0, p0, Le/a/b0/a/c/b;->e:Ljava/util/Map;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->H(Ljava/util/Map;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_4

    .line 6
    check-cast v4, Le/a/b0/a/c/m/b;

    .line 7
    iget-object v5, v4, Le/a/b0/a/c/m/b;->b:Ljava/lang/String;

    if-eqz v5, :cond_0

    .line 8
    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    .line 9
    iget-object v7, p0, Le/a/b0/a/c/b;->f:Ls1/g;

    invoke-interface {v7}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, [Ljava/lang/Integer;

    .line 10
    array-length v7, v7

    rem-int/2addr v5, v7

    invoke-static {v5}, Ljava/lang/Math;->abs(I)I

    move-result v5

    goto :goto_1

    :cond_0
    move v5, v2

    .line 11
    :goto_1
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;

    .line 12
    iget-boolean v7, v4, Le/a/b0/a/c/m/b;->d:Z

    if-eqz v7, :cond_1

    .line 13
    new-instance v4, Le/a/b0/a/c/m/a$d;

    invoke-direct {v4, v3}, Le/a/b0/a/c/m/a$d;-><init>(Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;)V

    goto :goto_2

    .line 14
    :cond_1
    iget-object v7, v4, Le/a/b0/a/c/m/b;->a:Ljava/lang/String;

    if-eqz v7, :cond_2

    .line 15
    new-instance v8, Le/a/b0/a/c/m/a$b;

    .line 16
    invoke-virtual {p0, v4, v3, v5}, Le/a/b0/a/c/b;->Ij(Le/a/b0/a/c/m/b;Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;I)Le/a/b0/a/c/m/a$c;

    move-result-object v4

    .line 17
    invoke-direct {v8, v3, v7, v4}, Le/a/b0/a/c/m/a$b;-><init>(Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;Ljava/lang/String;Le/a/b0/a/c/m/a$c;)V

    move-object v4, v8

    goto :goto_2

    .line 18
    :cond_2
    iget-object v7, v4, Le/a/b0/a/c/m/b;->c:Ljava/lang/String;

    if-eqz v7, :cond_3

    .line 19
    invoke-virtual {p0, v4, v3, v5}, Le/a/b0/a/c/b;->Ij(Le/a/b0/a/c/m/b;Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;I)Le/a/b0/a/c/m/a$c;

    move-result-object v4

    goto :goto_2

    .line 20
    :cond_3
    new-instance v4, Le/a/b0/a/c/m/a$a;

    invoke-direct {v4, v3}, Le/a/b0/a/c/m/a$a;-><init>(Lcom/truecaller/common/ui/groupavatar/config/GroupAvatarTilePosition;)V

    .line 21
    :goto_2
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 22
    :cond_4
    invoke-static {}, Ls1/u/i;->N0()V

    throw v5

    :cond_5
    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 23
    new-instance v10, Le/a/b0/a/c/b$b;

    invoke-direct {v10, p0, v1, v5}, Le/a/b0/a/c/b$b;-><init>(Le/a/b0/a/c/b;Ljava/util/List;Ls1/w/d;)V

    const/4 v11, 0x3

    const/4 v12, 0x0

    move-object v7, p0

    invoke-static/range {v7 .. v12}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1

    .line 24
    :cond_6
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Maximum size for group tiles is 4"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 25
    :cond_7
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Minimum size for group tiles is 2"

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
