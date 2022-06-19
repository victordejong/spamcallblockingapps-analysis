.class public final Le/a/q/a/b/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/a/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/q/a/b/a$a;->a:I

    iput-object p2, p0, Le/a/q/a/b/a$a;->b:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 10

    iget p1, p0, Le/a/q/a/b/a$a;->a:I

    if-eqz p1, :cond_8

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_7

    .line 1
    iget-object p1, p0, Le/a/q/a/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/b/a;

    invoke-virtual {p1}, Le/a/q/a/b/a;->RA()Le/a/q/a/b/e;

    move-result-object p1

    iget-object v2, p0, Le/a/q/a/b/a$a;->b:Ljava/lang/Object;

    check-cast v2, Le/a/q/a/b/a;

    .line 2
    invoke-virtual {v2}, Le/a/q/a/b/a;->UA()Landroid/widget/EditText;

    move-result-object v2

    const-string v3, "writeCommentEditText"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_0
    move-object v6, v2

    goto :goto_1

    :cond_1
    :goto_0
    move-object v6, v1

    .line 3
    :goto_1
    check-cast p1, Le/a/q/a/b/b;

    .line 4
    iget-object v2, p1, Le/a/q/a/b/b;->k:Le/a/b0/a/v/a;

    invoke-interface {v2, v6}, Le/a/b0/a/v/a;->b(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 5
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/b/f;

    if-eqz p1, :cond_6

    sget v0, Lcom/truecaller/contactfeedback/R$string;->spam_categories_provide_more_info_write_comment_error_message:I

    invoke-interface {p1, v0}, Le/a/q/a/b/f;->k5(I)V

    goto :goto_4

    :cond_2
    if-eqz v6, :cond_5

    .line 6
    iget-object v2, p1, Le/a/q/a/b/b;->l:Le/a/p5/c;

    invoke-interface {v2}, Le/a/p5/c;->c()J

    move-result-wide v4

    .line 7
    iget-object v2, p1, Le/a/q/a/b/b;->d:Lcom/truecaller/contactfeedback/presentation/addcomment/model/AddCommentRequest;

    if-eqz v2, :cond_4

    .line 8
    iget-object v7, v2, Lcom/truecaller/contactfeedback/presentation/addcomment/model/AddCommentRequest;->a:Ljava/util/List;

    .line 9
    iget-object v1, p1, Le/a/q/a/b/b;->f:Lcom/truecaller/contactfeedback/model/Profile;

    if-nez v1, :cond_3

    goto :goto_2

    :cond_3
    const/4 v0, 0x0

    :goto_2
    move v8, v0

    .line 10
    sget-object v0, Lcom/truecaller/data/entity/FeedbackSource;->SPAM_DETAILS_VIEW:Lcom/truecaller/data/entity/FeedbackSource;

    invoke-virtual {v0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v9

    .line 11
    invoke-static/range {v4 .. v9}, Le/a/b0/q/g0;->d(JLjava/lang/String;Ljava/util/List;ZLjava/lang/String;)Ljava/util/List;

    move-result-object v0

    .line 12
    iget-object v1, p1, Le/a/q/a/b/b;->m:Le/a/q/i/a;

    check-cast v1, Le/a/q/i/b;

    invoke-virtual {v1, v0}, Le/a/q/i/b;->a(Ljava/util/List;)V

    goto :goto_3

    :cond_4
    const-string p1, "data"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 14
    :cond_5
    :goto_3
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/b/f;

    if-eqz p1, :cond_6

    invoke-interface {p1}, Le/a/q/a/b/f;->ew()V

    :cond_6
    :goto_4
    return-void

    .line 15
    :cond_7
    throw v1

    .line 16
    :cond_8
    iget-object p1, p0, Le/a/q/a/b/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/b/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    return-void
.end method
