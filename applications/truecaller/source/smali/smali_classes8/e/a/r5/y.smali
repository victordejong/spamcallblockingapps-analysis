.class public final Le/a/r5/y;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/r5/x;


# instance fields
.field public final a:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public final b:Le/a/b0/a/b/a;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 11

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/r5/y;->c:Landroid/view/View;

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object v0, p0, Le/a/r5/y;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    .line 3
    new-instance v1, Le/a/b0/a/b/a;

    new-instance v2, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "view.context"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v1, p0, Le/a/r5/y;->b:Le/a/b0/a/b/a;

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/16 v10, 0xc

    move-object v5, p1

    move-object v6, p2

    move-object v7, p0

    .line 4
    invoke-static/range {v5 .. v10}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    .line 5
    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 6
    sget-object p1, Lcom/truecaller/common/ui/listitem/ListItemX$Action;->INFO:Lcom/truecaller/common/ui/listitem/ListItemX$Action;

    const/4 p2, 0x0

    const/4 v2, 0x2

    invoke-static {v0, p1, p2, v2, p2}, Lcom/truecaller/common/ui/listitem/ListItemX;->k1(Lcom/truecaller/common/ui/listitem/ListItemX;Lcom/truecaller/common/ui/listitem/ListItemX$Action;Ls1/z/b/l;ILjava/lang/Object;)V

    .line 7
    invoke-virtual {v0, v1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setAvatarPresenter(Le/a/b0/a/b/a;)V

    return-void
.end method


# virtual methods
.method public T(J)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/r5/y;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v1, p1, p2, v2}, Le/a/b0/q/m;->i(Landroid/content/Context;JZ)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    invoke-static/range {v0 .. v5}, Lcom/truecaller/common/ui/listitem/ListItemX;->v1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/String;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;ZILjava/lang/Object;)V

    return-void
.end method

.method public a(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "avatar"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/r5/y;->b:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/r5/y;->c:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->setActivated(Z)V

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 7

    .line 1
    iget-object v0, p0, Le/a/r5/y;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v1, 0x7f1207de

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    const-string v1, "itemView.resources.getSt\u2026hoViewedMeUserNameIfNull)"

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    move-object v1, p1

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method

.method public w1(Ljava/lang/String;)V
    .locals 15

    const-string v0, "address"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/r5/y;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/16 v13, 0x7fe

    const/4 v14, 0x0

    invoke-static/range {v1 .. v14}, Lcom/truecaller/common/ui/listitem/ListItemX;->o1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;Lcom/truecaller/common/ui/listitem/ListItemX$SubtitleColor;IIZLjava/lang/Integer;Ljava/util/List;ILjava/lang/Object;)V

    return-void
.end method
