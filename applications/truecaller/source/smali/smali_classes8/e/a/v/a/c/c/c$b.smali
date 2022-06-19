.class public final Le/a/v/a/c/c/c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/c/c/c;->Ij(Lcom/truecaller/contactfeedback/repo/SortType;Lcom/truecaller/data/entity/Contact;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
.field public final synthetic b:Le/a/v/a/c/c/c;


# direct methods
.method public constructor <init>(Le/a/v/a/c/c/c;)V
    .locals 0

    iput-object p1, p0, Le/a/v/a/c/c/c$b;->b:Le/a/v/a/c/c/c;

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
    iget-object v0, p0, Le/a/v/a/c/c/c$b;->b:Le/a/v/a/c/c/c;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {p1, v2}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;

    .line 7
    iget-object v3, p0, Le/a/v/a/c/c/c$b;->b:Le/a/v/a/c/c/c;

    .line 8
    iget-object v3, v3, Le/a/v/a/c/c/c;->j:Le/a/v/a/c/b;

    .line 9
    invoke-virtual {v3, v2}, Le/a/v/a/c/b;->a(Lcom/truecaller/contactfeedback/presentation/model/CommentFeedbackModel;)Lcom/truecaller/details_view/ui/comments/widget/CommentViewModel;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/c/b;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/v/a/c/c/b;->b0()V

    .line 11
    :cond_1
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/c/b;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/v/a/c/c/b;->e4()V

    .line 12
    :cond_2
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/c/b;

    if-eqz p1, :cond_3

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-interface {p1, v2}, Le/a/v/a/c/c/b;->E1(I)V

    .line 13
    :cond_3
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/v/a/c/c/b;

    if-eqz p1, :cond_4

    invoke-interface {p1, v1}, Le/a/v/a/c/c/b;->a9(Ljava/util/List;)V

    .line 14
    :cond_4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
