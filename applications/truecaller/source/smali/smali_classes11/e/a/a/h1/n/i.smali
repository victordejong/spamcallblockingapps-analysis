.class public final Le/a/a/h1/n/i;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/h1/n/g;


# instance fields
.field public final a:Lcom/truecaller/common/ui/avatar/AvatarXView;

.field public final b:Landroid/widget/TextView;

.field public final c:Landroid/view/View;

.field public final d:Landroid/view/View;

.field public final e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

.field public final f:Le/a/a/h1/d;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/o2/m;)V
    .locals 8

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "eventReceiver"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    const v0, 0x7f0a01c5

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.avatarView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    iput-object v0, p0, Le/a/a/h1/n/i;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    const v0, 0x7f0a01e2

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.badgeView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Le/a/a/h1/n/i;->b:Landroid/widget/TextView;

    const v0, 0x7f0a0a13

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.indicatorView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/h1/n/i;->c:Landroid/view/View;

    const v0, 0x7f0a0cc5

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.overflowView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/a/h1/n/i;->d:Landroid/view/View;

    const v0, 0x7f0a0da0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.progressIndicator)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    iput-object v0, p0, Le/a/a/h1/n/i;->e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    .line 7
    new-instance v1, Le/a/a/h1/d;

    invoke-direct {v1, v0}, Le/a/a/h1/d;-><init>(Landroid/widget/ProgressBar;)V

    iput-object v1, p0, Le/a/a/h1/n/i;->f:Le/a/a/h1/d;

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/16 v7, 0xc

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    .line 8
    invoke-static/range {v2 .. v7}, Le/m/d/y/n;->d1(Landroid/view/View;Le/a/o2/m;Landroidx/recyclerview/widget/RecyclerView$c0;Ljava/lang/String;Ljava/lang/Object;I)V

    const/16 p1, 0x2710

    .line 9
    invoke-virtual {v0, p1}, Landroid/widget/ProgressBar;->setMax(I)V

    return-void
.end method


# virtual methods
.method public E4(Le/a/b0/a/b/c;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/n/i;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v0, p1}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method

.method public J()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/h1/n/i;->f:Le/a/a/h1/d;

    const-wide/16 v1, 0x0

    .line 2
    iput-wide v1, v0, Le/a/a/h1/d;->c:J

    .line 3
    iget-object v1, v0, Le/a/a/h1/d;->a:Landroid/os/Handler;

    new-instance v2, Le/a/a/h1/e;

    invoke-direct {v2, v0}, Le/a/a/h1/e;-><init>(Le/a/a/h1/d;)V

    new-instance v0, Le/a/a/h1/f;

    invoke-direct {v0, v2}, Le/a/a/h1/f;-><init>(Ls1/z/b/a;)V

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    .line 4
    iget-object v0, p0, Le/a/a/h1/n/i;->e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    return-void
.end method

.method public S0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/n/i;->d:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public U1(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/h1/n/i;->c:Landroid/view/View;

    invoke-static {v0, p1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-void
.end method

.method public o()Le/a/b0/a/b/a;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/n/i;->a:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {v0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->getPresenter()Le/a/b0/a/b/c;

    move-result-object v0

    instance-of v1, v0, Le/a/b0/a/b/a;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Le/a/b0/a/b/a;

    return-object v0
.end method

.method public r2(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/n/i;->b:Landroid/widget/TextView;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    iget-object v0, p0, Le/a/a/h1/n/i;->b:Landroid/widget/TextView;

    if-lez p1, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/16 p1, 0x8

    :goto_0
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method

.method public t(JJ)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/n/i;->e:Lcom/google/android/material/progressindicator/CircularProgressIndicator;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 2
    iget-object v0, p0, Le/a/a/h1/n/i;->f:Le/a/a/h1/d;

    invoke-virtual {v0, p1, p2, p3, p4}, Le/a/a/h1/d;->a(JJ)V

    return-void
.end method
