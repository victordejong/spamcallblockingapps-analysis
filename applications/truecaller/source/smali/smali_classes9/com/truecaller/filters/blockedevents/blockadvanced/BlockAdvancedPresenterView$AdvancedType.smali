.class public final enum Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AdvancedType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

.field public static final enum CONTAINS:Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

.field public static final enum ENDS_WITH:Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

.field public static final enum STARTS_WITH:Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;


# direct methods
.method public static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    const-string v1, "STARTS_WITH"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;->STARTS_WITH:Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    new-instance v1, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    const-string v3, "CONTAINS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;->CONTAINS:Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    new-instance v3, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    const-string v5, "ENDS_WITH"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;->ENDS_WITH:Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    const/4 v5, 0x3

    new-array v5, v5, [Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;->$VALUES:[Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;->$VALUES:[Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    invoke-virtual {v0}, [Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/filters/blockedevents/blockadvanced/BlockAdvancedPresenterView$AdvancedType;

    return-object v0
.end method
