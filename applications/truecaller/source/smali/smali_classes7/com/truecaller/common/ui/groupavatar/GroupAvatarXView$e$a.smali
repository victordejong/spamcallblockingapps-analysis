.class public final Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
        "Ljava/util/Map<",
        "Le/a/b0/a/c/m/a;",
        "+",
        "Lq3/a/n0<",
        "+",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;>;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.common.ui.groupavatar.GroupAvatarXView$showTiles$2$asyncDrawables$1"
    f = "GroupAvatarXView.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public synthetic e:Ljava/lang/Object;

.field public final synthetic f:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->f:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

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

    const-string v0, "completion"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->f:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;

    invoke-direct {v0, v1, p2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->e:Ljava/lang/Object;

    return-object v0
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;

    iget-object v1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->f:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;

    invoke-direct {v0, v1, p2}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;-><init>(Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;Ls1/w/d;)V

    iput-object p1, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->e:Ljava/lang/Object;

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 9

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->e:Ljava/lang/Object;

    check-cast p1, Lq3/a/i0;

    .line 2
    iget-object v0, p0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;->f:Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;

    iget-object v0, v0, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e;->l:Ljava/util/List;

    .line 3
    new-instance v6, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {v0, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v6, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    move-object v8, v0

    check-cast v8, Le/a/b0/a/c/m/a;

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 6
    new-instance v3, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;

    const/4 v0, 0x0

    invoke-direct {v3, v8, v0, p0, p1}, Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a$a;-><init>(Le/a/b0/a/c/m/a;Ls1/w/d;Lcom/truecaller/common/ui/groupavatar/GroupAvatarXView$e$a;Lq3/a/i0;)V

    const/4 v4, 0x3

    const/4 v5, 0x0

    move-object v0, p1

    invoke-static/range {v0 .. v5}, Ls1/a/a/a/v0/f/d;->H(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/n0;

    move-result-object v0

    .line 7
    new-instance v1, Ls1/k;

    invoke-direct {v1, v8, v0}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 8
    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-static {v6}, Ls1/u/i;->V0(Ljava/lang/Iterable;)Ljava/util/Map;

    move-result-object p1

    return-object p1
.end method
