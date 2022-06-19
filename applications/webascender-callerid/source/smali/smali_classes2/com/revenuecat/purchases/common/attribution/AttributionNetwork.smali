.class public final enum Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

.field public static final enum ADJUST:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

.field public static final enum APPSFLYER:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

.field public static final enum BRANCH:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

.field public static final enum FACEBOOK:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

.field public static final enum MPARTICLE:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

.field public static final enum TENJIN:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;


# instance fields
.field private final serverValue:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    const/4 v0, 0x6

    new-array v1, v0, [Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    new-instance v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    const-string v3, "ADJUST"

    const/4 v4, 0x0

    const/4 v5, 0x1

    .line 1
    invoke-direct {v2, v3, v4, v5}, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->ADJUST:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    aput-object v2, v1, v4

    new-instance v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    const-string v3, "APPSFLYER"

    const/4 v4, 0x2

    .line 2
    invoke-direct {v2, v3, v5, v4}, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->APPSFLYER:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    aput-object v2, v1, v5

    new-instance v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    const-string v3, "BRANCH"

    const/4 v5, 0x3

    .line 3
    invoke-direct {v2, v3, v4, v5}, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->BRANCH:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    aput-object v2, v1, v4

    new-instance v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    const-string v3, "TENJIN"

    const/4 v4, 0x4

    .line 4
    invoke-direct {v2, v3, v5, v4}, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->TENJIN:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    aput-object v2, v1, v5

    new-instance v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    const-string v3, "FACEBOOK"

    const/4 v5, 0x5

    .line 5
    invoke-direct {v2, v3, v4, v5}, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->FACEBOOK:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    aput-object v2, v1, v4

    new-instance v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    const-string v3, "MPARTICLE"

    .line 6
    invoke-direct {v2, v3, v5, v0}, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->MPARTICLE:Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    aput-object v2, v1, v5

    sput-object v1, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->$VALUES:[Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

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

    iput p3, p0, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->serverValue:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;
    .locals 1

    const-class v0, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    return-object p0
.end method

.method public static values()[Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->$VALUES:[Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    invoke-virtual {v0}, [Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;

    return-object v0
.end method


# virtual methods
.method public final getServerValue()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/revenuecat/purchases/common/attribution/AttributionNetwork;->serverValue:I

    return v0
.end method
