.class public final Lf1;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Lf1;->a:I

    iput-object p2, p0, Lf1;->b:Ljava/lang/Object;

    iput-object p3, p0, Lf1;->c:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 12

    iget v0, p0, Lf1;->a:I

    const-string v1, "it"

    const-string v2, "sender"

    const/4 v3, 0x0

    const-string v4, "senderInput"

    const/4 v5, 0x0

    const/4 v6, 0x1

    if-eqz v0, :cond_5

    if-ne v0, v6, :cond_4

    .line 1
    iget-object v0, p0, Lf1;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/g/m1;

    iget-object v0, v0, Le/a/c/a/g/m1;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_0

    :cond_0
    move-object v0, v5

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_2

    :cond_1
    move v3, v6

    :cond_2
    if-eqz v3, :cond_3

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 3
    :cond_3
    iget-object p1, p0, Lf1;->c:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/m/c/z;

    .line 4
    sget-object v1, Le/a/c/a/m/c/z;->f:[Ls1/a/l;

    .line 5
    invoke-virtual {p1}, Le/a/c/a/m/c/z;->PA()Le/a/c/a/m/b/o;

    move-result-object p1

    .line 6
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    iget-object v6, p1, Le/a/c/a/m/b/o;->b:Lq3/a/i0;

    new-instance v9, Le/a/c/a/m/b/q;

    invoke-direct {v9, p1, v0, v5}, Le/a/c/a/m/b/q;-><init>(Le/a/c/a/m/b/o;Ljava/lang/String;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_1
    return-void

    .line 9
    :cond_4
    throw v5

    .line 10
    :cond_5
    iget-object v0, p0, Lf1;->b:Ljava/lang/Object;

    check-cast v0, Le/a/c/a/g/m1;

    iget-object v0, v0, Le/a/c/a/g/m1;->e:Lcom/google/android/material/textfield/TextInputLayout;

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/google/android/material/textfield/TextInputLayout;->getEditText()Landroid/widget/EditText;

    move-result-object v0

    if-eqz v0, :cond_6

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    goto :goto_2

    :cond_6
    move-object v0, v5

    :goto_2
    if-eqz v0, :cond_7

    .line 11
    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v4

    if-nez v4, :cond_8

    :cond_7
    move v3, v6

    :cond_8
    if-eqz v3, :cond_9

    invoke-static {p1, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v0, v6}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object p1

    invoke-virtual {p1}, Landroid/widget/Toast;->show()V

    goto :goto_3

    .line 12
    :cond_9
    iget-object p1, p0, Lf1;->c:Ljava/lang/Object;

    check-cast p1, Le/a/c/a/m/c/z;

    .line 13
    sget-object v1, Le/a/c/a/m/c/z;->f:[Ls1/a/l;

    .line 14
    invoke-virtual {p1}, Le/a/c/a/m/c/z;->PA()Le/a/c/a/m/b/o;

    move-result-object p1

    .line 15
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 16
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    iget-object v6, p1, Le/a/c/a/m/b/o;->b:Lq3/a/i0;

    new-instance v9, Le/a/c/a/m/b/p;

    invoke-direct {v9, p1, v0, v5}, Le/a/c/a/m/b/p;-><init>(Le/a/c/a/m/b/o;Ljava/lang/String;Ls1/w/d;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v10, 0x3

    const/4 v11, 0x0

    invoke-static/range {v6 .. v11}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    :goto_3
    return-void
.end method
