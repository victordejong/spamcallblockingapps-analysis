.class public final Le/m/a/c/m1/q/a;
.super Le/m/a/c/m1/c;
.source "SourceFile"


# static fields
.field public static final p:Ljava/util/regex/Pattern;

.field public static final q:Ljava/util/regex/Pattern;


# instance fields
.field public final n:Ljava/lang/StringBuilder;

.field public final o:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    const-string v0, "\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*-->\\s*((?:(\\d+):)?(\\d+):(\\d+)(?:,(\\d+))?)\\s*"

    .line 1
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/a/c/m1/q/a;->p:Ljava/util/regex/Pattern;

    const-string v0, "\\{\\\\.*?\\}"

    .line 2
    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Le/m/a/c/m1/q/a;->q:Ljava/util/regex/Pattern;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const-string v0, "SubripDecoder"

    .line 1
    invoke-direct {p0, v0}, Le/m/a/c/m1/c;-><init>(Ljava/lang/String;)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/q/a;->n:Ljava/lang/StringBuilder;

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Le/m/a/c/m1/q/a;->o:Ljava/util/ArrayList;

    return-void
.end method

.method public static k(I)F
    .locals 1

    if-eqz p0, :cond_2

    const/4 v0, 0x1

    if-eq p0, v0, :cond_1

    const/4 v0, 0x2

    if-ne p0, v0, :cond_0

    const p0, 0x3f6b851f    # 0.92f

    return p0

    .line 1
    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0

    :cond_1
    const/high16 p0, 0x3f000000    # 0.5f

    return p0

    :cond_2
    const p0, 0x3da3d70a    # 0.08f

    return p0
.end method

.method public static l(Ljava/util/regex/Matcher;I)J
    .locals 9

    add-int/lit8 v0, p1, 0x1

    .line 1
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    const-wide/16 v1, 0x3c

    const-wide/16 v3, 0x3e8

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v5

    mul-long/2addr v5, v1

    mul-long/2addr v5, v1

    mul-long/2addr v5, v3

    goto :goto_0

    :cond_0
    const-wide/16 v5, 0x0

    :goto_0
    add-int/lit8 v0, p1, 0x2

    .line 3
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v7

    mul-long/2addr v7, v1

    mul-long/2addr v7, v3

    add-long/2addr v7, v5

    add-int/lit8 v0, p1, 0x3

    .line 4
    invoke-virtual {p0, v0}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    mul-long/2addr v0, v3

    add-long/2addr v0, v7

    add-int/lit8 p1, p1, 0x4

    .line 5
    invoke-virtual {p0, p1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 6
    invoke-static {p0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide p0

    add-long/2addr v0, p0

    :cond_1
    mul-long/2addr v0, v3

    return-wide v0
.end method


# virtual methods
.method public j([BIZ)Le/m/a/c/m1/e;
    .locals 20

    move-object/from16 v0, p0

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    const/16 v2, 0x20

    new-array v2, v2, [J

    .line 2
    new-instance v3, Le/m/a/c/q1/t;

    move-object/from16 v4, p1

    move/from16 v5, p2

    invoke-direct {v3, v4, v5}, Le/m/a/c/q1/t;-><init>([BI)V

    const/4 v4, 0x0

    move v5, v4

    .line 3
    :goto_0
    invoke-virtual {v3}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_12

    .line 4
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    :try_start_0
    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 6
    invoke-virtual {v3}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_1

    goto/16 :goto_d

    .line 7
    :cond_1
    sget-object v7, Le/m/a/c/m1/q/a;->p:Ljava/util/regex/Pattern;

    invoke-virtual {v7, v6}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v6

    .line 8
    invoke-virtual {v6}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-eqz v7, :cond_11

    const/4 v7, 0x1

    .line 9
    invoke-static {v6, v7}, Le/m/a/c/m1/q/a;->l(Ljava/util/regex/Matcher;I)J

    move-result-wide v8

    .line 10
    array-length v10, v2

    if-ne v5, v10, :cond_2

    mul-int/lit8 v10, v5, 0x2

    .line 11
    invoke-static {v2, v10}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    :cond_2
    add-int/lit8 v10, v5, 0x1

    .line 12
    aput-wide v8, v2, v5

    const/4 v5, 0x6

    .line 13
    invoke-static {v6, v5}, Le/m/a/c/m1/q/a;->l(Ljava/util/regex/Matcher;I)J

    move-result-wide v8

    .line 14
    array-length v6, v2

    if-ne v10, v6, :cond_3

    mul-int/lit8 v6, v10, 0x2

    .line 15
    invoke-static {v2, v6}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v2

    :cond_3
    add-int/lit8 v6, v10, 0x1

    .line 16
    aput-wide v8, v2, v10

    .line 17
    iget-object v8, v0, Le/m/a/c/m1/q/a;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->setLength(I)V

    .line 18
    iget-object v8, v0, Le/m/a/c/m1/q/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v8}, Ljava/util/ArrayList;->clear()V

    .line 19
    invoke-virtual {v3}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v8

    .line 20
    :goto_1
    invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v9

    if-nez v9, :cond_6

    .line 21
    iget-object v9, v0, Le/m/a/c/m1/q/a;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->length()I

    move-result v9

    if-lez v9, :cond_4

    .line 22
    iget-object v9, v0, Le/m/a/c/m1/q/a;->n:Ljava/lang/StringBuilder;

    const-string v10, "<br>"

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    :cond_4
    iget-object v9, v0, Le/m/a/c/m1/q/a;->n:Ljava/lang/StringBuilder;

    iget-object v10, v0, Le/m/a/c/m1/q/a;->o:Ljava/util/ArrayList;

    .line 24
    invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v8

    .line 25
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 26
    sget-object v12, Le/m/a/c/m1/q/a;->q:Ljava/util/regex/Pattern;

    invoke-virtual {v12, v8}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v8

    move v12, v4

    .line 27
    :goto_2
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->find()Z

    move-result v13

    if-eqz v13, :cond_5

    .line 28
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->group()Ljava/lang/String;

    move-result-object v13

    .line 29
    invoke-virtual {v10, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 30
    invoke-virtual {v8}, Ljava/util/regex/Matcher;->start()I

    move-result v14

    sub-int/2addr v14, v12

    .line 31
    invoke-virtual {v13}, Ljava/lang/String;->length()I

    move-result v13

    add-int v15, v14, v13

    const-string v4, ""

    .line 32
    invoke-virtual {v11, v14, v15, v4}, Ljava/lang/StringBuilder;->replace(IILjava/lang/String;)Ljava/lang/StringBuilder;

    add-int/2addr v12, v13

    const/4 v4, 0x0

    goto :goto_2

    .line 33
    :cond_5
    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 34
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 35
    invoke-virtual {v3}, Le/m/a/c/q1/t;->f()Ljava/lang/String;

    move-result-object v8

    const/4 v4, 0x0

    goto :goto_1

    .line 36
    :cond_6
    iget-object v4, v0, Le/m/a/c/m1/q/a;->n:Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;

    move-result-object v9

    const/4 v4, 0x0

    const/4 v8, 0x0

    .line 37
    :goto_3
    iget-object v10, v0, Le/m/a/c/m1/q/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v8, v10, :cond_8

    .line 38
    iget-object v10, v0, Le/m/a/c/m1/q/a;->o:Ljava/util/ArrayList;

    invoke-virtual {v10, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/String;

    const-string v11, "\\{\\\\an[1-9]\\}"

    .line 39
    invoke-virtual {v10, v11}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_7

    move-object v4, v10

    goto :goto_4

    :cond_7
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    :cond_8
    :goto_4
    if-nez v4, :cond_9

    .line 40
    new-instance v4, Le/m/a/c/m1/b;

    invoke-direct {v4, v9}, Le/m/a/c/m1/b;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v17, v2

    goto/16 :goto_b

    .line 41
    :cond_9
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    const-string v10, "{\\an9}"

    const-string v11, "{\\an8}"

    const-string v12, "{\\an7}"

    const-string v13, "{\\an6}"

    const-string v14, "{\\an5}"

    const-string v15, "{\\an4}"

    const-string v5, "{\\an3}"

    const-string v7, "{\\an2}"

    const-string v0, "{\\an1}"

    move-object/from16 v17, v2

    const/16 v16, 0x8

    const/16 v18, 0x7

    const/16 v19, -0x1

    sparse-switch v8, :sswitch_data_0

    goto :goto_5

    :sswitch_0
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x5

    goto :goto_6

    :sswitch_1
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move/from16 v8, v16

    goto :goto_6

    :sswitch_2
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x2

    goto :goto_6

    :sswitch_3
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x4

    goto :goto_6

    :sswitch_4
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    move/from16 v8, v18

    goto :goto_6

    :sswitch_5
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x1

    goto :goto_6

    :sswitch_6
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x3

    goto :goto_6

    :sswitch_7
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x6

    goto :goto_6

    :sswitch_8
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_a

    const/4 v8, 0x0

    goto :goto_6

    :cond_a
    :goto_5
    move/from16 v8, v19

    :goto_6
    if-eqz v8, :cond_c

    const/4 v2, 0x1

    if-eq v8, v2, :cond_c

    const/4 v2, 0x2

    if-eq v8, v2, :cond_c

    const/4 v2, 0x3

    if-eq v8, v2, :cond_b

    const/4 v2, 0x4

    if-eq v8, v2, :cond_b

    const/4 v2, 0x5

    if-eq v8, v2, :cond_b

    const/4 v2, 0x1

    goto :goto_7

    :cond_b
    const/4 v2, 0x2

    goto :goto_7

    :cond_c
    const/4 v2, 0x0

    .line 42
    :goto_7
    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v8

    sparse-switch v8, :sswitch_data_1

    goto :goto_8

    :sswitch_9
    invoke-virtual {v4, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v5, 0x5

    goto :goto_9

    :sswitch_a
    invoke-virtual {v4, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v5, 0x4

    goto :goto_9

    :sswitch_b
    invoke-virtual {v4, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v5, 0x3

    goto :goto_9

    :sswitch_c
    invoke-virtual {v4, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v5, v16

    goto :goto_9

    :sswitch_d
    invoke-virtual {v4, v14}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    move/from16 v5, v18

    goto :goto_9

    :sswitch_e
    invoke-virtual {v4, v15}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v5, 0x6

    goto :goto_9

    :sswitch_f
    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v5, 0x2

    goto :goto_9

    :sswitch_10
    invoke-virtual {v4, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v5, 0x1

    goto :goto_9

    :sswitch_11
    invoke-virtual {v4, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v5, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    move/from16 v5, v19

    :goto_9
    if-eqz v5, :cond_f

    const/4 v0, 0x1

    if-eq v5, v0, :cond_f

    const/4 v4, 0x2

    if-eq v5, v4, :cond_10

    const/4 v7, 0x3

    if-eq v5, v7, :cond_e

    const/4 v4, 0x4

    if-eq v5, v4, :cond_e

    const/4 v4, 0x5

    if-eq v5, v4, :cond_e

    move v13, v0

    goto :goto_a

    :cond_e
    const/4 v13, 0x0

    goto :goto_a

    :cond_f
    const/4 v4, 0x2

    :cond_10
    move v13, v4

    .line 43
    :goto_a
    new-instance v4, Le/m/a/c/m1/b;

    const/4 v10, 0x0

    .line 44
    invoke-static {v13}, Le/m/a/c/m1/q/a;->k(I)F

    move-result v11

    const/4 v12, 0x0

    .line 45
    invoke-static {v2}, Le/m/a/c/m1/q/a;->k(I)F

    move-result v14

    const v16, -0x800001

    move-object v8, v4

    move v15, v2

    invoke-direct/range {v8 .. v16}, Le/m/a/c/m1/b;-><init>(Ljava/lang/CharSequence;Landroid/text/Layout$Alignment;FIIFIF)V

    .line 46
    :goto_b
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 47
    sget-object v0, Le/m/a/c/m1/b;->o:Le/m/a/c/m1/b;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-object/from16 v0, p0

    move v5, v6

    move-object/from16 v2, v17

    goto :goto_c

    :catch_0
    :cond_11
    move-object/from16 v0, p0

    :goto_c
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 48
    :cond_12
    :goto_d
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Le/m/a/c/m1/b;

    .line 49
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 50
    invoke-static {v2, v5}, Ljava/util/Arrays;->copyOf([JI)[J

    move-result-object v1

    .line 51
    new-instance v2, Le/m/a/c/m1/q/b;

    invoke-direct {v2, v0, v1}, Le/m/a/c/m1/q/b;-><init>([Le/m/a/c/m1/b;[J)V

    return-object v2

    nop

    :sswitch_data_0
    .sparse-switch
        -0x28ddbde6 -> :sswitch_8
        -0x28ddbdc7 -> :sswitch_7
        -0x28ddbda8 -> :sswitch_6
        -0x28ddbd89 -> :sswitch_5
        -0x28ddbd6a -> :sswitch_4
        -0x28ddbd4b -> :sswitch_3
        -0x28ddbd2c -> :sswitch_2
        -0x28ddbd0d -> :sswitch_1
        -0x28ddbcee -> :sswitch_0
    .end sparse-switch

    :sswitch_data_1
    .sparse-switch
        -0x28ddbde6 -> :sswitch_11
        -0x28ddbdc7 -> :sswitch_10
        -0x28ddbda8 -> :sswitch_f
        -0x28ddbd89 -> :sswitch_e
        -0x28ddbd6a -> :sswitch_d
        -0x28ddbd4b -> :sswitch_c
        -0x28ddbd2c -> :sswitch_b
        -0x28ddbd0d -> :sswitch_a
        -0x28ddbcee -> :sswitch_9
    .end sparse-switch
.end method
