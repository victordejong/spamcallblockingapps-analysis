.class public final enum Lcom/truecaller/insights/source/SmartSMSFeatureStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/insights/source/SmartSMSFeatureStatus;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0008\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007j\u0002\u0008\u0008\u00a8\u0006\t"
    }
    d2 = {
        "Lcom/truecaller/insights/source/SmartSMSFeatureStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "ALLOWED",
        "BLOCKED",
        "PRE_FILLED",
        "INCORRECT_DATA",
        "DEFAULT",
        "insights_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

.field public static final enum ALLOWED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

.field public static final enum BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

.field public static final enum DEFAULT:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

.field public static final enum INCORRECT_DATA:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

.field public static final enum PRE_FILLED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    new-instance v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    const-string v2, "ALLOWED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->ALLOWED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    const-string v2, "BLOCKED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->BLOCKED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    const-string v2, "PRE_FILLED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->PRE_FILLED:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    const-string v2, "INCORRECT_DATA"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->INCORRECT_DATA:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    const-string v2, "DEFAULT"

    const/4 v3, 0x4

    invoke-direct {v1, v2, v3}, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->DEFAULT:Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->$VALUES:[Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/insights/source/SmartSMSFeatureStatus;
    .locals 1

    const-class v0, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/insights/source/SmartSMSFeatureStatus;
    .locals 1

    sget-object v0, Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->$VALUES:[Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    invoke-virtual {v0}, [Lcom/truecaller/insights/source/SmartSMSFeatureStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/insights/source/SmartSMSFeatureStatus;

    return-object v0
.end method
