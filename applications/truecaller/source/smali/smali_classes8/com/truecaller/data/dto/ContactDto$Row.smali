.class public abstract Lcom/truecaller/data/dto/ContactDto$Row;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/data/dto/ContactDto;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Row"
.end annotation


# instance fields
.field public transient isPrimary:Z

.field public transient phonebookId:J

.field public transient rowId:J

.field public transient source:I

.field public transient tcId:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Row;->rowId:J

    .line 4
    invoke-virtual {p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/truecaller/data/dto/ContactDto$Row;->tcId:Ljava/lang/String;

    .line 5
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    iput-boolean v1, p0, Lcom/truecaller/data/dto/ContactDto$Row;->isPrimary:Z

    .line 6
    invoke-virtual {p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Row;->phonebookId:J

    .line 7
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result p1

    iput p1, p0, Lcom/truecaller/data/dto/ContactDto$Row;->source:I

    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public readList(Landroid/os/Parcel;Landroid/os/Parcelable$Creator;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Landroid/os/Parcelable;",
            ">(",
            "Landroid/os/Parcel;",
            "Landroid/os/Parcelable$Creator<",
            "TT;>;)",
            "Ljava/util/List<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1, v0, p2}, Landroid/os/Parcel;->readTypedList(Ljava/util/List;Landroid/os/Parcelable$Creator;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public readNumber(Landroid/os/Parcel;)Ljava/lang/Number;
    .locals 17

    .line 1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    goto/16 :goto_d

    .line 2
    :cond_0
    invoke-static {v0}, Lw3/c/a/a/a/h;->i(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_22

    const/4 v2, 0x6

    const-string v3, "0x"

    const-string v4, "0X"

    const-string v5, "-0x"

    const-string v6, "-0X"

    const-string v7, "#"

    const-string v8, "-#"

    .line 3
    filled-new-array/range {v3 .. v8}, [Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v2, :cond_2

    .line 4
    aget-object v6, v3, v5

    .line 5
    invoke-virtual {v0, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 6
    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v4

    goto :goto_1

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_2
    move v2, v4

    :goto_1
    const/16 v3, 0x10

    if-lez v2, :cond_8

    move v1, v2

    .line 7
    :goto_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 8
    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v4

    const/16 v5, 0x30

    if-ne v4, v5, :cond_3

    add-int/lit8 v1, v1, 0x1

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 9
    :cond_3
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v1

    if-gt v2, v3, :cond_7

    const/16 v1, 0x37

    if-ne v2, v3, :cond_4

    if-le v4, v1, :cond_4

    goto :goto_4

    :cond_4
    const/16 v3, 0x8

    if-gt v2, v3, :cond_6

    if-ne v2, v3, :cond_5

    if-le v4, v1, :cond_5

    goto :goto_3

    .line 10
    :cond_5
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0

    goto :goto_5

    .line 11
    :cond_6
    :goto_3
    invoke-static {v0}, Lw3/c/a/a/a/k/a;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0

    goto :goto_5

    .line 12
    :cond_7
    :goto_4
    invoke-static {v0}, Lw3/c/a/a/a/k/a;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    :goto_5
    move-object v1, v0

    goto/16 :goto_d

    .line 13
    :cond_8
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v5, 0x1

    sub-int/2addr v2, v5

    invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v6, 0x2e

    .line 14
    invoke-virtual {v0, v6}, Ljava/lang/String;->indexOf(I)I

    move-result v7

    const/16 v8, 0x65

    .line 15
    invoke-virtual {v0, v8}, Ljava/lang/String;->indexOf(I)I

    move-result v8

    const/16 v9, 0x45

    invoke-virtual {v0, v9}, Ljava/lang/String;->indexOf(I)I

    move-result v9

    add-int/2addr v9, v8

    add-int/2addr v9, v5

    const-string v8, " is not a valid number."

    const/4 v10, -0x1

    if-le v7, v10, :cond_b

    if-le v9, v10, :cond_a

    if-lt v9, v7, :cond_9

    .line 16
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v11

    if-gt v9, v11, :cond_9

    add-int/lit8 v11, v7, 0x1

    .line 17
    invoke-virtual {v0, v11, v9}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v11

    goto :goto_6

    .line 18
    :cond_9
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {v0, v8}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_a
    add-int/lit8 v11, v7, 0x1

    .line 19
    invoke-virtual {v0, v11}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    .line 20
    :goto_6
    invoke-static {v0, v7}, Lw3/c/a/a/a/k/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    .line 21
    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v12

    goto :goto_8

    :cond_b
    if-le v9, v10, :cond_d

    .line 22
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    if-gt v9, v7, :cond_c

    .line 23
    invoke-static {v0, v9}, Lw3/c/a/a/a/k/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    goto :goto_7

    .line 24
    :cond_c
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {v0, v8}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 25
    :cond_d
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v7

    invoke-static {v0, v7}, Lw3/c/a/a/a/k/a;->d(Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v7

    :goto_7
    move-object v11, v1

    move v12, v4

    .line 26
    :goto_8
    invoke-static {v2}, Ljava/lang/Character;->isDigit(C)Z

    move-result v13

    const/4 v14, 0x0

    const-wide/16 v15, 0x0

    if-nez v13, :cond_1b

    if-eq v2, v6, :cond_1b

    if-le v9, v10, :cond_e

    .line 27
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    if-ge v9, v3, :cond_e

    add-int/2addr v9, v5

    .line 28
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, v5

    invoke-virtual {v0, v9, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    goto :goto_9

    :cond_e
    move-object v3, v1

    .line 29
    :goto_9
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    sub-int/2addr v6, v5

    invoke-virtual {v0, v4, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v6

    .line 30
    invoke-static {v7}, Lw3/c/a/a/a/k/a;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    invoke-static {v3}, Lw3/c/a/a/a/k/a;->e(Ljava/lang/String;)Z

    move-result v7

    if-eqz v7, :cond_f

    move v7, v5

    goto :goto_a

    :cond_f
    move v7, v4

    :goto_a
    const/16 v9, 0x44

    if-eq v2, v9, :cond_17

    const/16 v9, 0x46

    if-eq v2, v9, :cond_14

    const/16 v9, 0x4c

    if-eq v2, v9, :cond_10

    const/16 v9, 0x64

    if-eq v2, v9, :cond_17

    const/16 v9, 0x66

    if-eq v2, v9, :cond_14

    const/16 v1, 0x6c

    if-ne v2, v1, :cond_1a

    :cond_10
    if-nez v11, :cond_13

    if-nez v3, :cond_13

    .line 31
    invoke-virtual {v6, v4}, Ljava/lang/String;->charAt(I)C

    move-result v1

    const/16 v2, 0x2d

    if-ne v1, v2, :cond_11

    invoke-virtual {v6, v5}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lw3/c/a/a/a/k/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_12

    :cond_11
    invoke-static {v6}, Lw3/c/a/a/a/k/a;->f(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 32
    :cond_12
    :try_start_0
    invoke-static {v6}, Lw3/c/a/a/a/k/a;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_5

    .line 33
    :catch_0
    invoke-static {v6}, Lw3/c/a/a/a/k/a;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    goto/16 :goto_5

    .line 34
    :cond_13
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {v0, v8}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_14
    if-nez v6, :cond_15

    move-object v2, v1

    goto :goto_b

    .line 35
    :cond_15
    :try_start_1
    invoke-static {v6}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v2

    .line 36
    :goto_b
    invoke-virtual {v2}, Ljava/lang/Float;->isInfinite()Z

    move-result v3

    if-nez v3, :cond_17

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v3
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    cmpl-float v3, v3, v14

    if-nez v3, :cond_16

    if-eqz v7, :cond_17

    :cond_16
    move-object v1, v2

    goto/16 :goto_d

    :catch_1
    :cond_17
    if-nez v6, :cond_18

    goto :goto_c

    .line 37
    :cond_18
    :try_start_2
    invoke-static {v6}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 38
    :goto_c
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_19

    invoke-virtual {v1}, Ljava/lang/Double;->floatValue()F

    move-result v2
    :try_end_2
    .catch Ljava/lang/NumberFormatException; {:try_start_2 .. :try_end_2} :catch_2

    float-to-double v2, v2

    cmpl-double v2, v2, v15

    if-nez v2, :cond_21

    if-eqz v7, :cond_19

    goto/16 :goto_d

    .line 39
    :catch_2
    :cond_19
    :try_start_3
    invoke-static {v6}, Lw3/c/a/a/a/k/a;->a(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0
    :try_end_3
    .catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_3} :catch_3

    goto/16 :goto_5

    .line 40
    :catch_3
    :cond_1a
    new-instance v1, Ljava/lang/NumberFormatException;

    invoke-static {v0, v8}, Le/d/c/a/a;->z2(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_1b
    if-le v9, v10, :cond_1c

    .line 41
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    sub-int/2addr v2, v5

    if-ge v9, v2, :cond_1c

    add-int/2addr v9, v5

    .line 42
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {v0, v9, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1c
    if-nez v11, :cond_1d

    if-nez v1, :cond_1d

    .line 43
    :try_start_4
    invoke-static {v0}, Ljava/lang/Integer;->decode(Ljava/lang/String;)Ljava/lang/Integer;

    move-result-object v0
    :try_end_4
    .catch Ljava/lang/NumberFormatException; {:try_start_4 .. :try_end_4} :catch_4

    goto/16 :goto_5

    .line 44
    :catch_4
    :try_start_5
    invoke-static {v0}, Lw3/c/a/a/a/k/a;->c(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v0
    :try_end_5
    .catch Ljava/lang/NumberFormatException; {:try_start_5 .. :try_end_5} :catch_5

    goto/16 :goto_5

    .line 45
    :catch_5
    invoke-static {v0}, Lw3/c/a/a/a/k/a;->b(Ljava/lang/String;)Ljava/math/BigInteger;

    move-result-object v0

    goto/16 :goto_5

    .line 46
    :cond_1d
    invoke-static {v7}, Lw3/c/a/a/a/k/a;->e(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_1e

    invoke-static {v1}, Lw3/c/a/a/a/k/a;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1e

    move v4, v5

    :cond_1e
    const/4 v1, 0x7

    if-gt v12, v1, :cond_1f

    .line 47
    :try_start_6
    invoke-static {v0}, Ljava/lang/Float;->valueOf(Ljava/lang/String;)Ljava/lang/Float;

    move-result-object v1

    .line 48
    invoke-virtual {v1}, Ljava/lang/Float;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_1f

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v2
    :try_end_6
    .catch Ljava/lang/NumberFormatException; {:try_start_6 .. :try_end_6} :catch_6

    cmpl-float v2, v2, v14

    if-nez v2, :cond_21

    if-eqz v4, :cond_1f

    goto :goto_d

    :catch_6
    :cond_1f
    if-gt v12, v3, :cond_20

    .line 49
    :try_start_7
    invoke-static {v0}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v1

    .line 50
    invoke-virtual {v1}, Ljava/lang/Double;->isInfinite()Z

    move-result v2

    if-nez v2, :cond_20

    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2
    :try_end_7
    .catch Ljava/lang/NumberFormatException; {:try_start_7 .. :try_end_7} :catch_7

    cmpl-double v2, v2, v15

    if-nez v2, :cond_21

    if-eqz v4, :cond_20

    goto :goto_d

    .line 51
    :catch_7
    :cond_20
    invoke-static {v0}, Lw3/c/a/a/a/k/a;->a(Ljava/lang/String;)Ljava/math/BigDecimal;

    move-result-object v0

    goto/16 :goto_5

    :cond_21
    :goto_d
    return-object v1

    .line 52
    :cond_22
    new-instance v0, Ljava/lang/NumberFormatException;

    const-string v1, "A blank string is not a valid number"

    invoke-direct {v0, v1}, Ljava/lang/NumberFormatException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public readStringList(Landroid/os/Parcel;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Parcel;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readStringList(Ljava/util/List;)V

    .line 3
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :cond_0
    return-object v0
.end method

.method public writeNumber(Landroid/os/Parcel;Ljava/lang/Number;)V
    .locals 0

    if-nez p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    .line 1
    :cond_0
    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    :goto_0
    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Row;->rowId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 2
    iget-object p2, p0, Lcom/truecaller/data/dto/ContactDto$Row;->tcId:Ljava/lang/String;

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3
    iget-boolean p2, p0, Lcom/truecaller/data/dto/ContactDto$Row;->isPrimary:Z

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4
    iget-wide v0, p0, Lcom/truecaller/data/dto/ContactDto$Row;->phonebookId:J

    invoke-virtual {p1, v0, v1}, Landroid/os/Parcel;->writeLong(J)V

    .line 5
    iget p2, p0, Lcom/truecaller/data/dto/ContactDto$Row;->source:I

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
