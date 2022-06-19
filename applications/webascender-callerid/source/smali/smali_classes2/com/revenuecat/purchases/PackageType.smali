.class public final enum Lcom/revenuecat/purchases/PackageType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/revenuecat/purchases/PackageType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/revenuecat/purchases/PackageType;

.field public static final enum ANNUAL:Lcom/revenuecat/purchases/PackageType;

.field public static final enum CUSTOM:Lcom/revenuecat/purchases/PackageType;

.field public static final enum LIFETIME:Lcom/revenuecat/purchases/PackageType;

.field public static final enum MONTHLY:Lcom/revenuecat/purchases/PackageType;

.field public static final enum SIX_MONTH:Lcom/revenuecat/purchases/PackageType;

.field public static final enum THREE_MONTH:Lcom/revenuecat/purchases/PackageType;

.field public static final enum TWO_MONTH:Lcom/revenuecat/purchases/PackageType;

.field public static final enum UNKNOWN:Lcom/revenuecat/purchases/PackageType;

.field public static final enum WEEKLY:Lcom/revenuecat/purchases/PackageType;


# instance fields
.field private final identifier:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    const/16 v0, 0x9

    new-array v0, v0, [Lcom/revenuecat/purchases/PackageType;

    new-instance v1, Lcom/revenuecat/purchases/PackageType;

    const-string v2, "UNKNOWN"

    const/4 v3, 0x0

    const/4 v4, 0x0

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PackageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PackageType;->UNKNOWN:Lcom/revenuecat/purchases/PackageType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PackageType;

    const-string v2, "CUSTOM"

    const/4 v3, 0x1

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PackageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PackageType;->CUSTOM:Lcom/revenuecat/purchases/PackageType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PackageType;

    const-string v2, "LIFETIME"

    const/4 v3, 0x2

    const-string v4, "$rc_lifetime"

    .line 3
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PackageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PackageType;->LIFETIME:Lcom/revenuecat/purchases/PackageType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PackageType;

    const-string v2, "ANNUAL"

    const/4 v3, 0x3

    const-string v4, "$rc_annual"

    .line 4
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PackageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PackageType;->ANNUAL:Lcom/revenuecat/purchases/PackageType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PackageType;

    const-string v2, "SIX_MONTH"

    const/4 v3, 0x4

    const-string v4, "$rc_six_month"

    .line 5
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PackageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PackageType;->SIX_MONTH:Lcom/revenuecat/purchases/PackageType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PackageType;

    const-string v2, "THREE_MONTH"

    const/4 v3, 0x5

    const-string v4, "$rc_three_month"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PackageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PackageType;->THREE_MONTH:Lcom/revenuecat/purchases/PackageType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PackageType;

    const-string v2, "TWO_MONTH"

    const/4 v3, 0x6

    const-string v4, "$rc_two_month"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PackageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PackageType;->TWO_MONTH:Lcom/revenuecat/purchases/PackageType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PackageType;

    const-string v2, "MONTHLY"

    const/4 v3, 0x7

    const-string v4, "$rc_monthly"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PackageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PackageType;->MONTHLY:Lcom/revenuecat/purchases/PackageType;

    aput-object v1, v0, v3

    new-instance v1, Lcom/revenuecat/purchases/PackageType;

    const-string v2, "WEEKLY"

    const/16 v3, 0x8

    const-string v4, "$rc_weekly"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/revenuecat/purchases/PackageType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/revenuecat/purchases/PackageType;->WEEKLY:Lcom/revenuecat/purchases/PackageType;

    aput-object v1, v0, v3

    sput-object v0, Lcom/revenuecat/purchases/PackageType;->$VALUES:[Lcom/revenuecat/purchases/PackageType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/revenuecat/purchases/PackageType;->identifier:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/revenuecat/purchases/PackageType;
    .locals 1

    const-class v0, Lcom/revenuecat/purchases/PackageType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/revenuecat/purchases/PackageType;

    return-object p0
.end method

.method public static values()[Lcom/revenuecat/purchases/PackageType;
    .locals 1

    sget-object v0, Lcom/revenuecat/purchases/PackageType;->$VALUES:[Lcom/revenuecat/purchases/PackageType;

    invoke-virtual {v0}, [Lcom/revenuecat/purchases/PackageType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/revenuecat/purchases/PackageType;

    return-object v0
.end method


# virtual methods
.method public final getIdentifier()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/revenuecat/purchases/PackageType;->identifier:Ljava/lang/String;

    return-object v0
.end method
