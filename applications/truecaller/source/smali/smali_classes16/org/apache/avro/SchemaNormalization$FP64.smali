.class public Lorg/apache/avro/SchemaNormalization$FP64;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/apache/avro/SchemaNormalization;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "FP64"
.end annotation


# static fields
.field private static final FP_TABLE:[J


# direct methods
.method public static constructor <clinit>()V
    .locals 10

    const/16 v0, 0x100

    new-array v1, v0, [J

    .line 1
    sput-object v1, Lorg/apache/avro/SchemaNormalization$FP64;->FP_TABLE:[J

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    int-to-long v3, v2

    move v5, v1

    :goto_1
    const/16 v6, 0x8

    if-ge v5, v6, :cond_0

    const-wide/16 v6, 0x1

    and-long/2addr v6, v3

    neg-long v6, v6

    const/4 v8, 0x1

    ushr-long/2addr v3, v8

    const-wide v8, -0x3ea2dec55b28586bL    # -7636202.575662513

    and-long/2addr v6, v8

    xor-long/2addr v3, v6

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 2
    :cond_0
    sget-object v5, Lorg/apache/avro/SchemaNormalization$FP64;->FP_TABLE:[J

    aput-wide v3, v5, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static synthetic access$000()[J
    .locals 1

    .line 1
    sget-object v0, Lorg/apache/avro/SchemaNormalization$FP64;->FP_TABLE:[J

    return-object v0
.end method
