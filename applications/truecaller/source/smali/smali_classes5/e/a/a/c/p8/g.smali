.class public final Le/a/a/c/p8/g;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(C)Z
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/lang/Character;->getType(C)I

    move-result p0

    int-to-byte p0, p0

    const/4 v0, 0x1

    if-eq p0, v0, :cond_0

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    const/16 v1, 0xa

    if-eq p0, v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return v0
.end method

.method public static final b(Ljava/lang/CharSequence;Le/a/a/c/p8/a;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    const-string v2, "text"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "callback"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v3, Ls1/z/c/a0;

    invoke-direct {v3}, Ls1/z/c/a0;-><init>()V

    const/4 v4, -0x1

    iput v4, v3, Ls1/z/c/a0;->a:I

    .line 3
    new-instance v5, Ls1/z/c/a0;

    invoke-direct {v5}, Ls1/z/c/a0;-><init>()V

    iput v4, v5, Ls1/z/c/a0;->a:I

    .line 4
    new-instance v6, Ls1/z/c/a0;

    invoke-direct {v6}, Ls1/z/c/a0;-><init>()V

    iput v4, v6, Ls1/z/c/a0;->a:I

    .line 5
    new-instance v4, Le/a/a/c/p8/g$a;

    invoke-direct {v4, v6, v3, v5}, Le/a/a/c/p8/g$a;-><init>(Ls1/z/c/a0;Ls1/z/c/a0;Ls1/z/c/a0;)V

    const/4 v7, 0x0

    move v8, v7

    .line 6
    :goto_0
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v9

    if-ge v7, v9, :cond_17

    .line 7
    invoke-interface {v0, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    .line 8
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v10

    const/4 v11, 0x0

    if-eqz v10, :cond_0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    .line 9
    new-instance v12, Ls1/k;

    invoke-direct {v12, v10, v11}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 10
    :cond_0
    invoke-static {v2}, Ls1/u/i;->Q(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v10

    move-object v12, v10

    check-cast v12, Ls1/k;

    .line 11
    :goto_1
    iget-object v10, v12, Ls1/k;->a:Ljava/lang/Object;

    .line 12
    check-cast v10, Ljava/lang/Number;

    invoke-virtual {v10}, Ljava/lang/Number;->intValue()I

    move-result v10

    .line 13
    iget-object v11, v12, Ls1/k;->b:Ljava/lang/Object;

    .line 14
    check-cast v11, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    const/16 v12, 0xa

    if-ne v9, v12, :cond_1

    .line 15
    sget-object v12, Le/a/a/c/p8/g$b;->b:Le/a/a/c/p8/g$b;

    invoke-static {v2, v12}, Ls1/u/i;->w0(Ljava/util/List;Ls1/z/b/l;)Z

    .line 16
    :cond_1
    invoke-interface/range {p0 .. p0}, Ljava/lang/CharSequence;->length()I

    move-result v12

    sub-int/2addr v12, v7

    .line 17
    invoke-static {}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->values()[Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;

    move-result-object v13

    :goto_2
    const/4 v14, 0x6

    if-ge v8, v14, :cond_5

    .line 18
    aget-object v14, v13, v8

    .line 19
    invoke-virtual {v14}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/String;->length()I

    move-result v15

    if-lt v12, v15, :cond_2

    invoke-virtual {v14}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v15

    invoke-virtual {v14}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    move/from16 v17, v12

    add-int v12, v16, v7

    invoke-interface {v0, v7, v12}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v15, v12}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3

    const/4 v12, 0x1

    goto :goto_3

    :cond_2
    move/from16 v17, v12

    :cond_3
    const/4 v12, 0x0

    :goto_3
    if-eqz v12, :cond_4

    goto :goto_4

    :cond_4
    add-int/lit8 v8, v8, 0x1

    move/from16 v12, v17

    goto :goto_2

    :cond_5
    const/4 v14, 0x0

    :goto_4
    if-nez v14, :cond_e

    const/16 v8, 0x28

    if-eq v9, v8, :cond_c

    const/16 v8, 0x29

    if-eq v9, v8, :cond_9

    const/16 v8, 0x5b

    if-eq v9, v8, :cond_8

    const/16 v8, 0x5d

    if-eq v9, v8, :cond_6

    goto :goto_6

    .line 20
    :cond_6
    iget v8, v3, Ls1/z/c/a0;->a:I

    const/4 v9, -0x1

    if-eq v8, v9, :cond_7

    .line 21
    iput v7, v5, Ls1/z/c/a0;->a:I

    .line 22
    iput v9, v6, Ls1/z/c/a0;->a:I

    goto :goto_6

    .line 23
    :cond_7
    invoke-virtual {v4}, Le/a/a/c/p8/g$a;->a()V

    goto :goto_6

    :cond_8
    const/4 v8, -0x1

    add-int/lit8 v9, v7, 0x1

    .line 24
    iput v9, v3, Ls1/z/c/a0;->a:I

    .line 25
    iput v8, v5, Ls1/z/c/a0;->a:I

    .line 26
    iput v8, v6, Ls1/z/c/a0;->a:I

    goto :goto_6

    :cond_9
    const/4 v8, -0x1

    .line 27
    iget v9, v6, Ls1/z/c/a0;->a:I

    if-eq v9, v8, :cond_b

    invoke-interface {v0, v9, v7}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 28
    :try_start_0
    new-instance v9, Ljava/net/URI;

    invoke-direct {v9, v8}, Ljava/net/URI;-><init>(Ljava/lang/String;)V

    .line 29
    invoke-virtual {v9}, Ljava/net/URI;->getScheme()Ljava/lang/String;

    move-result-object v8

    if-eqz v8, :cond_a

    invoke-virtual {v9}, Ljava/net/URI;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v8
    :try_end_0
    .catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto :goto_5

    :catch_0
    :cond_a
    const/4 v8, 0x0

    :goto_5
    if-eqz v8, :cond_b

    .line 30
    iget v8, v3, Ls1/z/c/a0;->a:I

    iget v9, v6, Ls1/z/c/a0;->a:I

    invoke-interface {v1, v8, v9, v7}, Le/a/a/c/p8/a;->a(III)V

    .line 31
    :cond_b
    invoke-virtual {v4}, Le/a/a/c/p8/g$a;->a()V

    goto :goto_6

    .line 32
    :cond_c
    iget v8, v5, Ls1/z/c/a0;->a:I

    add-int/lit8 v9, v7, -0x1

    if-ne v8, v9, :cond_d

    add-int/lit8 v8, v7, 0x1

    .line 33
    iput v8, v6, Ls1/z/c/a0;->a:I

    goto :goto_6

    .line 34
    :cond_d
    invoke-virtual {v4}, Le/a/a/c/p8/g$a;->a()V

    :goto_6
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_b

    :cond_e
    if-ne v11, v14, :cond_13

    add-int/lit8 v8, v7, -0x1

    .line 35
    invoke-static {v0, v8}, Ls1/f0/w;->m0(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    .line 36
    invoke-static {v0, v9}, Ls1/f0/w;->m0(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    move-result-object v9

    if-eqz v8, :cond_10

    .line 37
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v8

    .line 38
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_10

    if-eqz v9, :cond_f

    .line 39
    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-static {v8}, Le/a/a/c/p8/g;->a(C)Z

    move-result v8

    if-nez v8, :cond_10

    :cond_f
    const/4 v8, 0x1

    goto :goto_7

    :cond_10
    const/4 v8, 0x0

    :goto_7
    if-eqz v8, :cond_16

    if-le v7, v10, :cond_11

    .line 40
    invoke-interface {v1, v14, v10, v7}, Le/a/a/c/p8/a;->b(Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;II)V

    :cond_11
    const-string v8, "$this$removeLast"

    .line 41
    invoke-static {v2, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 42
    invoke-virtual {v2}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v8

    if-nez v8, :cond_12

    invoke-static {v2}, Ls1/u/i;->F(Ljava/util/List;)I

    move-result v8

    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    goto :goto_a

    :cond_12
    new-instance v0, Ljava/util/NoSuchElementException;

    const-string v1, "List is empty."

    invoke-direct {v0, v1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_13
    add-int/lit8 v8, v7, -0x1

    .line 43
    invoke-static {v0, v8}, Ls1/f0/w;->m0(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    move-result-object v8

    add-int/lit8 v9, v7, 0x1

    .line 44
    invoke-static {v0, v9}, Ls1/f0/w;->m0(Ljava/lang/CharSequence;I)Ljava/lang/Character;

    move-result-object v9

    if-eqz v8, :cond_15

    .line 45
    invoke-virtual {v8}, Ljava/lang/Character;->charValue()C

    move-result v8

    invoke-static {v8}, Le/a/a/c/p8/g;->a(C)Z

    move-result v8

    if-nez v8, :cond_14

    if-eqz v9, :cond_14

    invoke-virtual {v9}, Ljava/lang/Character;->charValue()C

    move-result v8

    .line 46
    invoke-static {v8}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v8

    if-nez v8, :cond_14

    goto :goto_8

    :cond_14
    const/4 v8, 0x0

    goto :goto_9

    :cond_15
    :goto_8
    const/4 v8, 0x1

    :goto_9
    if-eqz v8, :cond_16

    .line 47
    invoke-virtual {v14}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v8, v7

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    .line 48
    new-instance v9, Ls1/k;

    invoke-direct {v9, v8, v14}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 49
    invoke-virtual {v2, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    :cond_16
    :goto_a
    invoke-virtual {v14}, Lcom/truecaller/messaging/conversation/richtext/FormattingStyle;->getDelimiter()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/String;->length()I

    move-result v8

    add-int/2addr v7, v8

    :goto_b
    const/4 v8, 0x0

    goto/16 :goto_0

    :cond_17
    return-void
.end method
