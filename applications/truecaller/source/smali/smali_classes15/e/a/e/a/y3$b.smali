.class public final Le/a/e/a/y3$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/y3;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/e/a/y3;


# direct methods
.method public constructor <init>(Le/a/e/a/y3;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/y3$b;->a:Le/a/e/a/y3;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    .line 1
    iget-object v1, p0, Le/a/e/a/y3$b;->a:Le/a/e/a/y3;

    .line 2
    iget-object p1, v1, Le/a/e/a/y3;->h:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "conversationsText"

    .line 3
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/g0;->K(Ljava/lang/String;)I

    move-result v5

    .line 4
    iget-object p1, v1, Le/a/e/a/y3;->j:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/textfield/TextInputEditText;

    const-string v0, "messagesPerConversationText"

    .line 5
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroidx/appcompat/widget/AppCompatEditText;->getText()Landroid/text/Editable;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Le/a/p5/g0;->K(Ljava/lang/String;)I

    move-result v3

    .line 6
    iget-object p1, v1, Le/a/e/a/y3;->i:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/CheckBox;

    const-string v0, "existingConversationsCheckBox"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v2

    if-gtz v5, :cond_0

    if-eqz v2, :cond_2

    :cond_0
    if-gtz v3, :cond_1

    goto :goto_0

    :cond_1
    mul-int p1, v5, v3

    .line 8
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-direct {v4, v0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    const/4 v0, 0x1

    .line 9
    invoke-virtual {v4, v0}, Landroid/app/ProgressDialog;->setProgressStyle(I)V

    .line 10
    invoke-virtual {v4, p1}, Landroid/app/ProgressDialog;->setMax(I)V

    const/4 p1, 0x0

    .line 11
    invoke-virtual {v4, p1}, Landroid/app/ProgressDialog;->setProgress(I)V

    .line 12
    invoke-virtual {v4, p1}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    const-string p1, "Adding IM messages..."

    .line 13
    invoke-virtual {v4, p1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 14
    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    .line 15
    sget-object p1, Lq3/a/h1;->a:Lq3/a/h1;

    .line 16
    sget-object v7, Lq3/a/t0;->d:Lq3/a/g0;

    const/4 v8, 0x0

    .line 17
    new-instance v9, Le/a/e/a/u3;

    const/4 v6, 0x0

    move-object v0, v9

    invoke-direct/range {v0 .. v6}, Le/a/e/a/u3;-><init>(Le/a/e/a/y3;ZILandroid/app/ProgressDialog;ILs1/w/d;)V

    const/4 v10, 0x2

    const/4 v11, 0x0

    move-object v6, p1

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :cond_2
    :goto_0
    return-void
.end method
