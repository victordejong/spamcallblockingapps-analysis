.class public final enum Lcom/truecaller/ads/AdLayoutTypeX;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Le/a/i/g;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ads/AdLayoutTypeX;",
        ">;",
        "Le/a/i/g;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0014\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B9\u0008\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\n\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000c\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u000e\u001a\u00020\u0003\u0012\u0008\u0008\u0002\u0010\u0004\u001a\u00020\u0003\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u001c\u0010\u0004\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0004\u0010\u0005\u001a\u0004\u0008\u0006\u0010\u0007R\u001c\u0010\u0008\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\u0005\u001a\u0004\u0008\t\u0010\u0007R\u001c\u0010\n\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\n\u0010\u0005\u001a\u0004\u0008\u000b\u0010\u0007R\u001c\u0010\u000c\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0005\u001a\u0004\u0008\r\u0010\u0007R\u001c\u0010\u000e\u001a\u00020\u00038\u0016@\u0017X\u0097\u0004\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0005\u001a\u0004\u0008\u000f\u0010\u0007j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/truecaller/ads/AdLayoutTypeX;",
        "",
        "Le/a/i/g;",
        "",
        "placeholderLayout",
        "I",
        "getPlaceholderLayout",
        "()I",
        "nativeLayout",
        "getNativeLayout",
        "bannerLayout",
        "getBannerLayout",
        "houseLayout",
        "getHouseLayout",
        "emptyLayout",
        "getEmptyLayout",
        "<init>",
        "(Ljava/lang/String;IIIIII)V",
        "SMALL",
        "MEGA_VIDEO",
        "ACS",
        "DETAILS",
        "ACS_LARGE",
        "ads_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ads/AdLayoutTypeX;

.field public static final enum ACS:Lcom/truecaller/ads/AdLayoutTypeX;

.field public static final enum ACS_LARGE:Lcom/truecaller/ads/AdLayoutTypeX;

.field public static final enum DETAILS:Lcom/truecaller/ads/AdLayoutTypeX;

.field public static final enum MEGA_VIDEO:Lcom/truecaller/ads/AdLayoutTypeX;

.field public static final enum SMALL:Lcom/truecaller/ads/AdLayoutTypeX;


# instance fields
.field private final bannerLayout:I

.field private final emptyLayout:I

.field private final houseLayout:I

.field private final nativeLayout:I

.field private final placeholderLayout:I


# direct methods
.method public static constructor <clinit>()V
    .locals 22

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/ads/AdLayoutTypeX;

    new-instance v11, Lcom/truecaller/ads/AdLayoutTypeX;

    .line 1
    sget v4, Lcom/truecaller/ads/R$layout;->ad_tcx_native_small_frameable:I

    .line 2
    sget v5, Lcom/truecaller/ads/R$layout;->ad_frameable_banner_small:I

    .line 3
    sget v6, Lcom/truecaller/ads/R$layout;->ad_tcx_house_small_frameable:I

    .line 4
    sget v8, Lcom/truecaller/ads/R$layout;->ad_tcx_placeholder_small:I

    const-string v2, "SMALL"

    const/4 v3, 0x0

    const/4 v7, 0x0

    const/16 v9, 0x8

    const/4 v10, 0x0

    move-object v1, v11

    .line 5
    invoke-direct/range {v1 .. v10}, Lcom/truecaller/ads/AdLayoutTypeX;-><init>(Ljava/lang/String;IIIIIIILs1/z/c/f;)V

    sput-object v11, Lcom/truecaller/ads/AdLayoutTypeX;->SMALL:Lcom/truecaller/ads/AdLayoutTypeX;

    const/4 v1, 0x0

    aput-object v11, v0, v1

    new-instance v1, Lcom/truecaller/ads/AdLayoutTypeX;

    .line 6
    sget v15, Lcom/truecaller/ads/R$layout;->ad_tcx_native_mega:I

    .line 7
    sget v16, Lcom/truecaller/ads/R$layout;->ad_frameable_banner_mega:I

    .line 8
    sget v17, Lcom/truecaller/ads/R$layout;->ad_tcx_house_mega:I

    .line 9
    sget v19, Lcom/truecaller/ads/R$layout;->ad_tcx_placeholder_mega:I

    const-string v13, "MEGA_VIDEO"

    const/4 v14, 0x1

    const/16 v18, 0x0

    const/16 v20, 0x8

    const/16 v21, 0x0

    move-object v12, v1

    .line 10
    invoke-direct/range {v12 .. v21}, Lcom/truecaller/ads/AdLayoutTypeX;-><init>(Ljava/lang/String;IIIIIIILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/ads/AdLayoutTypeX;->MEGA_VIDEO:Lcom/truecaller/ads/AdLayoutTypeX;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/ads/AdLayoutTypeX;

    .line 11
    sget v6, Lcom/truecaller/ads/R$layout;->ad_tcx_native_acs:I

    const-string v4, "ACS"

    const/4 v5, 0x2

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/16 v11, 0x1e

    const/4 v12, 0x0

    move-object v3, v1

    .line 12
    invoke-direct/range {v3 .. v12}, Lcom/truecaller/ads/AdLayoutTypeX;-><init>(Ljava/lang/String;IIIIIIILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/ads/AdLayoutTypeX;->ACS:Lcom/truecaller/ads/AdLayoutTypeX;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/ads/AdLayoutTypeX;

    .line 13
    sget v6, Lcom/truecaller/ads/R$layout;->ad_tcx_native_details:I

    const-string v4, "DETAILS"

    const/4 v5, 0x3

    move-object v3, v1

    .line 14
    invoke-direct/range {v3 .. v12}, Lcom/truecaller/ads/AdLayoutTypeX;-><init>(Ljava/lang/String;IIIIIIILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/ads/AdLayoutTypeX;->DETAILS:Lcom/truecaller/ads/AdLayoutTypeX;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/ads/AdLayoutTypeX;

    .line 15
    sget v6, Lcom/truecaller/ads/R$layout;->ad_tcx_native_large_acs:I

    const-string v4, "ACS_LARGE"

    const/4 v5, 0x4

    move-object v3, v1

    .line 16
    invoke-direct/range {v3 .. v12}, Lcom/truecaller/ads/AdLayoutTypeX;-><init>(Ljava/lang/String;IIIIIIILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/ads/AdLayoutTypeX;->ACS_LARGE:Lcom/truecaller/ads/AdLayoutTypeX;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/ads/AdLayoutTypeX;->$VALUES:[Lcom/truecaller/ads/AdLayoutTypeX;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/ads/AdLayoutTypeX;->nativeLayout:I

    iput p4, p0, Lcom/truecaller/ads/AdLayoutTypeX;->bannerLayout:I

    iput p5, p0, Lcom/truecaller/ads/AdLayoutTypeX;->houseLayout:I

    iput p6, p0, Lcom/truecaller/ads/AdLayoutTypeX;->emptyLayout:I

    iput p7, p0, Lcom/truecaller/ads/AdLayoutTypeX;->placeholderLayout:I

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IIIIIIILs1/z/c/f;)V
    .locals 10

    and-int/lit8 v0, p8, 0x2

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    move v6, v1

    goto :goto_0

    :cond_0
    move v6, p4

    :goto_0
    and-int/lit8 v0, p8, 0x4

    if-eqz v0, :cond_1

    move v7, p3

    goto :goto_1

    :cond_1
    move v7, p5

    :goto_1
    and-int/lit8 v0, p8, 0x8

    if-eqz v0, :cond_2

    .line 2
    sget v0, Lcom/truecaller/ads/R$layout;->ad_empty:I

    move v8, v0

    goto :goto_2

    :cond_2
    move/from16 v8, p6

    :goto_2
    and-int/lit8 v0, p8, 0x10

    if-eqz v0, :cond_3

    move v9, v1

    goto :goto_3

    :cond_3
    move/from16 v9, p7

    :goto_3
    move-object v2, p0

    move-object v3, p1

    move v4, p2

    move v5, p3

    .line 3
    invoke-direct/range {v2 .. v9}, Lcom/truecaller/ads/AdLayoutTypeX;-><init>(Ljava/lang/String;IIIIII)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ads/AdLayoutTypeX;
    .locals 1

    const-class v0, Lcom/truecaller/ads/AdLayoutTypeX;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ads/AdLayoutTypeX;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ads/AdLayoutTypeX;
    .locals 1

    sget-object v0, Lcom/truecaller/ads/AdLayoutTypeX;->$VALUES:[Lcom/truecaller/ads/AdLayoutTypeX;

    invoke-virtual {v0}, [Lcom/truecaller/ads/AdLayoutTypeX;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ads/AdLayoutTypeX;

    return-object v0
.end method


# virtual methods
.method public getBannerLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ads/AdLayoutTypeX;->bannerLayout:I

    return v0
.end method

.method public getEmptyLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ads/AdLayoutTypeX;->emptyLayout:I

    return v0
.end method

.method public getHouseLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ads/AdLayoutTypeX;->houseLayout:I

    return v0
.end method

.method public getNativeLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ads/AdLayoutTypeX;->nativeLayout:I

    return v0
.end method

.method public getPlaceholderLayout()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ads/AdLayoutTypeX;->placeholderLayout:I

    return v0
.end method
