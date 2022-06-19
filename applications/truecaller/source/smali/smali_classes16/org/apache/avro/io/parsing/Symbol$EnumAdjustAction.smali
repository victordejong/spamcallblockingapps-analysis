.class public Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;
.super Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/io/parsing/Symbol;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "EnumAdjustAction"
.end annotation


# instance fields
.field public final adjustments:[Ljava/lang/Object;

.field public final noAdjustments:Z


# direct methods
.method public constructor <init>(I[Ljava/lang/Object;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lorg/apache/avro/io/parsing/Symbol$IntCheckAction;-><init>(I)V

    .line 2
    iput-object p2, p0, Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;->adjustments:[Ljava/lang/Object;

    const/4 v0, 0x1

    if-eqz p2, :cond_3

    .line 3
    array-length v1, p2

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result v1

    .line 4
    array-length v2, p2

    const/4 v3, 0x0

    if-gt v2, p1, :cond_0

    move p1, v0

    goto :goto_0

    :cond_0
    move p1, v3

    :goto_0
    move v2, v3

    :goto_1
    if-eqz p1, :cond_2

    if-ge v2, v1, :cond_2

    .line 5
    aget-object v4, p2, v2

    instance-of v4, v4, Ljava/lang/Integer;

    if-eqz v4, :cond_1

    aget-object v4, p2, v2

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v2, v4, :cond_1

    move v4, v0

    goto :goto_2

    :cond_1
    move v4, v3

    :goto_2
    and-int/2addr p1, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    :cond_2
    move v0, p1

    .line 6
    :cond_3
    iput-boolean v0, p0, Lorg/apache/avro/io/parsing/Symbol$EnumAdjustAction;->noAdjustments:Z

    return-void
.end method
