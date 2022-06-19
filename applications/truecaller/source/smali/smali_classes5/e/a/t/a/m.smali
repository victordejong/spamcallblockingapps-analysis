.class public final Le/a/t/a/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/text/TextWatcher;


# instance fields
.field public a:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 11

    const-string v0, "s"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/t/a/m;->a:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/t/a/m;->a:Z

    .line 3
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Le/a/t/a/q;

    const/4 v2, 0x0

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s.getSpans(0, s.length, \u2026ithEmojiSpan::class.java)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    array-length v1, v0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    check-cast v4, Le/a/t/a/q;

    .line 5
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 6
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 7
    invoke-interface {p1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    .line 8
    new-instance v7, Le/a/t/a/s;

    invoke-interface {p1, v5, v6}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Le/a/t/a/s;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v7, v5, v6, v2}, Landroid/text/Editable;->setSpan(Ljava/lang/Object;III)V

    .line 9
    iget-object v4, v4, Le/a/t/a/q;->a:Ljava/lang/String;

    .line 10
    invoke-interface {p1, v5, v6, v4}, Landroid/text/Editable;->replace(IILjava/lang/CharSequence;)Landroid/text/Editable;

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 11
    :cond_1
    invoke-interface {p1}, Landroid/text/Editable;->length()I

    move-result v0

    const-class v1, Le/a/t/a/r;

    invoke-interface {p1, v2, v0, v1}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v0

    const-string v1, "s.getSpans(0, s.length, \u2026EmoticonSpan::class.java)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    array-length v1, v0

    move v3, v2

    :goto_1
    if-ge v3, v1, :cond_3

    aget-object v4, v0, v3

    check-cast v4, Le/a/t/a/r;

    .line 13
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    .line 14
    invoke-interface {p1, v4}, Landroid/text/Editable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v6

    .line 15
    const-class v7, Le/a/t/a/w/a;

    invoke-interface {p1, v5, v6, v7}, Landroid/text/Editable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v7

    const-string v8, "s.getSpans(start, end, EmojiSpan::class.java)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    array-length v8, v7

    move v9, v2

    :goto_2
    if-ge v9, v8, :cond_2

    aget-object v10, v7, v9

    check-cast v10, Le/a/t/a/w/a;

    .line 17
    invoke-interface {p1, v10}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 18
    :cond_2
    invoke-interface {p1, v5, v6}, Landroid/text/Editable;->delete(II)Landroid/text/Editable;

    .line 19
    iget-object v6, v4, Le/a/t/a/r;->a:Ljava/lang/String;

    .line 20
    invoke-interface {p1, v5, v6}, Landroid/text/Editable;->insert(ILjava/lang/CharSequence;)Landroid/text/Editable;

    .line 21
    invoke-interface {p1, v4}, Landroid/text/Editable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 22
    :cond_3
    iput-boolean v2, p0, Le/a/t/a/m;->a:Z

    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 5

    const-string v0, "s"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/t/a/m;->a:Z

    if-nez v0, :cond_2

    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_0

    goto :goto_1

    :cond_0
    const/4 v0, 0x2

    sub-int p4, p3, p4

    const/4 v1, 0x1

    if-gt v1, p4, :cond_2

    if-ge v0, p4, :cond_1

    goto :goto_1

    .line 2
    :cond_1
    check-cast p1, Landroid/text/Spannable;

    add-int/2addr p3, p2

    const-class p4, Le/a/t/a/s;

    invoke-interface {p1, p2, p3, p4}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p2

    const-string p3, "s.getSpans(start, start \u2026EmoticonSpan::class.java)"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length p3, p2

    const/4 p4, 0x0

    move v0, p4

    :goto_0
    if-ge v0, p3, :cond_2

    aget-object v1, p2, v0

    check-cast v1, Le/a/t/a/s;

    .line 4
    new-instance v2, Le/a/t/a/r;

    .line 5
    iget-object v3, v1, Le/a/t/a/s;->a:Ljava/lang/String;

    .line 6
    invoke-direct {v2, v3}, Le/a/t/a/r;-><init>(Ljava/lang/String;)V

    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v3

    invoke-interface {p1, v1}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v4

    invoke-interface {p1, v2, v3, v4, p4}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 7
    invoke-interface {p1, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 2

    const-string v0, "s"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-boolean v0, p0, Le/a/t/a/m;->a:Z

    if-nez v0, :cond_3

    instance-of v0, p1, Landroid/text/Spannable;

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    add-int/2addr p2, p4

    const/4 v0, 0x1

    sub-int/2addr p2, v0

    sub-int/2addr p4, p3

    if-ne p4, v0, :cond_3

    .line 2
    invoke-interface {p1, p2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p3

    const/16 p4, 0x20

    if-eq p3, p4, :cond_1

    goto :goto_0

    :cond_1
    const/4 p3, 0x5

    .line 3
    invoke-static {p3, p2}, Ljava/lang/Math;->min(II)I

    move-result p3

    const/4 p4, 0x2

    invoke-static {p3, p4}, Ls1/d0/j;->f(II)Ls1/d0/g;

    move-result-object p3

    .line 4
    invoke-interface {p3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :cond_2
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-eqz p4, :cond_3

    move-object p4, p3

    check-cast p4, Ls1/u/z;

    invoke-virtual {p4}, Ls1/u/z;->a()I

    move-result p4

    sub-int p4, p2, p4

    .line 5
    invoke-interface {p1, p4, p2}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    .line 6
    sget-object v1, Le/a/t/a/n;->b:Le/a/t/a/n;

    .line 7
    sget-object v1, Le/a/t/a/n;->a:Ljava/util/Map;

    .line 8
    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2

    .line 9
    check-cast p1, Landroid/text/Spannable;

    new-instance p3, Le/a/t/a/q;

    invoke-direct {p3, v0}, Le/a/t/a/q;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-interface {p1, p3, p4, p2, v0}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    :cond_3
    :goto_0
    return-void
.end method
