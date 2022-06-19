.class public final Le/a/v/a/c/a/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/c/a/a;->X(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/v/a/c/a/a$a;->b:I

    iput-object p2, p0, Le/a/v/a/c/a/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Le/a/v/a/c/a/a$a;->b:I

    const-string v2, "it"

    if-eqz v1, :cond_5

    const/4 v3, 0x1

    if-eq v1, v3, :cond_4

    const/4 v3, 0x2

    if-eq v1, v3, :cond_3

    const/4 v3, 0x3

    if-eq v1, v3, :cond_2

    const/4 v3, 0x4

    if-eq v1, v3, :cond_1

    const/4 v3, 0x5

    if-ne v1, v3, :cond_0

    .line 1
    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    .line 2
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Le/a/v/a/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/a/a;

    invoke-virtual {v1}, Le/a/v/a/c/a/a;->getPresenter()Le/a/v/a/c/a/b;

    move-result-object v1

    check-cast v1, Le/a/v/a/c/a/f;

    invoke-virtual {v1, p1}, Le/a/v/a/c/a/f;->Ij(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V

    return-object v0

    :cond_0
    const/4 p1, 0x0

    .line 4
    throw p1

    .line 5
    :cond_1
    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    .line 6
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v1, p0, Le/a/v/a/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/a/a;

    invoke-virtual {v1}, Le/a/v/a/c/a/a;->getPresenter()Le/a/v/a/c/a/b;

    move-result-object v1

    check-cast v1, Le/a/v/a/c/a/f;

    invoke-virtual {v1, p1}, Le/a/v/a/c/a/f;->Jj(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V

    return-object v0

    .line 8
    :cond_2
    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    .line 9
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, p0, Le/a/v/a/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/a/a;

    invoke-virtual {v1}, Le/a/v/a/c/a/a;->getPresenter()Le/a/v/a/c/a/b;

    move-result-object v1

    check-cast v1, Le/a/v/a/c/a/f;

    invoke-virtual {v1, p1}, Le/a/v/a/c/a/f;->Ij(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V

    return-object v0

    .line 11
    :cond_3
    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    .line 12
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v1, p0, Le/a/v/a/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/a/a;

    invoke-virtual {v1}, Le/a/v/a/c/a/a;->getPresenter()Le/a/v/a/c/a/b;

    move-result-object v1

    check-cast v1, Le/a/v/a/c/a/f;

    invoke-virtual {v1, p1}, Le/a/v/a/c/a/f;->Jj(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V

    return-object v0

    .line 14
    :cond_4
    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    .line 15
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Le/a/v/a/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/a/a;

    invoke-virtual {v1}, Le/a/v/a/c/a/a;->getPresenter()Le/a/v/a/c/a/b;

    move-result-object v1

    check-cast v1, Le/a/v/a/c/a/f;

    invoke-virtual {v1, p1}, Le/a/v/a/c/a/f;->Ij(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V

    return-object v0

    .line 17
    :cond_5
    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    .line 18
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v1, p0, Le/a/v/a/c/a/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/a/a;

    invoke-virtual {v1}, Le/a/v/a/c/a/a;->getPresenter()Le/a/v/a/c/a/b;

    move-result-object v1

    check-cast v1, Le/a/v/a/c/a/f;

    invoke-virtual {v1, p1}, Le/a/v/a/c/a/f;->Jj(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V

    return-object v0
.end method
