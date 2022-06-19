.class public final Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView$showTiles$2"
    f = "GroupAvatarXView.kt"
    l = {
        0x58,
        0x5b,
        0x62
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:Ljava/lang/Object;

.field public h:Ljava/lang/Object;

.field public i:Ljava/lang/Object;

.field public j:I

.field public final synthetic k:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

.field public final synthetic l:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ljava/util/List;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->k:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iput-object p2, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->l:Ljava/util/List;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;

    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->k:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->l:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ljava/util/List;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;

    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->k:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->l:Ljava/util/List;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;Ljava/util/List;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->j:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->i:Ljava/lang/Object;

    iget-object v3, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->h:Ljava/lang/Object;

    check-cast v3, Ljava/util/Map;

    iget-object v4, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->g:Ljava/lang/Object;

    check-cast v4, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iget-object v5, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->f:Ljava/lang/Object;

    check-cast v5, Ljava/util/Iterator;

    iget-object v6, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->e:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    move-object v7, v5

    move-object v5, v4

    move-object v4, v6

    move-object v6, v1

    move-object v1, v0

    move-object v0, p0

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->k:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    iput v4, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->j:I

    invoke-virtual {p1, p0}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->g(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 5
    :cond_4
    :goto_0
    new-instance p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;Ls1/w/d;)V

    iput v3, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->j:I

    invoke-static {p1, p0}, Ls1/a/a/a/v0/f/d;->o0(Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_5

    return-object v0

    .line 6
    :cond_5
    :goto_1
    check-cast p1, Ljava/util/Map;

    .line 7
    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->k:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    .line 8
    new-instance v3, Ljava/util/LinkedHashMap;

    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v4

    invoke-static {v4}, Le/q/f/a/d/a;->Y1(I)I

    move-result v4

    invoke-direct {v3, v4}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 9
    invoke-interface {p1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object p1

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    move-object v5, p1

    move-object v4, v1

    move-object p1, p0

    :goto_2
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 11
    check-cast v1, Ljava/util/Map$Entry;

    .line 12
    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/n0;

    .line 13
    iput-object v3, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->e:Ljava/lang/Object;

    iput-object v5, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->f:Ljava/lang/Object;

    iput-object v4, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->g:Ljava/lang/Object;

    iput-object v3, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->h:Ljava/lang/Object;

    iput-object v6, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->i:Ljava/lang/Object;

    iput v2, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->j:I

    invoke-interface {v1, p1}, Lq3/a/n0;->s(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v7, v5

    move-object v5, v4

    move-object v4, v3

    move-object v8, v0

    move-object v0, p1

    move-object p1, v1

    move-object v1, v8

    :goto_3
    check-cast p1, Landroid/graphics/drawable/Drawable;

    invoke-interface {v3, v6, p1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    move-object v0, v1

    move-object v3, v4

    move-object v4, v5

    move-object v5, v7

    goto :goto_2

    .line 14
    :cond_7
    invoke-static {v3}, Ls1/u/i;->W0(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    .line 15
    iput-object v0, v4, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;->e:Ljava/util/Map;

    .line 16
    iget-object p1, p1, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->k:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView;

    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 17
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
