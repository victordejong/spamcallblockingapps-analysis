.class public final Le/a/q/a/b/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/q/a/b/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/q/a/b/a;


# direct methods
.method public constructor <init>(Le/a/q/a/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/q/a/b/a$d;->a:Le/a/q/a/b/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0

    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 4

    .line 1
    iget-object p2, p0, Le/a/q/a/b/a$d;->a:Le/a/q/a/b/a;

    invoke-virtual {p2}, Le/a/q/a/b/a;->RA()Le/a/q/a/b/e;

    move-result-object p2

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    check-cast p2, Le/a/q/a/b/b;

    .line 2
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-eqz p1, :cond_2

    .line 3
    invoke-static {p1}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    move v0, p3

    goto :goto_2

    :cond_2
    :goto_1
    move v0, p4

    :goto_2
    if-eqz v0, :cond_4

    .line 4
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/b/f;

    if-eqz p1, :cond_3

    invoke-interface {p1}, Le/a/q/a/b/f;->qj()V

    .line 5
    :cond_3
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/b/f;

    if-eqz p1, :cond_c

    invoke-virtual {p2}, Le/a/q/a/b/b;->Ij()I

    move-result p2

    invoke-interface {p1, p2}, Le/a/q/a/b/f;->Bd(I)V

    goto/16 :goto_5

    :cond_4
    const-string v0, "null cannot be cast to non-null type kotlin.CharSequence"

    .line 6
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-static {p1}, Ls1/f0/v;->g0(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 7
    iget-object v0, p2, Le/a/q/a/b/b;->k:Le/a/b0/a/v/a;

    invoke-interface {v0, p1}, Le/a/b0/a/v/a;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    .line 8
    iget-object v1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/q/a/b/f;

    if-eqz v1, :cond_6

    sget v2, Lcom/truecaller/contactfeedback/R$string;->spam_categories_provide_more_info_write_comment_error_message:I

    invoke-interface {v1, v2}, Le/a/q/a/b/f;->k5(I)V

    goto :goto_3

    .line 9
    :cond_5
    iget-object v1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/q/a/b/f;

    if-eqz v1, :cond_6

    sget v2, Lcom/truecaller/contactfeedback/R$string;->spam_categories_info_message:I

    invoke-interface {v1, v2}, Le/a/q/a/b/f;->B5(I)V

    .line 10
    :cond_6
    :goto_3
    iget-object v1, p2, Le/a/q/a/b/b;->k:Le/a/b0/a/v/a;

    .line 11
    iget-object v2, p2, Le/a/q/a/b/b;->g:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->intValue()I

    move-result v2

    .line 12
    invoke-virtual {p2}, Le/a/q/a/b/b;->Ij()I

    move-result v3

    .line 13
    invoke-interface {v1, p1, v2, v3}, Le/a/b0/a/v/a;->a(Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 14
    iget-object v2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/q/a/b/f;

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Le/a/q/a/b/b;->Ij()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-interface {v2, v3}, Le/a/q/a/b/f;->d2(I)V

    goto :goto_4

    .line 15
    :cond_7
    iget-object v2, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v2, Le/a/q/a/b/f;

    if-eqz v2, :cond_8

    invoke-virtual {p2}, Le/a/q/a/b/b;->Ij()I

    move-result v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    sub-int/2addr v3, p1

    invoke-interface {v2, v3}, Le/a/q/a/b/f;->Bd(I)V

    :cond_8
    :goto_4
    if-nez v1, :cond_9

    if-eqz v0, :cond_a

    :cond_9
    move p3, p4

    :cond_a
    if-eqz p3, :cond_b

    .line 16
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/b/f;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/q/a/b/f;->qj()V

    goto :goto_5

    .line 17
    :cond_b
    iget-object p1, p2, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/q/a/b/f;

    if-eqz p1, :cond_c

    invoke-interface {p1}, Le/a/q/a/b/f;->Nk()V

    :cond_c
    :goto_5
    return-void
.end method
