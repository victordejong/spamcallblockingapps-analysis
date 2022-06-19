.class public final enum Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/appnext/nativeads/NativeAdRequest;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "VideoQuality"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

.field public static final enum DEFAULT:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

.field public static final enum HIGH:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

.field public static final enum LOW:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;


# instance fields
.field private value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    const-string v1, "DEFAULT"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->DEFAULT:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    .line 2
    new-instance v1, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    const-string v3, "HIGH"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->HIGH:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    .line 3
    new-instance v3, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    const-string v5, "LOW"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6, v6}, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->LOW:Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 4
    sput-object v5, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->$VALUES:[Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput p3, p0, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->value:I

    return-void
.end method

.method public static fromInt(I)Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;
    .locals 4

    .line 1
    invoke-static {}, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->values()[Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    move-result-object v0

    const/4 v1, 0x0

    :goto_0
    const/4 v2, 0x3

    if-ge v1, v2, :cond_1

    aget-object v2, v0, v1

    .line 2
    invoke-virtual {v2}, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->getValue()I

    move-result v3

    if-ne v3, p0, :cond_0

    return-object v2

    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;
    .locals 1

    .line 1
    const-class v0, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    return-object p0
.end method

.method public static values()[Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;
    .locals 1

    .line 1
    sget-object v0, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->$VALUES:[Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    invoke-virtual {v0}, [Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;

    return-object v0
.end method


# virtual methods
.method public final getValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/appnext/nativeads/NativeAdRequest$VideoQuality;->value:I

    return v0
.end method
