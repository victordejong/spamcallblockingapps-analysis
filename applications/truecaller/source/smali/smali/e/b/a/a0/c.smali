.class public Le/b/a/a0/c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/b/a/a0/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/b/a/a0/m<",
        "Le/b/a/y/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Le/b/a/a0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Le/b/a/a0/c;

    invoke-direct {v0}, Le/b/a/a0/c;-><init>()V

    sput-object v0, Le/b/a/a0/c;->a:Le/b/a/a0/c;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/util/JsonReader;F)Ljava/lang/Object;
    .locals 22
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    sget-object v0, Le/b/a/y/b$a;->c:Le/b/a/y/b$a;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->beginObject()V

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v11, v0

    move-object v7, v1

    move-object v8, v7

    move-wide v9, v2

    move-wide v13, v9

    move-wide v15, v13

    move-wide/from16 v19, v15

    move v12, v4

    move/from16 v17, v12

    move/from16 v18, v17

    move/from16 v21, v5

    .line 3
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_d

    .line 4
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    const/4 v2, -0x1

    invoke-virtual {v1}, Ljava/lang/String;->hashCode()I

    move-result v3

    const/4 v6, 0x2

    sparse-switch v3, :sswitch_data_0

    goto/16 :goto_1

    :sswitch_0
    const-string v3, "tr"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    goto/16 :goto_1

    :cond_0
    const/16 v2, 0xa

    goto/16 :goto_1

    :sswitch_1
    const-string v3, "sw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_1

    :cond_1
    const/16 v2, 0x9

    goto/16 :goto_1

    :sswitch_2
    const-string v3, "sc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    goto/16 :goto_1

    :cond_2
    const/16 v2, 0x8

    goto/16 :goto_1

    :sswitch_3
    const-string v3, "of"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    goto :goto_1

    :cond_3
    const/4 v2, 0x7

    goto :goto_1

    :sswitch_4
    const-string v3, "ls"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_4

    goto :goto_1

    :cond_4
    const/4 v2, 0x6

    goto :goto_1

    :sswitch_5
    const-string v3, "lh"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_1

    :cond_5
    const/4 v2, 0x5

    goto :goto_1

    :sswitch_6
    const-string v3, "fc"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v2, 0x4

    goto :goto_1

    :sswitch_7
    const-string v3, "t"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_7

    goto :goto_1

    :cond_7
    const/4 v2, 0x3

    goto :goto_1

    :sswitch_8
    const-string v3, "s"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_8

    goto :goto_1

    :cond_8
    move v2, v6

    goto :goto_1

    :sswitch_9
    const-string v3, "j"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_9

    goto :goto_1

    :cond_9
    move v2, v5

    goto :goto_1

    :sswitch_a
    const-string v3, "f"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a

    goto :goto_1

    :cond_a
    move v2, v4

    :goto_1
    packed-switch v2, :pswitch_data_0

    .line 5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->skipValue()V

    goto/16 :goto_0

    .line 6
    :pswitch_0
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v12

    goto/16 :goto_0

    .line 7
    :pswitch_1
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v19

    goto/16 :goto_0

    .line 8
    :pswitch_2
    invoke-static/range {p1 .. p1}, Ln3/g0/y;->Y0(Landroid/util/JsonReader;)I

    move-result v18

    goto/16 :goto_0

    .line 9
    :pswitch_3
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextBoolean()Z

    move-result v21

    goto/16 :goto_0

    .line 10
    :pswitch_4
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v15

    goto/16 :goto_0

    .line 11
    :pswitch_5
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v13

    goto/16 :goto_0

    .line 12
    :pswitch_6
    invoke-static/range {p1 .. p1}, Ln3/g0/y;->Y0(Landroid/util/JsonReader;)I

    move-result v17

    goto/16 :goto_0

    .line 13
    :pswitch_7
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v7

    goto/16 :goto_0

    .line 14
    :pswitch_8
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextDouble()D

    move-result-wide v9

    goto/16 :goto_0

    .line 15
    :pswitch_9
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextInt()I

    move-result v1

    if-gt v1, v6, :cond_c

    if-gez v1, :cond_b

    goto :goto_2

    .line 16
    :cond_b
    invoke-static {}, Le/b/a/y/b$a;->values()[Le/b/a/y/b$a;

    move-result-object v2

    aget-object v11, v2, v1

    goto/16 :goto_0

    :cond_c
    :goto_2
    move-object v11, v0

    goto/16 :goto_0

    .line 17
    :pswitch_a
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->nextString()Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_0

    .line 18
    :cond_d
    invoke-virtual/range {p1 .. p1}, Landroid/util/JsonReader;->endObject()V

    .line 19
    new-instance v0, Le/b/a/y/b;

    move-object v6, v0

    invoke-direct/range {v6 .. v21}, Le/b/a/y/b;-><init>(Ljava/lang/String;Ljava/lang/String;DLe/b/a/y/b$a;IDDIIDZ)V

    return-object v0

    :sswitch_data_0
    .sparse-switch
        0x66 -> :sswitch_a
        0x6a -> :sswitch_9
        0x73 -> :sswitch_8
        0x74 -> :sswitch_7
        0xcbd -> :sswitch_6
        0xd7c -> :sswitch_5
        0xd87 -> :sswitch_4
        0xdd7 -> :sswitch_3
        0xe50 -> :sswitch_2
        0xe64 -> :sswitch_1
        0xe7e -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
