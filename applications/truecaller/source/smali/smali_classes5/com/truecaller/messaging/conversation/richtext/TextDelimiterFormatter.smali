.class public final Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;
    }
.end annotation


# static fields
.field public static final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Class<",
            "+",
            "Ljava/lang/Object;",
            ">;>;"
        }
    .end annotation
.end field

.field public static final b:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;


# direct methods
.method public static constructor <clinit>()V
    .locals 3

    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/Class;

    const/4 v1, 0x0

    .line 1
    const-class v2, Landroid/text/style/StyleSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x1

    .line 2
    const-class v2, Landroid/text/style/UnderlineSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x2

    .line 3
    const-class v2, Landroid/text/style/StrikethroughSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x3

    .line 4
    const-class v2, Landroid/text/style/TypefaceSpan;

    aput-object v2, v0, v1

    const/4 v1, 0x4

    .line 5
    const-class v2, Landroid/text/style/ForegroundColorSpan;

    aput-object v2, v0, v1

    .line 6
    invoke-static {v0}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->a:Ljava/util/List;

    return-void
.end method

.method public static final a(Landroid/text/Spannable;)V
    .locals 8

    .line 1
    sget-object v0, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->a:Ljava/util/List;

    .line 2
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    .line 3
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v2

    const/4 v3, 0x0

    invoke-interface {p0, v3, v2, v1}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v2

    const-string v4, "text.getSpans(0, text.length, spanClass)"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 5
    array-length v5, v2

    :goto_0
    if-ge v3, v5, :cond_2

    aget-object v6, v2, v3

    .line 6
    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v7

    invoke-static {v7, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {v4, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 7
    :cond_2
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 8
    invoke-interface {p0, v2}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    return-void
.end method

.method public static final b(Landroid/widget/TextView;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)V
    .locals 3

    const-string v0, "textView"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiterVisibility"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    .line 2
    invoke-virtual {p0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "textView.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "text"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v0, p1}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->c(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)Landroid/text/Spannable;

    move-result-object p1

    .line 3
    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_0
    return-void
.end method

.method public static final c(Landroid/content/Context;Ljava/lang/CharSequence;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)Landroid/text/Spannable;
    .locals 8

    const-string v0, "context"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "delimiterVisibility"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;->REMOVE:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;

    if-ne p2, v0, :cond_4

    .line 2
    new-instance p2, Le/a/a/c/p8/e;

    invoke-direct {p2, p0, p1}, Le/a/a/c/p8/e;-><init>(Landroid/content/Context;Ljava/lang/CharSequence;)V

    .line 3
    invoke-static {p1, p2}, Le/a/a/c/p8/g;->b(Ljava/lang/CharSequence;Le/a/a/c/p8/a;)V

    .line 4
    iget-object p0, p2, Le/a/a/c/p8/e;->b:Ljava/util/List;

    invoke-interface {p0}, Ljava/util/List;->isEmpty()Z

    move-result p0

    if-eqz p0, :cond_0

    new-instance p0, Landroid/text/SpannableString;

    iget-object p1, p2, Le/a/a/c/p8/e;->d:Ljava/lang/CharSequence;

    invoke-direct {p0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    goto :goto_3

    .line 5
    :cond_0
    new-instance p0, Landroid/text/SpannableStringBuilder;

    invoke-direct {p0}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6
    iget-object p1, p2, Le/a/a/c/p8/e;->a:[C

    array-length v0, p1

    new-array v0, v0, [I

    .line 7
    array-length v1, p1

    const/4 v2, 0x0

    move v3, v2

    move v4, v3

    move v5, v4

    :goto_0
    if-ge v3, v1, :cond_2

    aget-char v6, p1, v3

    add-int/lit8 v7, v4, 0x1

    .line 8
    aput v5, v0, v4

    if-eqz v6, :cond_1

    .line 9
    invoke-virtual {p0, v6}, Landroid/text/SpannableStringBuilder;->append(C)Landroid/text/SpannableStringBuilder;

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    :goto_1
    add-int/lit8 v3, v3, 0x1

    move v4, v7

    goto :goto_0

    .line 10
    :cond_2
    iget-object p1, p2, Le/a/a/c/p8/e;->b:Ljava/util/List;

    .line 11
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ls1/o;

    .line 12
    iget-object v1, p2, Ls1/o;->a:Ljava/lang/Object;

    .line 13
    check-cast v1, Landroid/text/style/CharacterStyle;

    .line 14
    iget-object v3, p2, Ls1/o;->b:Ljava/lang/Object;

    .line 15
    check-cast v3, Ljava/lang/Number;

    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 16
    iget-object p2, p2, Ls1/o;->c:Ljava/lang/Object;

    .line 17
    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    .line 18
    aget v4, v0, v3

    sub-int/2addr v3, v4

    aget v4, v0, p2

    sub-int/2addr p2, v4

    invoke-virtual {p0, v1, v3, p2, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_2

    :cond_3
    :goto_3
    return-object p0

    .line 19
    :cond_4
    instance-of v0, p1, Landroid/text/Spannable;

    if-eqz v0, :cond_5

    .line 20
    check-cast p1, Landroid/text/Spannable;

    invoke-static {p1}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->a(Landroid/text/Spannable;)V

    goto :goto_4

    .line 21
    :cond_5
    new-instance v0, Landroid/text/SpannableString;

    invoke-direct {v0, p1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    move-object p1, v0

    .line 22
    :goto_4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    if-eqz p2, :cond_6

    .line 23
    new-instance p0, Le/a/a/c/p8/c;

    invoke-direct {p0, p1}, Le/a/a/c/p8/c;-><init>(Landroid/text/Spannable;)V

    goto :goto_5

    .line 24
    :cond_6
    new-instance p2, Le/a/a/c/p8/f;

    invoke-direct {p2, p0, p1}, Le/a/a/c/p8/f;-><init>(Landroid/content/Context;Landroid/text/Spannable;)V

    move-object p0, p2

    .line 25
    :goto_5
    invoke-static {p1, p0}, Le/a/a/c/p8/g;->b(Ljava/lang/CharSequence;Le/a/a/c/p8/a;)V

    return-object p1
.end method
