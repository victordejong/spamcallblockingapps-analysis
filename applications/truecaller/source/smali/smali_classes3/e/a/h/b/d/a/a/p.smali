.class public final Le/a/h/b/d/a/a/p;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/h/b/d/a/a/s;


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Le/a/p5/i0;

.field public final g:Le/a/b0/a/b/a;

.field public final h:Le/a/l4/d;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/l4/c;Le/a/p5/c;Le/a/o2/m;)V
    .locals 8

    const-string v2, "view"

    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "availabilityManager"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "clock"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "itemEventReceiver"

    invoke-static {p4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v2, 0x7f0a0d26

    .line 2
    invoke-static {p1, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, p0, Le/a/h/b/d/a/a/p;->a:Ls1/g;

    const v2, 0x7f0a01b7

    .line 3
    invoke-static {p1, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v6

    iput-object v6, p0, Le/a/h/b/d/a/a/p;->b:Ls1/g;

    const v2, 0x7f0a11db

    .line 4
    invoke-static {p1, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, p0, Le/a/h/b/d/a/a/p;->c:Ls1/g;

    const v2, 0x7f0a11da

    .line 5
    invoke-static {p1, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, p0, Le/a/h/b/d/a/a/p;->d:Ls1/g;

    const v2, 0x7f0a01b1

    .line 6
    invoke-static {p1, v2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v2

    iput-object v2, p0, Le/a/h/b/d/a/a/p;->e:Ls1/g;

    .line 7
    new-instance v2, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "view.context"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v2, v3}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    iput-object v2, p0, Le/a/h/b/d/a/a/p;->f:Le/a/p5/i0;

    .line 8
    new-instance v7, Le/a/b0/a/b/a;

    invoke-direct {v7, v2}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v7, p0, Le/a/h/b/d/a/a/p;->g:Le/a/b0/a/b/a;

    .line 9
    new-instance v3, Le/a/l4/d;

    invoke-direct {v3, v2, p2, p3}, Le/a/l4/d;-><init>(Le/a/p5/h0;Le/a/l4/c;Le/a/p5/c;)V

    iput-object v3, p0, Le/a/h/b/d/a/a/p;->h:Le/a/l4/d;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    move-object v0, p1

    move-object v1, p4

    move-object v2, p0

    .line 10
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 11
    invoke-static/range {v0 .. v5}, Le/m/d/y/n;->f1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    .line 12
    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 13
    invoke-virtual {v0, v7}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method


# virtual methods
.method public g2(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2

    const-string v0, "avatarXConfig"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "title"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/p;->g:Le/a/b0/a/b/a;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Le/a/b0/a/b/a;->nk(Lcom/truecaller/common/ui/avatar/AvatarXConfig;Z)V

    .line 2
    iget-object p1, p0, Le/a/h/b/d/a/a/p;->c:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "contactNameTextView"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    iget-object p1, p0, Le/a/h/b/d/a/a/p;->d:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string p2, "contactDescriptionTextView"

    .line 5
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public o2(Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/p;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    const-string v1, "pinBadge"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public s(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/p;->g:Le/a/b0/a/b/a;

    .line 2
    invoke-virtual {v0, p1}, Le/a/b0/a/b/a;->pk(Z)V

    return-void
.end method

.method public s1(Ljava/lang/String;)V
    .locals 1

    const-string v0, "identifier"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/b/d/a/a/p;->h:Le/a/l4/d;

    invoke-virtual {v0, p1}, Le/a/l4/d;->Kj(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Le/a/h/b/d/a/a/p;->e:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/ui/availability/AvailabilityXView;

    .line 3
    iget-object v0, p0, Le/a/h/b/d/a/a/p;->h:Le/a/l4/d;

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/availability/AvailabilityXView;->setPresenter(Le/a/b0/a/s/c;)V

    return-void
.end method
