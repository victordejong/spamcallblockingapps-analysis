.class public final enum Lcom/truecaller/ads/mediation/model/AdPartner;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ads/mediation/model/AdPartner;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/truecaller/ads/mediation/model/AdPartner;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "FACEBOOK",
        "AMAZON",
        "APPNEXT",
        "CRITEO",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/ads/mediation/model/AdPartner;

.field public static final enum AMAZON:Lcom/truecaller/ads/mediation/model/AdPartner;

.field public static final enum APPNEXT:Lcom/truecaller/ads/mediation/model/AdPartner;

.field public static final enum CRITEO:Lcom/truecaller/ads/mediation/model/AdPartner;

.field public static final enum FACEBOOK:Lcom/truecaller/ads/mediation/model/AdPartner;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/ads/mediation/model/AdPartner;

    new-instance v1, Lcom/truecaller/ads/mediation/model/AdPartner;

    const-string v2, "FACEBOOK"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/mediation/model/AdPartner;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/mediation/model/AdPartner;->FACEBOOK:Lcom/truecaller/ads/mediation/model/AdPartner;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/mediation/model/AdPartner;

    const-string v2, "AMAZON"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/mediation/model/AdPartner;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/mediation/model/AdPartner;->AMAZON:Lcom/truecaller/ads/mediation/model/AdPartner;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/mediation/model/AdPartner;

    const-string v2, "APPNEXT"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/mediation/model/AdPartner;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/mediation/model/AdPartner;->APPNEXT:Lcom/truecaller/ads/mediation/model/AdPartner;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/ads/mediation/model/AdPartner;

    const-string v2, "CRITEO"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/ads/mediation/model/AdPartner;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ads/mediation/model/AdPartner;->CRITEO:Lcom/truecaller/ads/mediation/model/AdPartner;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/ads/mediation/model/AdPartner;->$VALUES:[Lcom/truecaller/ads/mediation/model/AdPartner;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ads/mediation/model/AdPartner;
    .locals 1

    const-class v0, Lcom/truecaller/ads/mediation/model/AdPartner;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ads/mediation/model/AdPartner;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ads/mediation/model/AdPartner;
    .locals 1

    sget-object v0, Lcom/truecaller/ads/mediation/model/AdPartner;->$VALUES:[Lcom/truecaller/ads/mediation/model/AdPartner;

    invoke-virtual {v0}, [Lcom/truecaller/ads/mediation/model/AdPartner;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ads/mediation/model/AdPartner;

    return-object v0
.end method
