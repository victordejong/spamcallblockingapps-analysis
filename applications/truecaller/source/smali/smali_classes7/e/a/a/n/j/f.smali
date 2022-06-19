.class public final Le/a/a/n/j/f;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/n/j/n;


# instance fields
.field public final a:Lcom/truecaller/common/ui/listitem/ListItemX;

.field public final b:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public final c:Le/a/b0/a/b/a;

.field public final d:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 9

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/a/n/j/f;->d:Landroid/view/View;

    .line 2
    move-object v0, p1

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    iput-object v0, p0, Le/a/a/n/j/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const v1, 0x7f0a01b7

    .line 3
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "view.findViewById(R.id.avatar)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v7, v1

    check-cast v7, Lcom/truecaller/common/ui/avatar/AvatarXView;

    iput-object v7, p0, Le/a/a/n/j/f;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 4
    new-instance v8, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "view.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v8, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v8, p0, Le/a/a/n/j/f;->c:Le/a/b0/a/b/a;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, v0

    move-object v2, p2

    move-object v3, p0

    .line 5
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 6
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 7
    invoke-virtual {v7, v8}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const p2, 0x7f0405a1

    invoke-static {p1, p2}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-virtual {v8, p1}, Le/a/b0/a/b/a;->Wj(Ljava/lang/Integer;)V

    return-void
.end method


# virtual methods
.method public J0(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/n/j/f;->c:Le/a/b0/a/b/a;

    .line 2
    iget-object v1, p0, Le/a/a/n/j/f;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p1, :cond_0

    const p1, 0x7f04061a

    goto :goto_0

    :cond_0
    const p1, 0x7f04060f

    .line 3
    :goto_0
    invoke-static {v1, p1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 4
    iput-object p1, v0, Le/a/b0/a/b/a;->f:Ljava/lang/Integer;

    return-void
.end method

.method public V2(Landroid/net/Uri;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/f;->c:Le/a/b0/a/b/a;

    .line 2
    iput-object p1, v0, Le/a/b0/a/b/a;->b:Landroid/net/Uri;

    .line 3
    iget-object p1, p0, Le/a/a/n/j/f;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 4
    invoke-virtual {p1}, Landroid/widget/ImageView;->invalidate()V

    return-void
.end method

.method public b(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setActivated(Z)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 15

    const-string v0, "subtitle"

    move-object/from16 v2, p1

    invoke-static {v2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, p0

    .line 1
    iget-object v1, v0, Le/a/a/n/j/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

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

.method public g(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/n/j/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/a/n/j/f;->d:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f0807a1

    const v2, 0x7f04068f

    invoke-static {p1, v1, v2}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/listitem/ListItemX;->setTitleIcon(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public h(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/n/j/f;->c:Le/a/b0/a/b/a;

    .line 2
    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->pk(Z)V

    return-void
.end method

.method public m4(IZ)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/n/j/f;->c:Le/a/b0/a/b/a;

    .line 2
    iget-object v1, p0, Le/a/a/n/j/f;->d:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    if-eqz p2, :cond_0

    const p2, 0x7f040619

    goto :goto_0

    :cond_0
    const p2, 0x7f04060e

    .line 3
    :goto_0
    invoke-static {v1, p1, p2}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    iput-object p1, v0, Le/a/b0/a/b/a;->d:Landroid/graphics/drawable/Drawable;

    return-void
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 8

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/a/n/j/f;->a:Lcom/truecaller/common/ui/listitem/ListItemX;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xe

    const/4 v7, 0x0

    move-object v2, p1

    invoke-static/range {v1 .. v7}, Lcom/truecaller/common/ui/listitem/ListItemX;->x1(Lcom/truecaller/common/ui/listitem/ListItemX;Ljava/lang/CharSequence;ZIIILjava/lang/Object;)V

    return-void
.end method
