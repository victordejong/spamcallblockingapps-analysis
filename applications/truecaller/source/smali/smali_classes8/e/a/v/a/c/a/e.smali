.class public final Le/a/v/a/c/a/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/util/List<",
        "+",
        "Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;",
        ">;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/v/a/c/a/f;

.field public final synthetic c:Le/a/v/a/s;


# direct methods
.method public constructor <init>(Le/a/v/a/c/a/f;Le/a/v/a/s;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    iput-object p2, p0, Le/a/v/a/c/a/e;->c:Le/a/v/a/s;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ljava/util/List;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p1, v1}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    .line 6
    iget-object v2, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    .line 7
    iget-object v2, v2, Le/a/v/a/c/a/f;->i:Le/a/v/a/c/b;

    .line 8
    invoke-virtual {v2, v1}, Le/a/v/a/c/b;->a(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;)Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 10
    iget-object p1, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    .line 11
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/a/c;

    if-eqz p1, :cond_8

    .line 12
    invoke-interface {p1}, Le/a/v/a/c/a/c;->B0()V

    goto/16 :goto_3

    .line 13
    :cond_1
    iget-object p1, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    .line 14
    iget-object p1, p1, Le/a/v/a/c/a/f;->j:Le/a/u3/g;

    .line 15
    iget-object v1, p1, Le/a/u3/g;->b6:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x173

    aget-object v2, v2, v3

    invoke-virtual {v1, p1, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object p1

    .line 16
    invoke-interface {p1}, Le/a/u3/b;->isEnabled()Z

    move-result p1

    if-eqz p1, :cond_2

    .line 17
    iget-object p1, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    .line 18
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/a/c;

    if-eqz p1, :cond_3

    .line 19
    iget-object v1, p0, Le/a/v/a/c/a/e;->c:Le/a/v/a/s;

    .line 20
    iget-object v1, v1, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 21
    invoke-interface {p1, v1}, Le/a/v/a/c/a/c;->M0(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_1

    .line 22
    :cond_2
    iget-object p1, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    .line 23
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/a/c;

    if-eqz p1, :cond_3

    .line 24
    invoke-interface {p1}, Le/a/v/a/c/a/c;->w0()V

    .line 25
    :cond_3
    :goto_1
    iget-object p1, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    .line 26
    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/c/a/c;

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {v1, v2}, Le/a/v/a/c/a/c;->v(I)V

    .line 27
    :cond_4
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/a/c;

    if-eqz p1, :cond_5

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    const/4 v2, 0x1

    invoke-static {v0, v2}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    const/4 v3, 0x2

    invoke-static {v0, v3}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    invoke-interface {p1, v1, v2, v3}, Le/a/v/a/c/a/c;->X(Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;)V

    .line 28
    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result p1

    const/4 v0, 0x3

    if-le p1, v0, :cond_6

    .line 29
    iget-object p1, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    .line 30
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/a/c;

    if-eqz p1, :cond_7

    .line 31
    iget-object v0, p0, Le/a/v/a/c/a/e;->c:Le/a/v/a/s;

    .line 32
    iget-object v0, v0, Le/a/v/a/s;->a:Lcom/truecaller/data/entity/Contact;

    .line 33
    invoke-interface {p1, v0}, Le/a/v/a/c/a/c;->E0(Lcom/truecaller/data/entity/Contact;)V

    goto :goto_2

    .line 34
    :cond_6
    iget-object p1, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    .line 35
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/a/c;

    if-eqz p1, :cond_7

    .line 36
    invoke-interface {p1}, Le/a/v/a/c/a/c;->m0()V

    .line 37
    :cond_7
    :goto_2
    iget-object p1, p0, Le/a/v/a/c/a/e;->b:Le/a/v/a/c/a/f;

    .line 38
    iget-object p1, p1, Le/a/v/a/c/a/f;->d:Le/a/b0/q/v;

    .line 39
    invoke-virtual {p1}, Le/a/b0/q/v;->a()V

    .line 40
    :cond_8
    :goto_3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
