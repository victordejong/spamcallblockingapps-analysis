.class public final Le/a/a/c/p8/i;
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

    iput-object p1, p0, Le/a/a/c/p8/i;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/a/c/p8/i;->b:Landroid/widget/EditText;

    iput-boolean p3, p0, Le/a/a/c/p8/i;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Landroid/text/Editable;Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v0

    invoke-interface {p1, p4, v0}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 2
    invoke-virtual {p2}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object p2

    invoke-interface {p1, p3, p2}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    return-void
.end method

.method public onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .locals 13

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "item"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean p1, p0, Le/a/a/c/p8/i;->c:Z

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    const p2, 0x1020022

    if-ne p1, p2, :cond_e

    .line 3
    iget-object p1, p0, Le/a/a/c/p8/i;->b:Landroid/widget/EditText;

    invoke-virtual {p1}, Landroid/widget/EditText;->getSelectionStart()I

    move-result p1

    .line 4
    iget-object p2, p0, Le/a/a/c/p8/i;->b:Landroid/widget/EditText;

    invoke-virtual {p2}, Landroid/widget/EditText;->getSelectionEnd()I

    move-result p2

    const/4 v1, 0x1

    if-ltz p1, :cond_d

    if-gez p2, :cond_1

    goto/16 :goto_3

    .line 5
    :cond_1
    iget-object v2, p0, Le/a/a/c/p8/i;->a:Landroid/content/Context;

    const-string v3, "clipboard"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    const-string v3, "null cannot be cast to non-null type android.content.ClipboardManager"

    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Landroid/content/ClipboardManager;

    .line 6
    invoke-virtual {v2}, Landroid/content/ClipboardManager;->getPrimaryClip()Landroid/content/ClipData;

    move-result-object v2

    if-eqz v2, :cond_d

    const-string v3, "clipboard.primaryClip ?: return"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-virtual {v2}, Landroid/content/ClipData;->getItemCount()I

    move-result v3

    if-ge v3, v1, :cond_2

    goto/16 :goto_3

    .line 8
    :cond_2
    invoke-virtual {v2, v0}, Landroid/content/ClipData;->getItemAt(I)Landroid/content/ClipData$Item;

    move-result-object v2

    .line 9
    iget-object v3, p0, Le/a/a/c/p8/i;->b:Landroid/widget/EditText;

    invoke-virtual {v3}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v3

    iget-object v4, p0, Le/a/a/c/p8/i;->a:Landroid/content/Context;

    invoke-virtual {v2, v4}, Landroid/content/ClipData$Item;->coerceToStyledText(Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v2

    const-string v4, "clipItem.coerceToStyledText(context)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    invoke-virtual {v4}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const-class v5, Landroid/text/style/CharacterStyle;

    invoke-virtual {v4, v0, v2, v5}, Landroid/text/SpannableStringBuilder;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/text/style/CharacterStyle;

    const-string v5, "spans"

    .line 12
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    array-length v5, v2

    move v6, v0

    :goto_0
    if-ge v6, v5, :cond_c

    aget-object v7, v2, v6

    .line 14
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->getSpanStart(Ljava/lang/Object;)I

    move-result v8

    .line 15
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->getSpanEnd(Ljava/lang/Object;)I

    move-result v9

    if-ltz v8, :cond_b

    if-gez v9, :cond_3

    goto :goto_2

    .line 16
    :cond_3
    instance-of v10, v7, Landroid/text/style/StyleSpan;

    const/4 v11, 0x2

    if-eqz v10, :cond_6

    move-object v10, v7

    check-cast v10, Landroid/text/style/StyleSpan;

    invoke-virtual {v10}, Landroid/text/style/StyleSpan;->getStyle()I

    move-result v10

    if-eq v10, v1, :cond_5

    if-eq v10, v11, :cond_4

    goto :goto_1

    .line 17
    :cond_4
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->ITALIC:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p0, v4, v10, v8, v9}, Le/a/a/c/p8/i;->a(Landroid/text/Editable;Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V

    goto :goto_1

    .line 18
    :cond_5
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->BOLD:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p0, v4, v10, v8, v9}, Le/a/a/c/p8/i;->a(Landroid/text/Editable;Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V

    goto :goto_1

    .line 19
    :cond_6
    instance-of v10, v7, Landroid/text/style/UnderlineSpan;

    if-eqz v10, :cond_7

    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->UNDERLINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p0, v4, v10, v8, v9}, Le/a/a/c/p8/i;->a(Landroid/text/Editable;Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V

    goto :goto_1

    .line 20
    :cond_7
    instance-of v10, v7, Landroid/text/style/StrikethroughSpan;

    if-eqz v10, :cond_8

    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->STRIKETHROUGH:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p0, v4, v10, v8, v9}, Le/a/a/c/p8/i;->a(Landroid/text/Editable;Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V

    goto :goto_1

    .line 21
    :cond_8
    instance-of v10, v7, Landroid/text/style/TypefaceSpan;

    if-eqz v10, :cond_a

    .line 22
    move-object v10, v7

    check-cast v10, Landroid/text/style/TypefaceSpan;

    invoke-virtual {v10}, Landroid/text/style/TypefaceSpan;->getFamily()Ljava/lang/String;

    move-result-object v10

    const-string v12, "monospace"

    invoke-static {v10, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_a

    .line 23
    invoke-virtual {v4, v8, v9}, Landroid/text/SpannableStringBuilder;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v10

    const-string v12, "s.subSequence(start, end)"

    invoke-static {v10, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v12, 0xa

    invoke-static {v10, v12, v0, v11}, Ls1/f0/v;->A(Ljava/lang/CharSequence;CZI)Z

    move-result v10

    if-eqz v10, :cond_9

    .line 24
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->MONOSPACE_MULTILINE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p0, v4, v10, v8, v9}, Le/a/a/c/p8/i;->a(Landroid/text/Editable;Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V

    goto :goto_1

    .line 25
    :cond_9
    sget-object v10, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->MONOSPACE:Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    invoke-virtual {p0, v4, v10, v8, v9}, Le/a/a/c/p8/i;->a(Landroid/text/Editable;Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V

    .line 26
    :cond_a
    :goto_1
    invoke-virtual {v4, v7}, Landroid/text/SpannableStringBuilder;->removeSpan(Ljava/lang/Object;)V

    :cond_b
    :goto_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 27
    :cond_c
    invoke-interface {v3, p1, p2, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    :cond_d
    :goto_3
    return v1

    :cond_e
    return v0
.end method

.method public onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .locals 1

    const-string v0, "mode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "menu"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x1

    return p1
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
