.class public final Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->onCreate(Landroid/os/Bundle;)V
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

    iput p1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;->b:I

    iput-object p2, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;->c:Ljava/lang/Object;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/s;->a:Ls1/s;

    iget v1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;->b:I

    const-string v2, "comment"

    const-string v3, "presenter"

    const-string v4, "it"

    const/4 v5, 0x0

    if-eqz v1, :cond_3

    const/4 v6, 0x1

    if-ne v1, v6, :cond_2

    .line 1
    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    .line 2
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;

    .line 4
    iget-object v1, v1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->a:Le/a/v/a/c/c/a;

    if-eqz v1, :cond_1

    .line 5
    check-cast v1, Le/a/v/a/c/c/c;

    .line 6
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v2, v1, Le/a/v/a/c/c/c;->f:Le/a/q/h/b;

    if-eqz v2, :cond_0

    .line 8
    iget-object v2, v2, Le/a/q/h/b;->a:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_0

    .line 9
    iget-object v1, v1, Le/a/v/a/c/c/c;->i:Le/a/q/h/c;

    .line 10
    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    .line 11
    invoke-interface {v1, v2, p1}, Le/a/q/h/c;->e(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V

    :cond_0
    return-object v0

    .line 12
    :cond_1
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5

    .line 13
    :cond_2
    throw v5

    .line 14
    :cond_3
    check-cast p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    .line 15
    invoke-static {p1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    iget-object v1, p0, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity$a;->c:Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;

    .line 17
    iget-object v1, v1, Lcom/truecaller/details_view/ui/comments/all/AllCommentsActivity;->a:Le/a/v/a/c/c/a;

    if-eqz v1, :cond_5

    .line 18
    check-cast v1, Le/a/v/a/c/c/c;

    .line 19
    invoke-static {p1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    iget-object v2, v1, Le/a/v/a/c/c/c;->f:Le/a/q/h/b;

    if-eqz v2, :cond_4

    .line 21
    iget-object v2, v2, Le/a/q/h/b;->a:Lcom/truecaller/data/entity/Contact;

    if-eqz v2, :cond_4

    .line 22
    iget-object v1, v1, Le/a/v/a/c/c/c;->i:Le/a/q/h/c;

    .line 23
    iget-object p1, p1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;->a:Ljava/lang/String;

    .line 24
    invoke-interface {v1, v2, p1}, Le/a/q/h/c;->a(Lcom/truecaller/data/entity/Contact;Ljava/lang/String;)V

    :cond_4
    return-object v0

    .line 25
    :cond_5
    invoke-static {v3}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v5
.end method
