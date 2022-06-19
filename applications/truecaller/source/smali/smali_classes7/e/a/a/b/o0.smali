.class public final Le/a/a/b/o0;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/b/k0;


# instance fields
.field public final a:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public final b:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public final c:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public final d:Landroid/widget/TextView;

.field public final e:Landroid/widget/TextView;

.field public final f:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01c0

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.avatarLarge)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    iput-object v0, p0, Le/a/a/b/o0;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const v0, 0x7f0a01c3

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.avatarSmall1)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    iput-object v0, p0, Le/a/a/b/o0;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const v0, 0x7f0a01c4

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.avatarSmall2)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    iput-object v0, p0, Le/a/a/b/o0;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const v0, 0x7f0a1245

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/a/b/o0;->d:Landroid/widget/TextView;

    const v0, 0x7f0a10de

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.subtitle)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/a/b/o0;->e:Landroid/widget/TextView;

    const v0, 0x7f0a0c2e

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.newBadge)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/a/b/o0;->f:Landroid/widget/TextView;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    move-object v1, p1

    move-object v2, p2

    move-object v3, p0

    .line 8
    invoke-static/range {v1 .. v6}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    return-void
.end method


# virtual methods
.method public Y2(Le/a/b0/a/b/c;)V
    .locals 2

    const-string v0, "presenter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/b/o0;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Le/a/a/b/o0;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Le/a/a/b/o0;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 4
    iget-object p1, p0, Le/a/a/b/o0;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public Z0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/o0;->d:Landroid/widget/TextView;

    invoke-static {v0, p1}, Le/a/n/g0;->k(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public g0(Le/a/b0/a/b/c;Le/a/b0/a/b/c;)V
    .locals 2

    const-string v0, "presenter1"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "presenter2"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/b/o0;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Le/a/a/b/o0;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 3
    iget-object p1, p0, Le/a/a/b/o0;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 4
    iget-object p1, p0, Le/a/a/b/o0;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    iget-object p1, p0, Le/a/a/b/o0;->c:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {p1, p2}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public i3(Ljava/lang/String;Z)V
    .locals 2

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/b/o0;->e:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object p1, p0, Le/a/a/b/o0;->e:Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz p2, :cond_0

    const v1, 0x7f04068d

    goto :goto_0

    :cond_0
    const v1, 0x7f04068f

    :goto_0
    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    .line 3
    iget-object p1, p0, Le/a/a/b/o0;->e:Landroid/widget/TextView;

    invoke-static {p1, p2}, Le/a/n/g0;->k(Landroid/widget/TextView;Z)V

    return-void
.end method

.method public q4(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/b/o0;->f:Landroid/widget/TextView;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method
