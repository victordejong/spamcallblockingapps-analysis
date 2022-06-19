.class public Le/q/b/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/q/b/d$c;,
        Le/q/b/d$b;
    }
.end annotation


# instance fields
.field public final a:Le/q/b/a;

.field public final b:Le/q/b/b;


# direct methods
.method public constructor <init>(Le/q/b/e/b;)V
    .locals 6

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-interface {p1}, Le/q/b/e/b;->d()Lorg/json/JSONArray;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Le/q/b/e/b;->x()Lorg/json/JSONObject;

    move-result-object v1

    .line 4
    invoke-interface {p1}, Le/q/b/e/b;->u()Lorg/json/JSONObject;

    move-result-object v2

    .line 5
    invoke-interface {p1}, Le/q/b/e/b;->q()Lorg/json/JSONObject;

    move-result-object p1

    .line 6
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 7
    :goto_0
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v5

    if-ge v4, v5, :cond_0

    .line 8
    :try_start_0
    invoke-virtual {v0, v4}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 9
    :cond_0
    new-instance v0, Le/q/b/a;

    invoke-direct {v0, v1, v2, p1}, Le/q/b/a;-><init>(Lorg/json/JSONObject;Lorg/json/JSONObject;Lorg/json/JSONObject;)V

    iput-object v0, p0, Le/q/b/d;->a:Le/q/b/a;

    .line 10
    new-instance p1, Le/q/b/b;

    invoke-direct {p1, v3}, Le/q/b/b;-><init>(Ljava/util/List;)V

    iput-object p1, p0, Le/q/b/d;->b:Le/q/b/b;

    return-void
.end method

.method public static c(Ljava/lang/String;ILe/q/b/d$c;Le/q/c/b/a;)Le/q/b/d$c;
    .locals 14

    move-object v0, p0

    if-eqz v0, :cond_20

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_d

    :cond_0
    const/4 v1, 0x0

    const/4 v2, 0x1

    move v3, v1

    move v4, v2

    .line 2
    :goto_0
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, -0x1

    if-ge v3, v5, :cond_13

    if-lez v4, :cond_13

    .line 3
    invoke-virtual {p0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v5

    .line 4
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v7

    sub-int/2addr v7, v2

    if-ne v3, v7, :cond_2

    const/16 v7, 0x5d

    if-eq v5, v7, :cond_1

    const/16 v7, 0x29

    if-ne v5, v7, :cond_2

    :cond_1
    move v7, v2

    goto :goto_1

    :cond_2
    move v7, v1

    :goto_1
    const/16 v8, 0x39

    const/16 v9, 0x30

    const/16 v10, 0x2d

    const/16 v11, 0x20

    const/4 v12, 0x6

    const/4 v13, 0x2

    if-eq v4, v2, :cond_8

    if-eq v4, v13, :cond_4

    if-eq v4, v12, :cond_3

    goto/16 :goto_7

    .line 5
    :cond_3
    invoke-static {v5}, Le/a/p5/s0/g;->s0(C)Z

    move-result v5

    if-eqz v5, :cond_12

    const/4 v4, 0x5

    goto/16 :goto_7

    .line 6
    :cond_4
    invoke-static {v5}, Le/a/p5/s0/g;->s0(C)Z

    move-result v4

    if-nez v4, :cond_c

    if-eq v5, v11, :cond_c

    if-eq v5, v10, :cond_c

    const/16 v4, 0x2e

    if-ne v5, v4, :cond_5

    goto :goto_4

    :cond_5
    if-eqz v7, :cond_6

    const/16 v4, 0x66

    goto :goto_7

    :cond_6
    if-lt v5, v9, :cond_7

    if-gt v5, v8, :cond_7

    move v4, v2

    goto :goto_2

    :cond_7
    move v4, v1

    :goto_2
    if-eqz v4, :cond_10

    const/4 v4, 0x4

    goto :goto_7

    .line 7
    :cond_8
    invoke-static {v5}, Le/a/p5/s0/g;->x0(C)Z

    move-result v4

    if-nez v4, :cond_11

    if-eq v5, v11, :cond_11

    if-ne v5, v10, :cond_9

    goto :goto_6

    :cond_9
    if-eqz v7, :cond_a

    const/16 v4, 0x65

    goto :goto_7

    :cond_a
    const/16 v4, 0x61

    if-lt v5, v4, :cond_b

    const/16 v4, 0x7a

    if-gt v5, v4, :cond_b

    move v4, v2

    goto :goto_3

    :cond_b
    move v4, v1

    :goto_3
    if-eqz v4, :cond_d

    :cond_c
    :goto_4
    move v4, v13

    goto :goto_7

    :cond_d
    if-lt v5, v9, :cond_e

    if-gt v5, v8, :cond_e

    move v4, v2

    goto :goto_5

    :cond_e
    move v4, v1

    :goto_5
    if-eqz v4, :cond_10

    if-nez v3, :cond_f

    move v4, v12

    goto :goto_7

    :cond_f
    if-lt v3, v13, :cond_10

    const/4 v4, 0x3

    goto :goto_7

    :cond_10
    move v4, v6

    goto :goto_7

    :cond_11
    :goto_6
    move v4, v2

    :cond_12
    :goto_7
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_13
    const/16 v3, 0x64

    if-le v4, v3, :cond_14

    add-int/lit8 v4, v4, -0x64

    .line 8
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v2

    invoke-virtual {p0, v1, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 9
    :cond_14
    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v3

    const-string v5, "salary"

    .line 10
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    const-string v8, "trx_subcategory"

    if-eqz v7, :cond_15

    move-object/from16 v7, p3

    check-cast v7, Le/q/f/a/f/n;

    .line 11
    iget-object v9, v7, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v10, "trx_type"

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/String;

    const-string v10, "credit"

    .line 12
    invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_15

    .line 13
    iget-object v1, v7, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v3, "trx_category"

    const-string v9, "income"

    invoke-virtual {v1, v3, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 14
    iget-object v1, v7, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    :cond_15
    const-string v5, "loan"

    .line 15
    invoke-virtual {v3, v5}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_16

    .line 16
    move-object/from16 v1, p3

    check-cast v1, Le/q/f/a/f/n;

    .line 17
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v1, v1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v8, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_8

    :cond_16
    const-string v5, "c.*s.*w.*d.*l"

    .line 19
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 20
    invoke-virtual {v5, v3}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v3

    .line 21
    invoke-virtual {v3}, Ljava/util/regex/Matcher;->find()Z

    move-result v3

    if-eqz v3, :cond_17

    .line 22
    move-object/from16 v1, p3

    check-cast v1, Le/q/f/a/f/n;

    .line 23
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    iget-object v1, v1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v3, "withdraw"

    invoke-virtual {v1, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    :goto_8
    move v1, v2

    :cond_17
    if-eqz v1, :cond_18

    goto :goto_9

    .line 25
    :cond_18
    move-object/from16 v1, p3

    check-cast v1, Le/q/f/a/f/n;

    .line 26
    iget-object v1, v1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v2, "loc"

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_19

    .line 27
    move-object/from16 v1, p3

    check-cast v1, Le/q/f/a/f/n;

    .line 28
    iget-object v1, v1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 29
    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    move v2, v6

    goto :goto_9

    :cond_19
    move v2, v4

    :goto_9
    if-gez v2, :cond_1a

    return-object p2

    .line 30
    :cond_1a
    new-instance v1, Le/q/b/d$c;

    move v3, p1

    invoke-direct {v1, v0, v2, p1}, Le/q/b/d$c;-><init>(Ljava/lang/String;II)V

    if-eqz p2, :cond_1f

    const/4 v0, 0x0

    move-object/from16 v2, p2

    :goto_a
    if-eqz v2, :cond_1e

    .line 31
    iget v3, v1, Le/q/b/d$c;->b:I

    iget v4, v2, Le/q/b/d$c;->b:I

    if-le v3, v4, :cond_1c

    .line 32
    iget-object v3, v2, Le/q/b/d$c;->d:Le/q/b/d$c;

    if-eqz v3, :cond_1b

    goto :goto_b

    .line 33
    :cond_1b
    iput-object v1, v2, Le/q/b/d$c;->d:Le/q/b/d$c;

    goto :goto_c

    .line 34
    :cond_1c
    iget-object v3, v2, Le/q/b/d$c;->c:Le/q/b/d$c;

    if-eqz v3, :cond_1d

    :goto_b
    move-object v2, v3

    goto :goto_a

    .line 35
    :cond_1d
    iput-object v1, v2, Le/q/b/d$c;->c:Le/q/b/d$c;

    :goto_c
    move-object v2, v0

    goto :goto_a

    :cond_1e
    move-object/from16 v1, p2

    :cond_1f
    return-object v1

    :cond_20
    :goto_d
    return-object p2
.end method

.method public static d(Le/q/c/b/a;)Le/q/c/b/a;
    .locals 15

    .line 1
    move-object v0, p0

    check-cast v0, Le/q/f/a/f/n;

    .line 2
    iget-object v0, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v1, "vendor"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v2, " +"

    const-string v3, " "

    invoke-virtual {v0, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x1

    const/4 v5, 0x0

    const/16 v6, 0x20

    move v7, v4

    .line 4
    :goto_0
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v8

    const/16 v9, 0xb

    const/4 v10, 0x7

    if-ge v5, v8, :cond_e

    .line 5
    invoke-virtual {v0, v5}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v11, 0x40

    const/16 v12, 0xc

    const/16 v13, 0x2a

    const/16 v14, 0x2f

    if-eq v7, v4, :cond_8

    if-eq v7, v10, :cond_4

    if-eq v7, v9, :cond_1

    if-eq v7, v12, :cond_0

    goto/16 :goto_7

    :cond_0
    if-eq v8, v14, :cond_3

    if-ne v8, v13, :cond_d

    goto :goto_1

    :cond_1
    if-eq v8, v14, :cond_3

    if-ne v8, v13, :cond_2

    goto :goto_1

    :cond_2
    if-ne v8, v11, :cond_d

    goto :goto_4

    :cond_3
    :goto_1
    const/16 v6, 0xa

    move v7, v6

    goto :goto_6

    .line 6
    :cond_4
    invoke-virtual {v0, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    .line 7
    :goto_2
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v11

    if-ge v10, v11, :cond_6

    .line 8
    invoke-virtual {v9, v10}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x20

    if-ne v11, v12, :cond_5

    goto :goto_3

    :cond_5
    add-int/lit8 v10, v10, 0x1

    goto :goto_2

    .line 9
    :cond_6
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v9

    add-int/lit8 v10, v9, -0x1

    :goto_3
    const/16 v9, 0x2e

    if-ne v8, v9, :cond_d

    const/4 v8, 0x3

    if-eq v10, v8, :cond_7

    const/4 v8, 0x2

    if-eq v10, v8, :cond_7

    const/4 v8, 0x5

    if-ne v10, v8, :cond_d

    :cond_7
    const/16 v5, 0x8

    move v7, v5

    move v5, v10

    goto :goto_7

    :cond_8
    if-ne v8, v11, :cond_9

    :goto_4
    move v7, v10

    goto :goto_7

    :cond_9
    if-eq v8, v14, :cond_c

    if-ne v8, v13, :cond_a

    goto :goto_5

    :cond_a
    const/16 v10, 0x2d

    if-ne v8, v10, :cond_b

    move v6, v8

    move v7, v9

    goto :goto_7

    :cond_b
    const/16 v9, 0x3a

    if-ne v8, v9, :cond_d

    move v6, v8

    move v7, v12

    goto :goto_7

    :cond_c
    :goto_5
    const/16 v7, 0xa

    :goto_6
    move v6, v8

    :cond_d
    :goto_7
    add-int/2addr v5, v4

    goto :goto_0

    :cond_e
    const/16 v5, 0xa

    if-eq v7, v5, :cond_11

    if-ne v7, v9, :cond_f

    goto :goto_8

    :cond_f
    if-eq v7, v10, :cond_10

    .line 10
    invoke-virtual {v0, v3}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 11
    array-length v6, v5

    if-le v6, v4, :cond_10

    .line 12
    invoke-static {v5, p0, v4}, Le/q/b/d;->e([Ljava/lang/String;Le/q/c/b/a;Z)V

    const/4 v5, 0x0

    goto :goto_9

    :cond_10
    const/4 v5, 0x0

    const/4 v6, 0x0

    goto :goto_b

    .line 13
    :cond_11
    :goto_8
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "\\"

    invoke-virtual {v5, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    .line 14
    array-length v6, v5

    if-le v6, v4, :cond_13

    const/4 v6, 0x0

    aget-object v7, v5, v6

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-le v7, v4, :cond_12

    .line 15
    invoke-static {v5, p0, v6}, Le/q/b/d;->e([Ljava/lang/String;Le/q/c/b/a;Z)V

    move v5, v6

    :goto_9
    move v6, v4

    goto :goto_b

    :cond_12
    move v5, v6

    goto :goto_a

    :cond_13
    const/4 v5, 0x0

    :goto_a
    move v6, v5

    :goto_b
    if-nez v6, :cond_14

    .line 16
    invoke-static {v0, v5}, Le/q/b/d;->f(Ljava/lang/String;Z)Z

    move-result v5

    if-eqz v5, :cond_14

    .line 17
    invoke-static {v0, p0}, Le/q/b/d;->g(Ljava/lang/String;Le/q/c/b/a;)Z

    .line 18
    :cond_14
    move-object v0, p0

    check-cast v0, Le/q/f/a/f/n;

    .line 19
    iget-object v5, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v6, "vendor_norm"

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    const-string v7, "("

    const-string v8, "["

    const/16 v9, 0x29

    const/16 v10, 0x5d

    if-eqz v5, :cond_19

    .line 20
    iget-object v5, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 21
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 22
    iget-object v5, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    const-string v11, "google"

    .line 23
    invoke-virtual {v5, v11}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_15

    const-string v5, "(?:GOOGLE|google|Google)[ ]*\\*(.*)"

    .line 24
    invoke-static {v5}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 25
    iget-object v11, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v11, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 26
    invoke-virtual {v5, v11}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v5

    .line 27
    invoke-virtual {v5}, Ljava/util/regex/Matcher;->find()Z

    move-result v11

    if-eqz v11, :cond_15

    const-string v11, "Google: "

    .line 28
    invoke-static {v11}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v5, v4}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 29
    :cond_15
    iget-object v5, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 30
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    if-lez v11, :cond_19

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v10, :cond_16

    invoke-virtual {v5, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    :cond_16
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    if-ne v11, v9, :cond_17

    invoke-virtual {v5, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-eqz v11, :cond_18

    :cond_17
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    invoke-virtual {v5, v11}, Ljava/lang/String;->charAt(I)C

    move-result v11

    const/16 v12, 0x2e

    if-ne v11, v12, :cond_19

    .line 31
    :cond_18
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v11

    sub-int/2addr v11, v4

    const/4 v12, 0x0

    invoke-virtual {v5, v12, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v6, v5}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 32
    :cond_19
    iget-object v5, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v5, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 33
    invoke-virtual {v5}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, v2, v3}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 34
    iget-object v2, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v6}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1d

    .line 35
    iget-object v2, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 36
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_1d

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v10, :cond_1a

    invoke-virtual {v2, v8}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1a
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-ne v3, v9, :cond_1b

    invoke-virtual {v2, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1c

    :cond_1b
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v5, 0x2e

    if-ne v3, v5, :cond_1d

    .line 37
    :cond_1c
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v4

    const/4 v4, 0x0

    invoke-virtual {v2, v4, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_1d
    return-object p0
.end method

.method public static e([Ljava/lang/String;Le/q/c/b/a;Z)V
    .locals 7

    const/4 v0, 0x0

    const/4 v1, 0x0

    move v2, v0

    move-object v3, v1

    .line 1
    :goto_0
    array-length v4, p0

    if-ge v2, v4, :cond_6

    .line 2
    aget-object v4, p0, v2

    if-eqz v4, :cond_3

    .line 3
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_0

    goto :goto_2

    :cond_0
    move v5, v0

    .line 4
    :goto_1
    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-ge v5, v6, :cond_2

    .line 5
    invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-static {v6}, Le/a/p5/s0/g;->x0(C)Z

    move-result v6

    if-nez v6, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v5, 0x1

    goto :goto_3

    :cond_3
    :goto_2
    move v5, v0

    :goto_3
    if-eqz v5, :cond_4

    .line 6
    invoke-static {v4, p1}, Le/q/b/d;->g(Ljava/lang/String;Le/q/c/b/a;)Z

    move-result v5

    if-nez v5, :cond_5

    .line 7
    invoke-static {v4, v2, v3, p1}, Le/q/b/d;->c(Ljava/lang/String;ILe/q/b/d$c;Le/q/c/b/a;)Le/q/b/d$c;

    move-result-object v3

    goto :goto_4

    .line 8
    :cond_4
    invoke-static {v4, v2, v3, p1}, Le/q/b/d;->c(Ljava/lang/String;ILe/q/b/d$c;Le/q/c/b/a;)Le/q/b/d$c;

    move-result-object v3

    :cond_5
    :goto_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_6
    const-string p0, "vendor_norm"

    if-nez p2, :cond_b

    const/4 v0, -0x1

    move-object v4, v1

    move-object v2, v3

    :goto_5
    if-eqz v2, :cond_a

    .line 9
    iget v5, v2, Le/q/b/d$c;->b:I

    if-le v5, v0, :cond_7

    .line 10
    iget-object v4, v2, Le/q/b/d$c;->a:Ljava/lang/String;

    move v0, v5

    .line 11
    :cond_7
    iget-object v5, v2, Le/q/b/d$c;->d:Le/q/b/d$c;

    if-eqz v5, :cond_8

    iget v6, v5, Le/q/b/d$c;->b:I

    if-le v6, v0, :cond_8

    .line 12
    iget-object v4, v5, Le/q/b/d$c;->a:Ljava/lang/String;

    move-object v2, v5

    move v0, v6

    goto :goto_5

    .line 13
    :cond_8
    iget-object v2, v2, Le/q/b/d$c;->c:Le/q/b/d$c;

    if-eqz v2, :cond_9

    iget v5, v2, Le/q/b/d$c;->b:I

    if-le v5, v0, :cond_9

    .line 14
    iget-object v4, v2, Le/q/b/d$c;->a:Ljava/lang/String;

    move v0, v5

    goto :goto_5

    :cond_9
    move-object v2, v1

    goto :goto_5

    :cond_a
    if-eqz v4, :cond_b

    .line 15
    move-object v0, p1

    check-cast v0, Le/q/f/a/f/n;

    .line 16
    iget-object v0, v0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_b
    const/16 v0, 0x65

    move-object v2, v1

    :goto_6
    if-eqz v3, :cond_f

    .line 17
    iget v4, v3, Le/q/b/d$c;->b:I

    if-ge v4, v0, :cond_c

    .line 18
    iget-object v2, v3, Le/q/b/d$c;->a:Ljava/lang/String;

    move v0, v4

    .line 19
    :cond_c
    iget-object v4, v3, Le/q/b/d$c;->c:Le/q/b/d$c;

    if-eqz v4, :cond_d

    iget v5, v4, Le/q/b/d$c;->b:I

    if-ge v5, v0, :cond_d

    .line 20
    iget-object v2, v4, Le/q/b/d$c;->a:Ljava/lang/String;

    move-object v3, v4

    move v0, v5

    goto :goto_6

    .line 21
    :cond_d
    iget-object v3, v3, Le/q/b/d$c;->d:Le/q/b/d$c;

    if-eqz v3, :cond_e

    iget v4, v3, Le/q/b/d$c;->b:I

    if-ge v4, v0, :cond_e

    .line 22
    iget-object v2, v3, Le/q/b/d$c;->a:Ljava/lang/String;

    move v0, v4

    goto :goto_6

    :cond_e
    move-object v3, v1

    goto :goto_6

    :cond_f
    if-eqz v2, :cond_12

    const/16 v1, 0x3c

    if-gt v0, v1, :cond_12

    .line 23
    check-cast p1, Le/q/f/a/f/n;

    .line 24
    iget-object v0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v1, "ref_id"

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    .line 25
    iget-object v0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_10
    if-eqz p2, :cond_12

    .line 26
    iget-object p2, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result p2

    const-string v0, ""

    if-eqz p2, :cond_11

    .line 27
    iget-object p2, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 28
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    .line 29
    :cond_11
    iget-object p2, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string v1, "vendor"

    invoke-virtual {p2, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/String;

    .line 30
    invoke-virtual {p2, v2, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p0, p2}, Le/q/f/a/f/n;->e(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    :cond_12
    :goto_7
    return-void
.end method

.method public static f(Ljava/lang/String;Z)Z
    .locals 4

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "CASH-WDL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "ATMID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "NEFT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "NACH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "IMPS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "CASH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "VAT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "NFS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "MOB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "MMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "MAT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_b

    goto :goto_0

    :cond_b
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_c
    const-string v0, "INB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_d
    const-string v0, "ECS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_e
    const-string v0, "BRN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_f
    const-string v0, "BIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_10
    const-string v0, "ATM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_11
    const-string v0, "MB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_11

    goto :goto_0

    :cond_11
    move v3, v2

    goto :goto_0

    :sswitch_12
    const-string v0, "REFUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_12

    goto :goto_0

    :cond_12
    move v3, v1

    :goto_0
    packed-switch v3, :pswitch_data_0

    return v1

    :pswitch_0
    xor-int/lit8 p0, p1, 0x1

    return p0

    :pswitch_1
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x70252c88 -> :sswitch_12
        0x995 -> :sswitch_11
        0xfe7a -> :sswitch_10
        0x100e5 -> :sswitch_f
        0x101fe -> :sswitch_e
        0x10b75 -> :sswitch_d
        0x11bbd -> :sswitch_c
        0x11bc1 -> :sswitch_b
        0x12940 -> :sswitch_a
        0x12ab4 -> :sswitch_9
        0x12ae0 -> :sswitch_8
        0x12d9b -> :sswitch_7
        0x14b09 -> :sswitch_6
        0x1f7333 -> :sswitch_5
        0x225a27 -> :sswitch_4
        0x247158 -> :sswitch_3
        0x2480c5 -> :sswitch_2
        0x3bb5115 -> :sswitch_1
        0x30126585 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public static g(Ljava/lang/String;Le/q/c/b/a;)Z
    .locals 8

    .line 1
    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    invoke-virtual {p0}, Ljava/lang/String;->hashCode()I

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    const/4 v3, -0x1

    sparse-switch v0, :sswitch_data_0

    goto/16 :goto_0

    :sswitch_0
    const-string v0, "CASH-WDL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    goto/16 :goto_0

    :cond_0
    const/16 v3, 0x13

    goto/16 :goto_0

    :sswitch_1
    const-string v0, "ATMID"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    goto/16 :goto_0

    :cond_1
    const/16 v3, 0x12

    goto/16 :goto_0

    :sswitch_2
    const-string v0, "NEFT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    goto/16 :goto_0

    :cond_2
    const/16 v3, 0x11

    goto/16 :goto_0

    :sswitch_3
    const-string v0, "NACH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_3

    goto/16 :goto_0

    :cond_3
    const/16 v3, 0x10

    goto/16 :goto_0

    :sswitch_4
    const-string v0, "IMPS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    goto/16 :goto_0

    :cond_4
    const/16 v3, 0xf

    goto/16 :goto_0

    :sswitch_5
    const-string v0, "CASH"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5

    goto/16 :goto_0

    :cond_5
    const/16 v3, 0xe

    goto/16 :goto_0

    :sswitch_6
    const-string v0, "VAT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_6

    goto/16 :goto_0

    :cond_6
    const/16 v3, 0xd

    goto/16 :goto_0

    :sswitch_7
    const-string v0, "TRF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_7

    goto/16 :goto_0

    :cond_7
    const/16 v3, 0xc

    goto/16 :goto_0

    :sswitch_8
    const-string v0, "NFS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_8

    goto/16 :goto_0

    :cond_8
    const/16 v3, 0xb

    goto/16 :goto_0

    :sswitch_9
    const-string v0, "MOB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_9

    goto/16 :goto_0

    :cond_9
    const/16 v3, 0xa

    goto/16 :goto_0

    :sswitch_a
    const-string v0, "MMT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_a

    goto/16 :goto_0

    :cond_a
    const/16 v3, 0x9

    goto/16 :goto_0

    :sswitch_b
    const-string v0, "MAT"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_b

    goto/16 :goto_0

    :cond_b
    const/16 v3, 0x8

    goto/16 :goto_0

    :sswitch_c
    const-string v0, "INF"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_c

    goto :goto_0

    :cond_c
    const/4 v3, 0x7

    goto :goto_0

    :sswitch_d
    const-string v0, "INB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_d

    goto :goto_0

    :cond_d
    const/4 v3, 0x6

    goto :goto_0

    :sswitch_e
    const-string v0, "ECS"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_e

    goto :goto_0

    :cond_e
    const/4 v3, 0x5

    goto :goto_0

    :sswitch_f
    const-string v0, "BRN"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_f

    goto :goto_0

    :cond_f
    const/4 v3, 0x4

    goto :goto_0

    :sswitch_10
    const-string v0, "BIL"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_10

    goto :goto_0

    :cond_10
    const/4 v3, 0x3

    goto :goto_0

    :sswitch_11
    const-string v0, "ATM"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_11

    goto :goto_0

    :cond_11
    const/4 v3, 0x2

    goto :goto_0

    :sswitch_12
    const-string v0, "MB"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    goto :goto_0

    :cond_12
    move v3, v2

    goto :goto_0

    :sswitch_13
    const-string v0, "REFUND"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_13

    goto :goto_0

    :cond_13
    move v3, v1

    :goto_0
    const-string v0, "trx_category"

    const-string v4, "transfer"

    const-string v5, "trx_type"

    const-string v6, "debit"

    const-string v7, "trx_subcategory"

    packed-switch v3, :pswitch_data_0

    .line 2
    invoke-virtual {p0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p0

    const-string p1, "tags"

    .line 3
    :try_start_0
    sget-object v0, Le/q/b/d$b;->a:Le/q/b/d;

    if-eqz v0, :cond_15

    .line 4
    invoke-virtual {v0, p0}, Le/q/b/d;->a(Ljava/lang/String;)Ljava/util/Map;

    move-result-object p0
    :try_end_0
    .catch Le/q/b/e/a; {:try_start_0 .. :try_end_0} :catch_0

    .line 5
    check-cast p0, Ljava/util/HashMap;

    :try_start_1
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->size()I

    move-result v0

    if-lez v0, :cond_16

    .line 6
    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0, v4}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    const-string v3, "withdrawal"

    invoke-interface {v0, v3}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_14

    invoke-virtual {p0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/Set;

    const-string p1, "payments"

    invoke-interface {p0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_16

    :cond_14
    move v1, v2

    goto :goto_1

    .line 7
    :cond_15
    new-instance p0, Ljava/lang/RuntimeException;

    const-string p1, "Vendor classifier not inited"

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Le/q/b/e/a; {:try_start_1 .. :try_end_1} :catch_0

    :catch_0
    :cond_16
    :goto_1
    return v1

    .line 8
    :pswitch_0
    check-cast p1, Le/q/f/a/f/n;

    .line 9
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    iget-object p0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string p1, "nach"

    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_2

    .line 11
    :pswitch_1
    move-object p0, p1

    check-cast p0, Le/q/f/a/f/n;

    .line 12
    iget-object p0, p0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 13
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_17

    .line 14
    move-object p0, p1

    check-cast p0, Le/q/f/a/f/n;

    .line 15
    iget-object p0, p0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 16
    :cond_17
    check-cast p1, Le/q/f/a/f/n;

    .line 17
    iget-object p0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string p1, "imps"

    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_2

    .line 18
    :pswitch_2
    move-object p0, p1

    check-cast p0, Le/q/f/a/f/n;

    .line 19
    iget-object p0, p0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 20
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_18

    .line 21
    move-object p0, p1

    check-cast p0, Le/q/f/a/f/n;

    .line 22
    iget-object p0, p0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 23
    :cond_18
    check-cast p1, Le/q/f/a/f/n;

    .line 24
    iget-object p0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string p1, "neft"

    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_2

    .line 25
    :pswitch_3
    check-cast p1, Le/q/f/a/f/n;

    .line 26
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    iget-object p0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string p1, "ecs"

    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto/16 :goto_2

    .line 28
    :pswitch_4
    move-object p0, p1

    check-cast p0, Le/q/f/a/f/n;

    .line 29
    iget-object p0, p0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 30
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_19

    .line 31
    move-object p0, p1

    check-cast p0, Le/q/f/a/f/n;

    .line 32
    iget-object p0, p0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 33
    :cond_19
    check-cast p1, Le/q/f/a/f/n;

    .line 34
    iget-object p0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string p1, "bank"

    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    .line 35
    :pswitch_5
    move-object p0, p1

    check-cast p0, Le/q/f/a/f/n;

    .line 36
    iget-object p0, p0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 37
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1a

    .line 38
    move-object p0, p1

    check-cast p0, Le/q/f/a/f/n;

    .line 39
    iget-object p0, p0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 40
    :cond_1a
    check-cast p1, Le/q/f/a/f/n;

    .line 41
    iget-object p0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string p1, "bill"

    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    .line 42
    :pswitch_6
    move-object p0, p1

    check-cast p0, Le/q/f/a/f/n;

    .line 43
    iget-object p0, p0, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    invoke-virtual {p0, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    .line 44
    invoke-virtual {v6, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_1b

    .line 45
    check-cast p1, Le/q/f/a/f/n;

    .line 46
    iget-object p0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string p1, "withdraw"

    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    goto :goto_2

    .line 47
    :pswitch_7
    check-cast p1, Le/q/f/a/f/n;

    .line 48
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget-object p0, p1, Le/q/f/a/f/n;->b:Ljava/util/HashMap;

    const-string p1, "refund"

    invoke-virtual {p0, v7, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    :cond_1b
    :goto_2
    :pswitch_8
    return v2

    :sswitch_data_0
    .sparse-switch
        -0x70252c88 -> :sswitch_13
        0x995 -> :sswitch_12
        0xfe7a -> :sswitch_11
        0x100e5 -> :sswitch_10
        0x101fe -> :sswitch_f
        0x10b75 -> :sswitch_e
        0x11bbd -> :sswitch_d
        0x11bc1 -> :sswitch_c
        0x12940 -> :sswitch_b
        0x12ab4 -> :sswitch_a
        0x12ae0 -> :sswitch_9
        0x12d9b -> :sswitch_8
        0x14588 -> :sswitch_7
        0x14b09 -> :sswitch_6
        0x1f7333 -> :sswitch_5
        0x225a27 -> :sswitch_4
        0x247158 -> :sswitch_3
        0x2480c5 -> :sswitch_2
        0x3bb5115 -> :sswitch_1
        0x30126585 -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_7
        :pswitch_8
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_5
        :pswitch_2
        :pswitch_6
        :pswitch_1
        :pswitch_4
        :pswitch_6
        :pswitch_4
        :pswitch_6
        :pswitch_6
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_6
        :pswitch_6
    .end packed-switch
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/util/Map;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/q/b/e/a;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/q/b/d;->b:Le/q/b/b;

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 5
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 6
    iget-object v4, v0, Le/q/b/b;->a:Le/q/b/c;

    .line 7
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    move v7, v6

    move v8, v7

    .line 8
    :goto_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    if-ge v7, v9, :cond_8

    .line 9
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v9

    .line 10
    invoke-virtual {v0, v4}, Le/q/b/b;->a(Le/q/b/c;)Ljava/util/List;

    move-result-object v10

    .line 11
    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-nez v11, :cond_2

    .line 12
    iget-boolean v11, v4, Le/q/b/c;->c:Z

    if-eqz v11, :cond_2

    .line 13
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 14
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 15
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    .line 16
    iget-object v3, v0, Le/q/b/b;->a:Le/q/b/c;

    .line 17
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 18
    invoke-virtual {v0, v3}, Le/q/b/b;->a(Le/q/b/c;)Ljava/util/List;

    move-result-object v10

    .line 19
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 20
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v4, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 21
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v3, v9}, Le/q/b/b;->b(Le/q/b/c;Ljava/lang/Character;)Le/q/b/c;

    move-result-object v3

    goto :goto_1

    .line 22
    :cond_1
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move v8, v6

    :goto_1
    move-object v12, v4

    move-object v4, v3

    move-object v3, v12

    goto :goto_3

    .line 23
    :cond_2
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 24
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v8

    invoke-virtual {v0, v4, v8}, Le/q/b/b;->b(Le/q/b/c;Ljava/lang/Character;)Le/q/b/c;

    move-result-object v4

    .line 25
    invoke-virtual {v3, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    const/4 v8, 0x1

    goto :goto_3

    :cond_3
    if-eqz v8, :cond_7

    .line 26
    iget-boolean v4, v4, Le/q/b/c;->c:Z

    if-eqz v4, :cond_5

    .line 27
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result v3

    if-lez v3, :cond_4

    .line 28
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v5, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 29
    :cond_4
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    goto :goto_2

    .line 30
    :cond_5
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/CharSequence;)Ljava/lang/StringBuilder;

    .line 31
    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    .line 32
    iget-object v4, v0, Le/q/b/b;->a:Le/q/b/c;

    .line 33
    invoke-virtual {v0, v4}, Le/q/b/b;->a(Le/q/b/c;)Ljava/util/List;

    move-result-object v10

    .line 34
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v11

    check-cast v10, Ljava/util/ArrayList;

    invoke-virtual {v10, v11}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 35
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-static {v9}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v10

    invoke-direct {v3, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 36
    invoke-static {v9}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    move-result-object v9

    invoke-virtual {v0, v4, v9}, Le/q/b/b;->b(Le/q/b/c;Ljava/lang/Character;)Le/q/b/c;

    move-result-object v4

    goto :goto_3

    .line 37
    :cond_6
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 38
    :cond_7
    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    :goto_3
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 39
    :cond_8
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->length()I

    move-result p1

    if-lez p1, :cond_a

    .line 40
    iget-boolean p1, v4, Le/q/b/c;->c:Z

    if-eqz p1, :cond_9

    .line 41
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 42
    :cond_9
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 43
    :cond_a
    :goto_4
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_5
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_b

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    const-string v2, " "

    .line 44
    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    goto :goto_5

    .line 45
    :cond_b
    iget-object p1, p0, Le/q/b/d;->a:Le/q/b/a;

    .line 46
    iget-object p1, p1, Le/q/b/a;->a:Ljava/util/Map;

    .line 47
    invoke-virtual {p0, v1, p1}, Le/q/b/d;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Set;

    move-result-object p1

    .line 48
    iget-object v0, p0, Le/q/b/d;->a:Le/q/b/a;

    .line 49
    iget-object v0, v0, Le/q/b/a;->b:Ljava/util/Map;

    .line 50
    invoke-virtual {p0, v1, v0}, Le/q/b/d;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v0

    .line 51
    iget-object v2, p0, Le/q/b/d;->a:Le/q/b/a;

    .line 52
    iget-object v2, v2, Le/q/b/a;->c:Ljava/util/Map;

    .line 53
    invoke-virtual {p0, v1, v2}, Le/q/b/d;->b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Set;

    move-result-object v1

    .line 54
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 55
    move-object v3, v1

    check-cast v3, Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 56
    iget-object v4, p0, Le/q/b/d;->a:Le/q/b/a;

    .line 57
    iget-object v4, v4, Le/q/b/a;->d:Ljava/util/Map;

    .line 58
    :goto_6
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_c

    .line 59
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 60
    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    .line 61
    invoke-interface {v2, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_6

    .line 62
    :cond_c
    invoke-interface {p1, v2}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    .line 63
    new-instance v2, Le/q/b/d$a;

    invoke-direct {v2, p0, p1, v0, v1}, Le/q/b/d$a;-><init>(Le/q/b/d;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)V

    return-object v2
.end method

.method public final b(Ljava/util/List;Ljava/util/Map;)Ljava/util/Set;
    .locals 23
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;>;)",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    move-object/from16 v0, p2

    .line 1
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1a

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    .line 3
    invoke-interface/range {p2 .. p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v4

    .line 4
    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    .line 5
    invoke-interface {v4}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    const-string v8, ""

    const-wide/16 v9, 0x0

    :goto_1
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    const/4 v13, 0x2

    const/4 v14, 0x0

    if-eqz v11, :cond_11

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    if-eqz v11, :cond_10

    if-eqz v3, :cond_10

    .line 6
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v7

    if-le v6, v7, :cond_0

    move-object v7, v3

    move-object v6, v11

    goto :goto_2

    :cond_0
    move-object v6, v3

    move-object v7, v11

    .line 7
    :goto_2
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v16

    div-int/lit8 v16, v16, 0x2

    const/4 v13, -0x1

    add-int/lit8 v12, v16, -0x1

    invoke-static {v12, v14}, Ljava/lang/Math;->max(II)I

    move-result v12

    .line 8
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v15

    new-array v15, v15, [I

    .line 9
    invoke-static {v15, v13}, Ljava/util/Arrays;->fill([II)V

    .line 10
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v13

    new-array v13, v13, [Z

    move-object/from16 v18, v2

    move-object/from16 v19, v4

    move v2, v14

    .line 11
    :goto_3
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v4

    if-ge v14, v4, :cond_4

    .line 12
    invoke-virtual {v7, v14}, Ljava/lang/String;->charAt(I)C

    move-result v4

    move-object/from16 v20, v1

    sub-int v1, v14, v12

    move-object/from16 v21, v8

    const/4 v8, 0x0

    .line 13
    invoke-static {v1, v8}, Ljava/lang/Math;->max(II)I

    move-result v1

    add-int v8, v14, v12

    const/16 v16, 0x1

    add-int/lit8 v8, v8, 0x1

    move/from16 v22, v1

    .line 14
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v1

    invoke-static {v8, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    move/from16 v8, v22

    :goto_4
    if-ge v8, v1, :cond_3

    .line 15
    aget-boolean v22, v13, v8

    if-nez v22, :cond_1

    move/from16 v22, v1

    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v1

    if-ne v4, v1, :cond_2

    .line 16
    aput v8, v15, v14

    .line 17
    aput-boolean v16, v13, v8

    add-int/lit8 v2, v2, 0x1

    goto :goto_5

    :cond_1
    move/from16 v22, v1

    :cond_2
    add-int/lit8 v8, v8, 0x1

    move/from16 v1, v22

    const/16 v16, 0x1

    goto :goto_4

    :cond_3
    :goto_5
    add-int/lit8 v14, v14, 0x1

    move-object/from16 v1, v20

    move-object/from16 v8, v21

    goto :goto_3

    :cond_4
    move-object/from16 v20, v1

    move-object/from16 v21, v8

    .line 18
    new-array v1, v2, [C

    .line 19
    new-array v4, v2, [C

    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 20
    :goto_6
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_6

    .line 21
    aget v14, v15, v8

    move-object/from16 v22, v15

    const/4 v15, -0x1

    if-eq v14, v15, :cond_5

    .line 22
    invoke-virtual {v7, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aput-char v14, v1, v12

    add-int/lit8 v12, v12, 0x1

    :cond_5
    add-int/lit8 v8, v8, 0x1

    move-object/from16 v15, v22

    goto :goto_6

    :cond_6
    const/4 v8, 0x0

    const/4 v12, 0x0

    .line 23
    :goto_7
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v14

    if-ge v8, v14, :cond_8

    .line 24
    aget-boolean v14, v13, v8

    if-eqz v14, :cond_7

    .line 25
    invoke-virtual {v6, v8}, Ljava/lang/String;->charAt(I)C

    move-result v14

    aput-char v14, v4, v12

    add-int/lit8 v12, v12, 0x1

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_7

    :cond_8
    const/4 v6, 0x0

    const/4 v8, 0x0

    :goto_8
    if-ge v6, v2, :cond_a

    .line 26
    aget-char v12, v1, v6

    aget-char v13, v4, v6

    if-eq v12, v13, :cond_9

    add-int/lit8 v8, v8, 0x1

    :cond_9
    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    :cond_a
    const/4 v1, 0x0

    const/4 v4, 0x0

    .line 27
    :goto_9
    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v6

    const/4 v12, 0x4

    invoke-static {v12, v6}, Ljava/lang/Math;->min(II)I

    move-result v6

    if-ge v1, v6, :cond_b

    invoke-virtual {v11, v1}, Ljava/lang/String;->charAt(I)C

    move-result v6

    invoke-virtual {v3, v1}, Ljava/lang/String;->charAt(I)C

    move-result v12

    if-ne v6, v12, :cond_b

    add-int/lit8 v4, v4, 0x1

    add-int/lit8 v1, v1, 0x1

    goto :goto_9

    :cond_b
    const/4 v1, 0x3

    new-array v6, v1, [I

    const/4 v7, 0x0

    aput v2, v6, v7

    const/4 v2, 0x1

    aput v8, v6, v2

    const/4 v2, 0x2

    aput v4, v6, v2

    .line 28
    aget v2, v6, v7

    int-to-double v7, v2

    const-wide/16 v12, 0x0

    cmpl-double v2, v7, v12

    if-nez v2, :cond_c

    .line 29
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    goto :goto_b

    .line 30
    :cond_c
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v12, v2

    div-double v12, v7, v12

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v2

    int-to-double v14, v2

    div-double v14, v7, v14

    add-double/2addr v14, v12

    const/4 v2, 0x1

    aget v2, v6, v2

    int-to-double v12, v2

    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    div-double v12, v12, v16

    sub-double v12, v7, v12

    div-double/2addr v12, v7

    add-double/2addr v12, v14

    const-wide/high16 v7, 0x4008000000000000L    # 3.0

    div-double/2addr v12, v7

    const-wide v7, 0x3fe6666666666666L    # 0.7

    cmpg-double v2, v12, v7

    if-gez v2, :cond_d

    goto :goto_a

    :cond_d
    const-wide v7, 0x3fb999999999999aL    # 0.1

    const/4 v2, 0x2

    .line 31
    aget v2, v6, v2

    int-to-double v14, v2

    mul-double/2addr v14, v7

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    sub-double/2addr v6, v12

    mul-double/2addr v6, v14

    add-double/2addr v12, v6

    :goto_a
    invoke-static {v12, v13}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    .line 32
    :goto_b
    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    cmpg-double v2, v9, v6

    if-gtz v2, :cond_e

    move-wide v9, v6

    move-object v8, v11

    goto :goto_c

    :cond_e
    move-object/from16 v8, v21

    .line 33
    :goto_c
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_f

    invoke-virtual {v3, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_f

    .line 34
    invoke-interface {v0, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_f
    move-object/from16 v2, v18

    move-object/from16 v4, v19

    move-object/from16 v1, v20

    goto/16 :goto_1

    .line 35
    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "CharSequences must not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_11
    move-object/from16 v20, v1

    move-object/from16 v18, v2

    move-object/from16 v21, v8

    .line 36
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-gt v1, v2, :cond_18

    .line 37
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->toCharArray()[C

    move-result-object v1

    .line 38
    invoke-virtual {v3}, Ljava/lang/String;->toCharArray()[C

    move-result-object v2

    .line 39
    array-length v3, v1

    .line 40
    array-length v4, v2

    add-int/lit8 v6, v3, 0x1

    add-int/lit8 v7, v4, 0x1

    const/4 v8, 0x2

    new-array v8, v8, [I

    const/4 v9, 0x1

    aput v7, v8, v9

    const/4 v7, 0x0

    aput v6, v8, v7

    .line 41
    const-class v6, I

    invoke-static {v6, v8}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [[I

    const/4 v7, 0x0

    const/4 v8, 0x0

    :goto_d
    if-gt v8, v3, :cond_16

    const/4 v9, 0x0

    :goto_e
    if-gt v9, v4, :cond_15

    if-eqz v8, :cond_14

    if-nez v9, :cond_12

    goto :goto_f

    :cond_12
    add-int/lit8 v10, v8, -0x1

    .line 42
    aget-char v11, v1, v10

    add-int/lit8 v12, v9, -0x1

    aget-char v13, v2, v12

    if-ne v11, v13, :cond_13

    .line 43
    aget-object v11, v6, v8

    aget-object v10, v6, v10

    aget v10, v10, v12

    const/4 v12, 0x1

    add-int/2addr v10, v12

    aput v10, v11, v9

    .line 44
    aget-object v10, v6, v8

    aget v10, v10, v9

    invoke-static {v7, v10}, Ljava/lang/Math;->max(II)I

    move-result v7

    const/4 v11, 0x0

    goto :goto_10

    .line 45
    :cond_13
    aget-object v10, v6, v8

    const/4 v11, 0x0

    aput v11, v10, v9

    goto :goto_10

    :cond_14
    :goto_f
    const/4 v11, 0x0

    .line 46
    aget-object v10, v6, v8

    aput v11, v10, v9

    :goto_10
    add-int/lit8 v9, v9, 0x1

    goto :goto_e

    :cond_15
    const/4 v11, 0x0

    add-int/lit8 v8, v8, 0x1

    goto :goto_d

    .line 47
    :cond_16
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x4

    if-le v1, v2, :cond_17

    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    goto :goto_11

    .line 48
    :cond_17
    invoke-virtual/range {v21 .. v21}, Ljava/lang/String;->length()I

    move-result v1

    :goto_11
    int-to-double v1, v1

    int-to-double v3, v7

    cmpl-double v1, v3, v1

    if-ltz v1, :cond_19

    const-wide/16 v1, 0x0

    cmpg-double v1, v1, v3

    if-gez v1, :cond_19

    move-object/from16 v8, v21

    .line 49
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_12

    :cond_18
    move-object/from16 v8, v21

    const-wide v1, 0x3feccccccccccccdL    # 0.9

    cmpl-double v1, v9, v1

    if-lez v1, :cond_19

    .line 50
    invoke-interface {v0, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Collection;

    invoke-interface {v5, v1}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    :cond_19
    :goto_12
    move-object/from16 v1, v20

    .line 51
    invoke-interface {v1, v5}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v2, v18

    goto/16 :goto_0

    :cond_1a
    return-object v1
.end method
