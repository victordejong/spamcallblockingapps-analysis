.class public Le/a/a/g/e;
.super Landroid/database/CursorWrapper;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/database/Cursor;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Landroid/database/CursorWrapper;-><init>(Landroid/database/Cursor;)V

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/String;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/database/SQLException;
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    const/4 v1, 0x0

    if-nez p1, :cond_0

    move v2, v1

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    :goto_0
    const/4 v3, -0x1

    move v4, v1

    move v6, v4

    move v7, v6

    move v5, v3

    :goto_1
    if-ge v4, v2, :cond_8

    .line 3
    invoke-virtual {p1, v4}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-nez v5, :cond_1

    .line 4
    invoke-virtual {p1, v6, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v5, v5, -0x1

    move v6, v4

    :cond_1
    if-ne v5, v3, :cond_5

    const/16 v9, 0x7c

    if-ne v8, v9, :cond_3

    if-ne v6, v4, :cond_2

    const/4 v6, 0x0

    .line 5
    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v6, v4, 0x1

    goto :goto_3

    :cond_2
    add-int/lit8 v5, v4, 0x1

    move v6, v5

    move v5, v7

    move v7, v1

    goto :goto_3

    :cond_3
    add-int/lit8 v8, v8, -0x30

    if-ltz v8, :cond_4

    const/16 v9, 0x9

    if-gt v8, v9, :cond_4

    mul-int/lit8 v7, v7, 0xa

    add-int/2addr v7, v8

    goto :goto_3

    .line 6
    :cond_4
    new-instance v0, Landroid/database/sqlite/SQLiteException;

    const-string v1, "Invalid content length: "

    invoke-static {v1, p1}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Landroid/database/sqlite/SQLiteException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 7
    :cond_5
    invoke-static {v8}, Ljava/lang/Character;->isSurrogate(C)Z

    move-result v9

    if-eqz v9, :cond_7

    .line 8
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v9

    const/4 v10, 0x1

    sub-int/2addr v9, v10

    if-ge v4, v9, :cond_6

    goto :goto_2

    :cond_6
    move v10, v1

    :goto_2
    if-eqz v10, :cond_7

    add-int/lit8 v9, v4, 0x1

    .line 9
    invoke-virtual {p1, v9}, Ljava/lang/String;->charAt(I)C

    move-result v9

    invoke-static {v8, v9}, Ljava/lang/Character;->isSurrogatePair(CC)Z

    move-result v8

    if-eqz v8, :cond_7

    goto :goto_3

    :cond_7
    add-int/lit8 v5, v5, -0x1

    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_8
    if-nez v5, :cond_9

    .line 10
    invoke-virtual {p1, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_9
    return-object v0
.end method
