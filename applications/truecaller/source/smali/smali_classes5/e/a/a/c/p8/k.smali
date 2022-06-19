.class public final Le/a/a/c/p8/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ActionMode$Callback;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Landroid/widget/EditText;

.field public c:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/widget/EditText;Z)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "editText"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/p8/k;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/p8/k;->b:Landroid/widget/EditText;

    iput-boolean p3, p0, Le/a/a/c/p8/k;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/view/Menu;ILandroid/text/style/CharacterStyle;)V
    .locals 2

    .line 1
    invoke-interface {p1, p2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    const-string p2, "item"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object p2

    instance-of v0, p2, Landroid/text/Spannable;

    if-nez v0, :cond_0

    const/4 p2, 0x0

    :cond_0
    check-cast p2, Landroid/text/Spannable;

    if-eqz p2, :cond_1

    goto :goto_0

    :cond_1
    new-instance p2, Landroid/text/SpannableString;

    invoke-interface {p1}, Landroid/view/MenuItem;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 3
    :goto_0
    invoke-interface {p2}, Landroid/text/Spannable;->length()I

    move-result v0

    const/4 v1, 0x0

    invoke-interface {p2, p3, v1, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 4
    invoke-interface {p1, p2}, Landroid/view/MenuItem;->setTitle(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 8

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Le/a/a/c/p8/k;->c:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p1, p0, Le/a/a/c/p8/k;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 3
    iget-object v1, p0, Le/a/a/c/p8/k;->b:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result v1

    if-ne p1, v1, :cond_1

    return v0

    .line 4
    :cond_1
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    const v3, 0x1020021

    const/4 v4, 0x0

    const v5, 0x1020020

    const/4 v6, 0x1

    if-eq v2, v3, :cond_4

    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result v2

    if-ne v2, v5, :cond_2

    goto/16 :goto_1

    .line 5
    :cond_2
    iget-object v2, p0, Le/a/a/c/p8/k;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 6
    invoke-interface {v2, p1, v1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v3

    .line 7
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    const/4 v5, 0x2

    packed-switch p2, :pswitch_data_0

    return v0

    .line 8
    :pswitch_0
    sget-object p2, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->UNDERLINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    goto :goto_0

    .line 9
    :pswitch_1
    sget-object p2, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->STRIKETHROUGH:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    goto :goto_0

    :pswitch_2
    const/16 p2, 0xa

    .line 10
    invoke-static {v3, p2, v0, v5}, Ls1/f0/v;->A(Ljava/lang/CharSequence;CZI)Z

    move-result p2

    if-eqz p2, :cond_3

    sget-object p2, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->MONOSPACE_MULTILINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->MONOSPACE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    goto :goto_0

    .line 11
    :pswitch_3
    iget-object p1, p0, Le/a/a/c/p8/k;->a:Landroid/content/Context;

    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p2, 0x7f0d04e5

    invoke-virtual {p1, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p2, Ln3/b/a/g$a;

    iget-object v0, p0, Le/a/a/c/p8/k;->a:Landroid/content/Context;

    invoke-direct {p2, v0}, Ln3/b/a/g$a;-><init>(Landroid/content/Context;)V

    const v0, 0x7f12039d

    .line 13
    invoke-virtual {p2, v0}, Ln3/b/a/g$a;->m(I)Ln3/b/a/g$a;

    .line 14
    invoke-virtual {p2, p1}, Ln3/b/a/g$a;->p(Landroid/view/View;)Ln3/b/a/g$a;

    .line 15
    new-instance v0, Le/a/a/c/p8/j;

    invoke-direct {v0, p0, p1}, Le/a/a/c/p8/j;-><init>(Le/a/a/c/p8/k;Landroid/view/View;)V

    const p1, 0x7f120726

    invoke-virtual {p2, p1, v0}, Ln3/b/a/g$a;->i(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    const p1, 0x7f1206fb

    .line 16
    invoke-virtual {p2, p1, v4}, Ln3/b/a/g$a;->g(ILandroid/content/DialogInterface$OnClickListener;)Ln3/b/a/g$a;

    .line 17
    invoke-virtual {p2}, Ln3/b/a/g$a;->q()Ln3/b/a/g;

    return v6

    .line 18
    :pswitch_4
    sget-object p2, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->ITALIC:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    goto :goto_0

    .line 19
    :pswitch_5
    sget-object p2, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->BOLD:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    .line 20
    :goto_0
    iget-object v4, p0, Le/a/a/c/p8/k;->b:Landroid/widget/EditText;

    new-instance v7, Landroid/text/SpannableStringBuilder;

    invoke-direct {v7}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 21
    invoke-interface {v2, v0, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 22
    invoke-virtual {p2}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 23
    invoke-virtual {v7, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 24
    invoke-virtual {p2}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 25
    invoke-interface {v2}, Landroid/text/Editable;->length()I

    move-result p1

    invoke-interface {v2, v1, p1}, Landroid/text/Editable;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {v7, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 26
    invoke-virtual {v4, v7}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 27
    iget-object p1, p0, Le/a/a/c/p8/k;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result p2

    mul-int/2addr p2, v5

    add-int/2addr p2, v1

    invoke-virtual {p1, p2}, Landroid/widget/EditText;->setSelection(I)V

    return v6

    .line 28
    :cond_4
    :goto_1
    iget-object v0, p0, Le/a/a/c/p8/k;->a:Landroid/content/Context;

    const-string v2, "clipboard"

    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/content/ClipboardManager;

    .line 29
    iget-object v2, p0, Le/a/a/c/p8/k;->b:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    const-string v3, "editText.text"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v2, p1, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v4, v2}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/content/ClipboardManager;->setPrimaryClip(Landroid/content/ClipData;)V

    .line 30
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    if-ne p2, v5, :cond_5

    .line 31
    iget-object p2, p0, Le/a/a/c/p8/k;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object p2

    invoke-interface {p2, p1, v1}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    :cond_5
    return v6

    nop

    :pswitch_data_0
    .packed-switch 0x7f0a07dc
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 3

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "menu"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/a/c/p8/k;->c:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object p1

    const v0, 0x7f0e0009

    invoke-virtual {p1, v0, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    const p1, 0x7f0a07dc

    .line 3
    new-instance v0, Landroid/text/style/StyleSpan;

    invoke-direct {v0, v1}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p2, p1, v0}, Le/a/a/c/p8/k;->a(Landroid/view/Menu;ILandroid/text/style/CharacterStyle;)V

    const p1, 0x7f0a07dd

    .line 4
    new-instance v0, Landroid/text/style/StyleSpan;

    const/4 v2, 0x2

    invoke-direct {v0, v2}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {p0, p2, p1, v0}, Le/a/a/c/p8/k;->a(Landroid/view/Menu;ILandroid/text/style/CharacterStyle;)V

    const p1, 0x7f0a07df

    .line 5
    new-instance v0, Landroid/text/style/TypefaceSpan;

    const-string v2, "monospace"

    invoke-direct {v0, v2}, Landroid/text/style/TypefaceSpan;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2, p1, v0}, Le/a/a/c/p8/k;->a(Landroid/view/Menu;ILandroid/text/style/CharacterStyle;)V

    const p1, 0x7f0a07e0

    .line 6
    new-instance v0, Landroid/text/style/StrikethroughSpan;

    invoke-direct {v0}, Landroid/text/style/StrikethroughSpan;-><init>()V

    invoke-virtual {p0, p2, p1, v0}, Le/a/a/c/p8/k;->a(Landroid/view/Menu;ILandroid/text/style/CharacterStyle;)V

    const p1, 0x7f0a07e1

    .line 7
    new-instance v0, Landroid/text/style/UnderlineSpan;

    invoke-direct {v0}, Landroid/text/style/UnderlineSpan;-><init>()V

    invoke-virtual {p0, p2, p1, v0}, Le/a/a/c/p8/k;->a(Landroid/view/Menu;ILandroid/text/style/CharacterStyle;)V

    return v1
.end method

.method public onDestroyActionMode(Landroid/view/ActionMode;)V
    .locals 0

    return-void
.end method

.method public onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menu"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
.end method
