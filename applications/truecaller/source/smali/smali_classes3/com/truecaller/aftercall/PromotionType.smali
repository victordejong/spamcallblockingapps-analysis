.class public final enum Lcom/truecaller/aftercall/PromotionType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/aftercall/PromotionType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/aftercall/PromotionType;

.field public static final enum CONTACT_PERMISSION:Lcom/truecaller/aftercall/PromotionType;

.field public static final enum DIALER_OUTGOING_OUTSIDE:Lcom/truecaller/aftercall/PromotionType;

.field public static final enum PHONE_PERMISSION:Lcom/truecaller/aftercall/PromotionType;

.field public static final enum SIGN_UP:Lcom/truecaller/aftercall/PromotionType;


# instance fields
.field public final category:Lcom/truecaller/aftercall/PromotionCategory;

.field private final isDisabledFeatureFlagKey:Ljava/lang/String;

.field public final settingKey:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/truecaller/aftercall/PromotionType;

    const-string v1, "SIGN_UP"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/aftercall/PromotionType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/aftercall/PromotionType;->SIGN_UP:Lcom/truecaller/aftercall/PromotionType;

    .line 2
    new-instance v1, Lcom/truecaller/aftercall/PromotionType;

    sget-object v3, Lcom/truecaller/aftercall/PromotionCategory;->PERMISSION:Lcom/truecaller/aftercall/PromotionCategory;

    const-string v4, "PHONE_PERMISSION"

    const/4 v5, 0x1

    invoke-direct {v1, v4, v5, v3}, Lcom/truecaller/aftercall/PromotionType;-><init>(Ljava/lang/String;ILcom/truecaller/aftercall/PromotionCategory;)V

    sput-object v1, Lcom/truecaller/aftercall/PromotionType;->PHONE_PERMISSION:Lcom/truecaller/aftercall/PromotionType;

    .line 3
    new-instance v4, Lcom/truecaller/aftercall/PromotionType;

    const-string v6, "CONTACT_PERMISSION"

    const/4 v7, 0x2

    invoke-direct {v4, v6, v7, v3}, Lcom/truecaller/aftercall/PromotionType;-><init>(Ljava/lang/String;ILcom/truecaller/aftercall/PromotionCategory;)V

    sput-object v4, Lcom/truecaller/aftercall/PromotionType;->CONTACT_PERMISSION:Lcom/truecaller/aftercall/PromotionType;

    .line 4
    new-instance v3, Lcom/truecaller/aftercall/PromotionType;

    sget-object v11, Lcom/truecaller/aftercall/PromotionCategory;->DIALER:Lcom/truecaller/aftercall/PromotionCategory;

    const-string v9, "DIALER_OUTGOING_OUTSIDE"

    const/4 v10, 0x3

    const-string v12, "outgoingOutside"

    const-string v13, "featureDisableOutgoingOutside"

    move-object v8, v3

    invoke-direct/range {v8 .. v13}, Lcom/truecaller/aftercall/PromotionType;-><init>(Ljava/lang/String;ILcom/truecaller/aftercall/PromotionCategory;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v3, Lcom/truecaller/aftercall/PromotionType;->DIALER_OUTGOING_OUTSIDE:Lcom/truecaller/aftercall/PromotionType;

    const/4 v6, 0x4

    new-array v6, v6, [Lcom/truecaller/aftercall/PromotionType;

    aput-object v0, v6, v2

    aput-object v1, v6, v5

    aput-object v4, v6, v7

    const/4 v0, 0x3

    aput-object v3, v6, v0

    .line 5
    sput-object v6, Lcom/truecaller/aftercall/PromotionType;->$VALUES:[Lcom/truecaller/aftercall/PromotionType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/aftercall/PromotionCategory;->NONE:Lcom/truecaller/aftercall/PromotionCategory;

    invoke-direct {p0, p1, p2, v0}, Lcom/truecaller/aftercall/PromotionType;-><init>(Ljava/lang/String;ILcom/truecaller/aftercall/PromotionCategory;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/truecaller/aftercall/PromotionCategory;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/aftercall/PromotionCategory;",
            ")V"
        }
    .end annotation

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    .line 2
    invoke-direct/range {v0 .. v5}, Lcom/truecaller/aftercall/PromotionType;-><init>(Ljava/lang/String;ILcom/truecaller/aftercall/PromotionCategory;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/truecaller/aftercall/PromotionCategory;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/aftercall/PromotionCategory;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 3
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 4
    iput-object p3, p0, Lcom/truecaller/aftercall/PromotionType;->category:Lcom/truecaller/aftercall/PromotionCategory;

    .line 5
    iput-object p4, p0, Lcom/truecaller/aftercall/PromotionType;->settingKey:Ljava/lang/String;

    .line 6
    iput-object p5, p0, Lcom/truecaller/aftercall/PromotionType;->isDisabledFeatureFlagKey:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/aftercall/PromotionType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/aftercall/PromotionType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/aftercall/PromotionType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/aftercall/PromotionType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/aftercall/PromotionType;->$VALUES:[Lcom/truecaller/aftercall/PromotionType;

    invoke-virtual {v0}, [Lcom/truecaller/aftercall/PromotionType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/aftercall/PromotionType;

    return-object v0
.end method


# virtual methods
.method public isEnabled()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/aftercall/PromotionType;->isDisabledFeatureFlagKey:Ljava/lang/String;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-static {v0, v1}, Le/a/n/g0;->B(Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v1, 0x1

    :cond_1
    return v1
.end method
