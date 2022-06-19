.class public final Le/m/i/l/d;
.super Le/m/i/l/n;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/i/l/d$a;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/i/l/n;-><init>()V

    return-void
.end method

.method public static e(Ljava/lang/CharSequence;I)Le/m/i/l/d$a;
    .locals 6

    .line 1
    sget-object v0, Le/m/i/l/d$a;->b:Le/m/i/l/d$a;

    sget-object v1, Le/m/i/l/d$a;->a:Le/m/i/l/d$a;

    invoke-interface {p0}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lt p1, v2, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v3

    const/16 v4, 0xf1

    if-ne v3, v4, :cond_1

    .line 3
    sget-object p0, Le/m/i/l/d$a;->d:Le/m/i/l/d$a;

    return-object p0

    :cond_1
    const/16 v4, 0x30

    if-lt v3, v4, :cond_6

    const/16 v5, 0x39

    if-le v3, v5, :cond_2

    goto :goto_1

    :cond_2
    add-int/lit8 p1, p1, 0x1

    if-lt p1, v2, :cond_3

    return-object v0

    .line 4
    :cond_3
    invoke-interface {p0, p1}, Ljava/lang/CharSequence;->charAt(I)C

    move-result p0

    if-lt p0, v4, :cond_5

    if-le p0, v5, :cond_4

    goto :goto_0

    .line 5
    :cond_4
    sget-object p0, Le/m/i/l/d$a;->c:Le/m/i/l/d$a;

    return-object p0

    :cond_5
    :goto_0
    return-object v0

    :cond_6
    :goto_1
    return-object v1
.end method


# virtual methods
.method public a(Ljava/lang/String;Le/m/i/a;IILjava/util/Map;)Le/m/i/j/b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Le/m/i/a;",
            "II",
            "Ljava/util/Map<",
            "Le/m/i/c;",
            "*>;)",
            "Le/m/i/j/b;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Le/m/i/h;
        }
    .end annotation

    .line 1
    sget-object v0, Le/m/i/a;->e:Le/m/i/a;

    if-ne p2, v0, :cond_0

    .line 2
    invoke-super/range {p0 .. p5}, Le/m/i/l/n;->a(Ljava/lang/String;Le/m/i/a;IILjava/util/Map;)Le/m/i/j/b;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    const-string p3, "Can only encode CODE_128, but got "

    invoke-virtual {p3, p2}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public c(Ljava/lang/String;)[Z
    .locals 16

    move-object/from16 v0, p1

    .line 1
    sget-object v1, Le/m/i/l/c;->a:[[I

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_1b

    const/16 v3, 0x50

    if-gt v2, v3, :cond_1b

    const/4 v4, 0x0

    :goto_0
    if-ge v4, v2, :cond_1

    .line 2
    invoke-virtual {v0, v4}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_0

    const/16 v6, 0x7f

    if-gt v5, v6, :cond_0

    :pswitch_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v5}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Bad character in input: "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 4
    :cond_1
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x1

    :cond_2
    :goto_1
    if-ge v6, v2, :cond_17

    .line 5
    sget-object v11, Le/m/i/l/d$a;->d:Le/m/i/l/d$a;

    sget-object v12, Le/m/i/l/d$a;->b:Le/m/i/l/d$a;

    sget-object v13, Le/m/i/l/d$a;->c:Le/m/i/l/d$a;

    invoke-static {v0, v6}, Le/m/i/l/d;->e(Ljava/lang/CharSequence;I)Le/m/i/l/d$a;

    move-result-object v14

    const/16 v15, 0x20

    const/16 v3, 0x65

    const/16 v5, 0x60

    if-ne v14, v12, :cond_3

    goto :goto_5

    .line 6
    :cond_3
    sget-object v10, Le/m/i/l/d$a;->a:Le/m/i/l/d$a;

    if-ne v14, v10, :cond_5

    .line 7
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v10

    if-ge v6, v10, :cond_e

    .line 8
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v10

    if-lt v10, v15, :cond_4

    if-ne v8, v3, :cond_e

    if-ge v10, v5, :cond_e

    :cond_4
    move v10, v3

    goto :goto_6

    :cond_5
    const/16 v15, 0x63

    if-ne v8, v15, :cond_7

    :cond_6
    :goto_2
    move v10, v15

    goto :goto_6

    :cond_7
    const/16 v5, 0x64

    if-ne v8, v5, :cond_c

    if-ne v14, v11, :cond_8

    goto :goto_5

    :cond_8
    add-int/lit8 v5, v6, 0x2

    .line 9
    invoke-static {v0, v5}, Le/m/i/l/d;->e(Ljava/lang/CharSequence;I)Le/m/i/l/d$a;

    move-result-object v5

    if-eq v5, v10, :cond_e

    if-ne v5, v12, :cond_9

    goto :goto_5

    :cond_9
    if-ne v5, v11, :cond_a

    add-int/lit8 v5, v6, 0x3

    .line 10
    invoke-static {v0, v5}, Le/m/i/l/d;->e(Ljava/lang/CharSequence;I)Le/m/i/l/d$a;

    move-result-object v5

    if-ne v5, v13, :cond_e

    goto :goto_4

    :cond_a
    add-int/lit8 v5, v6, 0x4

    .line 11
    :goto_3
    invoke-static {v0, v5}, Le/m/i/l/d;->e(Ljava/lang/CharSequence;I)Le/m/i/l/d$a;

    move-result-object v10

    if-ne v10, v13, :cond_b

    add-int/lit8 v5, v5, 0x2

    goto :goto_3

    :cond_b
    if-ne v10, v12, :cond_6

    goto :goto_5

    :cond_c
    if-ne v14, v11, :cond_d

    add-int/lit8 v5, v6, 0x1

    .line 12
    invoke-static {v0, v5}, Le/m/i/l/d;->e(Ljava/lang/CharSequence;I)Le/m/i/l/d$a;

    move-result-object v14

    :cond_d
    if-ne v14, v13, :cond_e

    :goto_4
    goto :goto_2

    :cond_e
    :goto_5
    const/16 v10, 0x64

    :goto_6
    if-ne v10, v8, :cond_13

    .line 13
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v5

    packed-switch v5, :pswitch_data_1

    goto :goto_7

    :pswitch_1
    if-ne v8, v3, :cond_f

    goto :goto_8

    :cond_f
    const/4 v3, 0x1

    const/16 v5, 0x64

    goto :goto_9

    :pswitch_2
    const/4 v3, 0x1

    const/16 v5, 0x60

    goto :goto_9

    :pswitch_3
    const/16 v3, 0x61

    goto :goto_8

    :pswitch_4
    const/16 v3, 0x66

    goto :goto_8

    :goto_7
    const/16 v5, 0x64

    if-eq v8, v5, :cond_11

    if-eq v8, v3, :cond_10

    add-int/lit8 v3, v6, 0x2

    .line 14
    invoke-virtual {v0, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    add-int/lit8 v6, v6, 0x1

    goto :goto_8

    .line 15
    :cond_10
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    if-gez v3, :cond_12

    add-int/lit8 v3, v3, 0x60

    goto :goto_8

    .line 16
    :cond_11
    invoke-virtual {v0, v6}, Ljava/lang/String;->charAt(I)C

    move-result v3

    add-int/lit8 v3, v3, -0x20

    :cond_12
    :goto_8
    move v5, v3

    const/4 v3, 0x1

    :goto_9
    add-int/2addr v6, v3

    goto :goto_b

    :cond_13
    if-nez v8, :cond_16

    const/16 v5, 0x64

    if-eq v10, v5, :cond_15

    if-eq v10, v3, :cond_14

    const/16 v3, 0x69

    goto :goto_a

    :cond_14
    const/16 v3, 0x67

    goto :goto_a

    :cond_15
    const/16 v3, 0x68

    goto :goto_a

    :cond_16
    move v3, v10

    :goto_a
    move v5, v3

    move v8, v10

    .line 17
    :goto_b
    aget-object v3, v1, v5

    invoke-virtual {v4, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    mul-int/2addr v5, v9

    add-int/2addr v7, v5

    if-eqz v6, :cond_2

    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_1

    :cond_17
    const/16 v3, 0x67

    .line 18
    rem-int/2addr v7, v3

    .line 19
    aget-object v0, v1, v7

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/16 v0, 0x6a

    .line 20
    aget-object v0, v1, v0

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v1, 0x0

    :cond_18
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_19

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    .line 22
    array-length v3, v2

    const/4 v5, 0x0

    :goto_c
    if-ge v5, v3, :cond_18

    aget v6, v2, v5

    add-int/2addr v1, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_c

    .line 23
    :cond_19
    new-array v0, v1, [Z

    .line 24
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_d
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [I

    const/4 v4, 0x1

    .line 25
    invoke-static {v0, v3, v2, v4}, Le/m/i/l/n;->b([ZI[IZ)I

    move-result v2

    add-int/2addr v3, v2

    goto :goto_d

    :cond_1a
    return-object v0

    .line 26
    :cond_1b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "Contents length should be between 1 and 80 characters, but got "

    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :pswitch_data_0
    .packed-switch 0xf1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch

    :pswitch_data_1
    .packed-switch 0xf1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method
