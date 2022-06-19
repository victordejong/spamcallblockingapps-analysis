.class public final Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/details_view/ui/comments/single/SingleCommentView;->f1(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Ls1/z/b/l;Ls1/z/b/l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;

.field public final synthetic e:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->a:I

    iput-object p2, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->d:Ljava/lang/Object;

    iput-object p5, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->e:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    iget p1, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->e:Ljava/lang/Object;

    check-cast p1, Ls1/z/b/l;

    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_0
    return-void

    :cond_1
    const/4 p1, 0x0

    .line 2
    throw p1

    .line 3
    :cond_2
    iget-object p1, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->d:Ljava/lang/Object;

    check-cast p1, Ls1/z/b/l;

    if-eqz p1, :cond_3

    iget-object v0, p0, Lcom/truecaller/details_view/ui/comments/single/SingleCommentView$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/s;

    :cond_3
    return-void
.end method
