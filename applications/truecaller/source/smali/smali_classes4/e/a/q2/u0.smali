.class public final Le/a/q2/u0;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:[J

.field public static final b:[J

.field public static final c:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    const/16 v0, 0x8

    new-array v1, v0, [J

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_0

    const/4 v4, 0x1

    shl-int/2addr v4, v3

    int-to-long v4, v4

    .line 1
    aput-wide v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_0
    sput-object v1, Le/a/q2/u0;->a:[J

    new-array v1, v0, [J

    move v3, v2

    :goto_1
    if-ge v3, v0, :cond_1

    add-int/lit8 v4, v3, 0x1

    int-to-long v5, v4

    const-wide/16 v7, 0x7d

    mul-long/2addr v5, v7

    .line 2
    aput-wide v5, v1, v3

    move v3, v4

    goto :goto_1

    :cond_1
    sput-object v1, Le/a/q2/u0;->b:[J

    new-array v1, v0, [J

    :goto_2
    if-ge v2, v0, :cond_2

    add-int/lit8 v3, v2, 0x1

    int-to-long v4, v3

    const-wide/16 v6, 0x271

    mul-long/2addr v4, v6

    .line 3
    aput-wide v4, v1, v2

    move v2, v3

    goto :goto_2

    :cond_2
    sput-object v1, Le/a/q2/u0;->c:[J

    return-void
.end method
