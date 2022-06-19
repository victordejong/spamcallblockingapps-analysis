.class public final Ln3/k/g/f/b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/k/g/f/b$b;
    }
.end annotation


# static fields
.field public static final a:[Ljava/lang/String;

.field public static final b:Ljava/util/Comparator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Comparator<",
            "Ln3/k/g/f/b$b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    sput-object v0, Ln3/k/g/f/b;->a:[Ljava/lang/String;

    .line 2
    new-instance v0, Ln3/k/g/f/b$a;

    invoke-direct {v0}, Ln3/k/g/f/b$a;-><init>()V

    sput-object v0, Ln3/k/g/f/b;->b:Ljava/util/Comparator;

    return-void
.end method

.method public static a(Landroid/widget/TextView;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 2
    instance-of v0, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v0, :cond_0

    .line 3
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_0
    return-void
.end method

.method public static b(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 7

    .line 1
    invoke-static {}, Ln3/k/g/f/b;->g()Z

    move-result p2

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    .line 2
    invoke-static {p0, p1, p2, p2, p4}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Ln3/k/g/f/b;->g()Z

    move-result p2

    if-eqz p2, :cond_1

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v5, p4

    .line 4
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/widget/TextView;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    goto/16 :goto_4

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p2

    invoke-static {p2}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object p2

    .line 6
    invoke-static {}, Ln3/k/g/f/b;->g()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v5, p4

    .line 7
    invoke-static/range {v0 .. v5}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;Ljava/util/regex/Pattern;Ljava/lang/String;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)Z

    move-result p1

    goto :goto_3

    :cond_2
    const-string p3, ""

    .line 8
    sget-object v0, Ln3/k/g/f/b;->a:[Ljava/lang/String;

    .line 9
    array-length v1, v0

    const/4 v2, 0x1

    add-int/2addr v1, v2

    new-array v1, v1, [Ljava/lang/String;

    .line 10
    sget-object v3, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {p3, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aput-object v3, v1, v4

    move v3, v4

    .line 11
    :goto_0
    array-length v5, v0

    if-ge v3, v5, :cond_4

    .line 12
    aget-object v5, v0, v3

    add-int/lit8 v3, v3, 0x1

    if-nez v5, :cond_3

    move-object v5, p3

    goto :goto_1

    .line 13
    :cond_3
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    :goto_1
    aput-object v5, v1, v3

    goto :goto_0

    .line 14
    :cond_4
    invoke-virtual {p1, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p1

    move p3, v4

    .line 15
    :goto_2
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->find()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 16
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->start()I

    move-result p3

    .line 17
    invoke-virtual {p1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 18
    invoke-virtual {p1, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, p1, p4}, Ln3/k/g/f/b;->f(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v3

    .line 19
    new-instance v5, Landroid/text/style/URLSpan;

    invoke-direct {v5, v3}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v3, 0x21

    .line 20
    invoke-interface {p2, v5, p3, v0, v3}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    move p3, v2

    goto :goto_2

    :cond_5
    move p1, p3

    :goto_3
    if-eqz p1, :cond_6

    .line 21
    invoke-virtual {p0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 22
    invoke-static {p0}, Ln3/k/g/f/b;->a(Landroid/widget/TextView;)V

    :cond_6
    :goto_4
    return-void
.end method

.method public static c(Landroid/text/Spannable;I)Z
    .locals 11

    .line 1
    invoke-static {}, Ln3/k/g/f/b;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0, p1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    move-result p0

    return p0

    :cond_0
    const/4 v0, 0x0

    if-nez p1, :cond_1

    return v0

    .line 3
    :cond_1
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [Landroid/text/style/URLSpan;

    .line 4
    array-length v2, v1

    const/4 v3, 0x1

    sub-int/2addr v2, v3

    :goto_0
    if-ltz v2, :cond_2

    .line 5
    aget-object v4, v1, v2

    invoke-interface {p0, v4}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    :cond_2
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_3

    const/4 v1, 0x4

    .line 6
    invoke-static {p0, v1}, Landroid/text/util/Linkify;->addLinks(Landroid/text/Spannable;I)Z

    .line 7
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    and-int/lit8 v2, p1, 0x1

    if-eqz v2, :cond_4

    .line 8
    sget-object v6, Ln3/k/h/d;->g:Ljava/util/regex/Pattern;

    const-string v2, "http://"

    const-string v4, "https://"

    const-string v5, "rtsp://"

    filled-new-array {v2, v4, v5}, [Ljava/lang/String;

    move-result-object v7

    sget-object v8, Landroid/text/util/Linkify;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Ln3/k/g/f/b;->e(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_4
    and-int/lit8 v2, p1, 0x2

    if-eqz v2, :cond_5

    .line 9
    sget-object v6, Ln3/k/h/d;->h:Ljava/util/regex/Pattern;

    const-string v2, "mailto:"

    filled-new-array {v2}, [Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object v4, v1

    move-object v5, p0

    invoke-static/range {v4 .. v9}, Ln3/k/g/f/b;->e(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    :cond_5
    and-int/lit8 p1, p1, 0x8

    if-eqz p1, :cond_7

    .line 10
    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    move v2, v0

    .line 11
    :catch_0
    :goto_1
    :try_start_0
    invoke-static {p1}, Ln3/k/g/f/b;->d(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_7

    .line 12
    invoke-virtual {p1, v4}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    if-gez v5, :cond_6

    goto :goto_2

    .line 13
    :cond_6
    new-instance v6, Ln3/k/g/f/b$b;

    invoke-direct {v6}, Ln3/k/g/f/b$b;-><init>()V

    .line 14
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v7

    add-int/2addr v7, v5

    add-int/2addr v5, v2

    .line 15
    iput v5, v6, Ln3/k/g/f/b$b;->c:I

    add-int/2addr v2, v7

    .line 16
    iput v2, v6, Ln3/k/g/f/b$b;->d:I

    .line 17
    invoke-virtual {p1, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_0 .. :try_end_0} :catch_1

    :try_start_1
    const-string v5, "UTF-8"

    .line 18
    invoke-static {v4, v5}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4
    :try_end_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_1 .. :try_end_1} :catch_1

    .line 19
    :try_start_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "geo:0,0?q="

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    iput-object v4, v6, Ln3/k/g/f/b$b;->b:Ljava/lang/String;

    .line 20
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catch Ljava/lang/UnsupportedOperationException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_1

    .line 21
    :catch_1
    :cond_7
    :goto_2
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result p1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v0, p1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [Landroid/text/style/URLSpan;

    move v2, v0

    .line 22
    :goto_3
    array-length v4, p1

    if-ge v2, v4, :cond_8

    .line 23
    new-instance v4, Ln3/k/g/f/b$b;

    invoke-direct {v4}, Ln3/k/g/f/b$b;-><init>()V

    .line 24
    aget-object v5, p1, v2

    iput-object v5, v4, Ln3/k/g/f/b$b;->a:Landroid/text/style/URLSpan;

    .line 25
    aget-object v5, p1, v2

    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanStart(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Ln3/k/g/f/b$b;->c:I

    .line 26
    aget-object v5, p1, v2

    invoke-interface {p0, v5}, Landroid/text/Spannable;->getSpanEnd(Ljava/lang/Object;)I

    move-result v5

    iput v5, v4, Ln3/k/g/f/b$b;->d:I

    .line 27
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 28
    :cond_8
    sget-object p1, Ln3/k/g/f/b;->b:Ljava/util/Comparator;

    invoke-static {v1, p1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    move v2, v0

    :goto_4
    const/4 v4, -0x1

    add-int/lit8 v5, p1, -0x1

    if-ge v2, v5, :cond_e

    .line 30
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/k/g/f/b$b;

    add-int/lit8 v7, v2, 0x1

    .line 31
    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ln3/k/g/f/b$b;

    .line 32
    iget v9, v6, Ln3/k/g/f/b$b;->c:I

    iget v10, v8, Ln3/k/g/f/b$b;->c:I

    if-gt v9, v10, :cond_d

    iget v6, v6, Ln3/k/g/f/b$b;->d:I

    if-le v6, v10, :cond_d

    .line 33
    iget v8, v8, Ln3/k/g/f/b$b;->d:I

    if-gt v8, v6, :cond_9

    goto :goto_5

    :cond_9
    sub-int/2addr v6, v9

    sub-int/2addr v8, v10

    if-le v6, v8, :cond_a

    :goto_5
    move v6, v7

    goto :goto_6

    :cond_a
    if-ge v6, v8, :cond_b

    move v6, v2

    goto :goto_6

    :cond_b
    move v6, v4

    :goto_6
    if-eq v6, v4, :cond_d

    .line 34
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ln3/k/g/f/b$b;

    iget-object p1, p1, Ln3/k/g/f/b$b;->a:Landroid/text/style/URLSpan;

    if-eqz p1, :cond_c

    .line 35
    invoke-interface {p0, p1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 36
    :cond_c
    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move p1, v5

    goto :goto_4

    :cond_d
    move v2, v7

    goto :goto_4

    .line 37
    :cond_e
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result p1

    if-nez p1, :cond_f

    return v0

    .line 38
    :cond_f
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_10
    :goto_7
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/k/g/f/b$b;

    .line 39
    iget-object v1, v0, Ln3/k/g/f/b$b;->a:Landroid/text/style/URLSpan;

    if-nez v1, :cond_10

    .line 40
    iget-object v1, v0, Ln3/k/g/f/b$b;->b:Ljava/lang/String;

    iget v2, v0, Ln3/k/g/f/b$b;->c:I

    iget v0, v0, Ln3/k/g/f/b$b;->d:I

    .line 41
    new-instance v4, Landroid/text/style/URLSpan;

    invoke-direct {v4, v1}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    const/16 v1, 0x21

    .line 42
    invoke-interface {p0, v4, v2, v0, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    goto :goto_7

    :cond_11
    return v3
.end method

.method public static d(Ljava/lang/String;)Ljava/lang/String;
    .locals 18

    move-object/from16 v0, p0

    .line 1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x1c

    if-lt v1, v2, :cond_0

    .line 2
    invoke-static/range {p0 .. p0}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 3
    :cond_0
    sget-object v1, Ln3/k/g/f/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v1, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    const/4 v2, 0x0

    move v3, v2

    .line 4
    :goto_0
    invoke-virtual {v1, v3}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 5
    invoke-virtual {v1, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ln3/k/g/f/a;->a(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_1d

    .line 6
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 7
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    .line 8
    sget-object v6, Ln3/k/g/f/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v6, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    const/4 v7, 0x1

    const/4 v8, -0x1

    const-string v9, ""

    move v15, v2

    move v10, v7

    move v11, v10

    move v14, v11

    move v12, v8

    move v13, v12

    .line 9
    :goto_1
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v5, v4, :cond_19

    .line 10
    invoke-virtual {v6, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v4

    if-nez v4, :cond_1

    .line 11
    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    goto :goto_2

    .line 12
    :cond_1
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v16

    sub-int v4, v4, v16

    const/16 v2, 0x19

    if-le v4, v2, :cond_2

    .line 13
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v4

    :goto_2
    neg-int v2, v4

    :goto_3
    move v13, v2

    goto/16 :goto_10

    .line 14
    :cond_2
    :goto_4
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->start()I

    move-result v2

    if-ge v5, v2, :cond_4

    add-int/lit8 v2, v5, 0x1

    .line 15
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v5, "\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v5, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v4

    if-eq v4, v8, :cond_3

    add-int/lit8 v10, v10, 0x1

    :cond_3
    move v5, v2

    goto :goto_4

    :cond_4
    const/4 v2, 0x5

    if-le v10, v2, :cond_5

    goto/16 :goto_a

    :cond_5
    add-int/2addr v11, v7

    const/16 v4, 0xe

    if-le v11, v4, :cond_6

    goto/16 :goto_a

    :cond_6
    if-lez v5, :cond_7

    add-int/lit8 v4, v5, -0x1

    .line 16
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const-string v2, ":,\"\'\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v2, v4}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v8, :cond_7

    goto :goto_5

    .line 17
    :cond_7
    sget-object v2, Ln3/k/g/f/a;->c:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 18
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_8

    .line 19
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v2

    const/4 v4, 0x0

    .line 20
    invoke-interface {v2, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Ln3/k/g/f/a;->a(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_8

    goto :goto_6

    :cond_8
    :goto_5
    const/4 v2, 0x0

    :goto_6
    if-eqz v2, :cond_b

    if-eqz v14, :cond_9

    if-le v10, v7, :cond_9

    neg-int v2, v5

    goto :goto_3

    :cond_9
    if-ne v12, v8, :cond_a

    move v12, v5

    :cond_a
    const/4 v2, 0x0

    goto/16 :goto_12

    :cond_b
    const/4 v2, 0x0

    .line 21
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v4

    .line 22
    sget-object v2, Ln3/k/g/f/a;->e:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v4}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_c

    move v15, v7

    goto/16 :goto_11

    :cond_c
    const/4 v2, 0x5

    if-ne v11, v2, :cond_d

    if-nez v15, :cond_d

    .line 23
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    :goto_7
    move v5, v2

    goto :goto_a

    :cond_d
    if-eqz v15, :cond_18

    const/4 v2, 0x4

    if-le v11, v2, :cond_18

    if-lez v5, :cond_e

    add-int/lit8 v2, v5, -0x1

    .line 24
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const-string v4, ",*\u2022\t \u00a0\u1680\u2000\u2001\u2002\u2003\u2004\u2005\u2006\u2007\u2008\u2009\u200a\u202f\u205f\u3000\n\u000b\u000c\r\u0085\u2028\u2029"

    invoke-virtual {v4, v2}, Ljava/lang/String;->indexOf(I)I

    move-result v2

    if-ne v2, v8, :cond_e

    goto :goto_8

    .line 25
    :cond_e
    sget-object v2, Ln3/k/g/f/a;->d:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Ljava/lang/String;->length()I

    move-result v4

    invoke-virtual {v2, v5, v4}, Ljava/util/regex/Matcher;->region(II)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 26
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->lookingAt()Z

    move-result v4

    if-eqz v4, :cond_f

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->toMatchResult()Ljava/util/regex/MatchResult;

    move-result-object v2

    goto :goto_9

    :cond_f
    :goto_8
    const/4 v2, 0x0

    :goto_9
    if-eqz v2, :cond_18

    const-string v4, "et"

    .line 27
    invoke-virtual {v9, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    const/4 v4, 0x0

    invoke-interface {v2, v4}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    const-string v4, "al"

    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 28
    invoke-interface {v2}, Ljava/util/regex/MatchResult;->end()I

    move-result v2

    goto :goto_7

    :goto_a
    const/4 v2, 0x0

    goto/16 :goto_13

    .line 29
    :cond_10
    sget-object v4, Ln3/k/g/f/a;->b:Ljava/util/regex/Pattern;

    invoke-virtual {v4, v0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 30
    invoke-interface {v2}, Ljava/util/regex/MatchResult;->end()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->find(I)Z

    move-result v5

    if-eqz v5, :cond_17

    const/4 v5, 0x0

    .line 31
    invoke-virtual {v4, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    .line 32
    invoke-interface {v2}, Ljava/util/regex/MatchResult;->groupCount()I

    move-result v5

    :goto_b
    if-lez v5, :cond_12

    add-int/lit8 v14, v5, -0x1

    .line 33
    invoke-interface {v2, v5}, Ljava/util/regex/MatchResult;->group(I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_11

    move v5, v14

    goto :goto_c

    :cond_11
    move v5, v14

    goto :goto_b

    .line 34
    :cond_12
    :goto_c
    sget-object v2, Ln3/k/g/f/a;->g:Ljava/util/regex/Pattern;

    invoke-virtual {v2, v9}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v2

    if-eqz v2, :cond_16

    sget-object v2, Ln3/k/g/f/a;->a:[Ln3/k/g/f/a$a;

    aget-object v2, v2, v5

    .line 35
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v5, 0x2

    const/4 v14, 0x0

    .line 36
    invoke-virtual {v9, v14, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    .line 37
    iget v9, v2, Ln3/k/g/f/a$a;->a:I

    if-gt v9, v5, :cond_13

    iget v9, v2, Ln3/k/g/f/a$a;->b:I

    if-le v5, v9, :cond_15

    :cond_13
    iget v9, v2, Ln3/k/g/f/a$a;->c:I

    if-eq v5, v9, :cond_15

    iget v2, v2, Ln3/k/g/f/a$a;->d:I

    if-ne v5, v2, :cond_14

    goto :goto_d

    :cond_14
    const/4 v2, 0x0

    goto :goto_e

    :cond_15
    :goto_d
    move v2, v7

    :goto_e
    if-eqz v2, :cond_16

    move v2, v7

    goto :goto_f

    :cond_16
    const/4 v2, 0x0

    :goto_f
    if-eqz v2, :cond_18

    .line 38
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->end()I

    move-result v2

    goto/16 :goto_3

    :goto_10
    const/4 v2, 0x0

    goto :goto_15

    .line 39
    :cond_17
    invoke-interface {v2}, Ljava/util/regex/MatchResult;->end()I

    move-result v2

    move v13, v2

    :cond_18
    :goto_11
    const/4 v2, 0x0

    const/4 v14, 0x0

    .line 40
    :goto_12
    invoke-virtual {v6, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v6}, Ljava/util/regex/Matcher;->end()I

    move-result v5

    goto/16 :goto_1

    :cond_19
    :goto_13
    if-lez v13, :cond_1a

    goto :goto_15

    :cond_1a
    if-lez v12, :cond_1b

    goto :goto_14

    :cond_1b
    move v12, v5

    :goto_14
    neg-int v13, v12

    :goto_15
    if-lez v13, :cond_1c

    .line 41
    invoke-virtual {v0, v3, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v4

    goto :goto_16

    :cond_1c
    neg-int v3, v13

    goto/16 :goto_0

    .line 42
    :cond_1d
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v3

    goto/16 :goto_0

    :cond_1e
    const/4 v4, 0x0

    :goto_16
    return-object v4
.end method

.method public static e(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ln3/k/g/f/b$b;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object p2

    .line 2
    :cond_0
    :goto_0
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->find()Z

    move-result p5

    if-eqz p5, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->start()I

    move-result p5

    .line 4
    invoke-virtual {p2}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    if-eqz p4, :cond_1

    .line 5
    invoke-interface {p4, p1, p5, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    :cond_1
    new-instance v1, Ln3/k/g/f/b$b;

    invoke-direct {v1}, Ln3/k/g/f/b$b;-><init>()V

    const/4 v2, 0x0

    .line 7
    invoke-virtual {p2, v2}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    invoke-static {v2, p3, p2, v3}, Ln3/k/g/f/b;->f(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v2

    .line 8
    iput-object v2, v1, Ln3/k/g/f/b$b;->b:Ljava/lang/String;

    .line 9
    iput p5, v1, Ln3/k/g/f/b$b;->c:I

    .line 10
    iput v0, v1, Ln3/k/g/f/b$b;->d:I

    .line 11
    invoke-virtual {p0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-void
.end method

.method public static f(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 7

    if-eqz p3, :cond_0

    .line 1
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_0
    const/4 p2, 0x0

    move p3, p2

    .line 2
    :goto_0
    array-length v0, p1

    const/4 v6, 0x1

    if-ge p3, v0, :cond_2

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 3
    aget-object v3, p1, p3

    const/4 v4, 0x0

    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 4
    aget-object v3, p1, p3

    const/4 v4, 0x0

    aget-object v0, p1, p3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_3

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, p3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    aget-object p3, p1, p3

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    invoke-virtual {p0, p3}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    goto :goto_1

    :cond_1
    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    :cond_2
    move v6, p2

    :cond_3
    :goto_1
    if-nez v6, :cond_4

    .line 6
    array-length p3, p1

    if-lez p3, :cond_4

    .line 7
    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    aget-object p1, p1, p2

    invoke-static {p3, p1, p0}, Le/d/c/a/a;->h(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    :cond_4
    return-object p0
.end method

.method public static g()Z
    .locals 2

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1c

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
