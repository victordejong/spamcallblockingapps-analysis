.class public final Le/a/o/a/b/c;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public final a:Landroid/widget/TextView;

.field public final b:Landroid/widget/TextView;

.field public final c:Le/a/b0/a/b/a;

.field public final d:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Le/a/o/o/i;)V
    .locals 5

    const-string v0, "itemViewBinding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o/o/i;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    .line 2
    invoke-direct {p0, v0}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 3
    iget-object v0, p1, Le/a/o/o/i;->c:Landroid/widget/TextView;

    const-string v1, "itemViewBinding.nameTextView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/o/a/b/c;->a:Landroid/widget/TextView;

    .line 4
    iget-object v0, p1, Le/a/o/o/i;->d:Landroid/widget/TextView;

    const-string v1, "itemViewBinding.numberTextView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v0, p0, Le/a/o/a/b/c;->b:Landroid/widget/TextView;

    .line 5
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    const-string v4, "itemView.context"

    invoke-static {v2, v3, v4}, Le/d/c/a/a;->J(Landroid/view/View;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Context;

    move-result-object v2

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v0, p0, Le/a/o/a/b/c;->c:Le/a/b0/a/b/a;

    .line 6
    iget-object v1, p1, Le/a/o/o/i;->e:Landroid/widget/ImageView;

    const-string v2, "itemViewBinding.removeImageView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v1, p0, Le/a/o/a/b/c;->d:Landroid/widget/ImageView;

    .line 7
    iget-object p1, p1, Le/a/o/o/i;->b:Lcom/truecaller/common/ui/avatar/AvatarXView;

    invoke-virtual {p1, v0}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    return-void
.end method
