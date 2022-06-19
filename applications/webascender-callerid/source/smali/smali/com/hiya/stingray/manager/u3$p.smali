.class public final enum Lcom/hiya/stingray/manager/u3$p;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/u3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "p"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/u3$p;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/u3$p;

.field public static final enum ANNUAL:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum ANNUAL_NO_TRIAL:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum ANNUAL_NO_TRIAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum ANNUAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum ANNUAL_PRICE_INC_TRIAL_PERIOD_EXP:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum MONTHLY:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum MONTHLY_NO_TRIAL:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum MONTHLY_NO_TRIAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum MONTHLY_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum MONTHLY_PRICE_INC_TRIAL_PERIOD_EXP:Lcom/hiya/stingray/manager/u3$p;

.field public static final enum MONTHLY_PROMO:Lcom/hiya/stingray/manager/u3$p;


# instance fields
.field private final hasIntroductoryPrice:Z

.field private final id:I

.field private final subscriptionPeriod:Lcom/hiya/stingray/manager/u3$q;

.field private final trialLengthDays:Ljava/lang/Integer;


# direct methods
.method static constructor <clinit>()V
    .locals 14

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/hiya/stingray/manager/u3$p;

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    .line 1
    sget-object v9, Lcom/hiya/stingray/manager/u3$q;->MONTHLY:Lcom/hiya/stingray/manager/u3$q;

    const/4 v10, 0x7

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    const-string v2, "MONTHLY"

    const/4 v3, 0x0

    const v4, 0x7f11030e

    const/4 v7, 0x0

    move-object v1, v8

    move-object v5, v9

    move-object v6, v11

    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->MONTHLY:Lcom/hiya/stingray/manager/u3$p;

    const/4 v1, 0x0

    aput-object v8, v0, v1

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    .line 2
    sget-object v12, Lcom/hiya/stingray/manager/u3$q;->ANNUAL:Lcom/hiya/stingray/manager/u3$q;

    const-string v2, "ANNUAL"

    const/4 v3, 0x1

    const v4, 0x7f110308

    move-object v1, v8

    move-object v5, v12

    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->ANNUAL:Lcom/hiya/stingray/manager/u3$p;

    const/4 v1, 0x1

    aput-object v8, v0, v1

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    const-string v2, "MONTHLY_NO_TRIAL"

    const/4 v3, 0x2

    const v4, 0x7f110312

    const/4 v6, 0x0

    move-object v1, v8

    move-object v5, v9

    .line 3
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_NO_TRIAL:Lcom/hiya/stingray/manager/u3$p;

    const/4 v1, 0x2

    aput-object v8, v0, v1

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    const-string v2, "ANNUAL_NO_TRIAL"

    const/4 v3, 0x3

    const v4, 0x7f11030b

    move-object v1, v8

    move-object v5, v12

    .line 4
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->ANNUAL_NO_TRIAL:Lcom/hiya/stingray/manager/u3$p;

    const/4 v1, 0x3

    .line 5
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v13

    aput-object v8, v0, v1

    .line 6
    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    const-string v2, "MONTHLY_PRICE_INC"

    const/4 v3, 0x4

    const v4, 0x7f110310

    move-object v1, v8

    move-object v5, v9

    move-object v6, v11

    .line 7
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    const/4 v1, 0x4

    aput-object v8, v0, v1

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    const-string v2, "ANNUAL_PRICE_INC"

    const/4 v3, 0x5

    const v4, 0x7f110309

    move-object v1, v8

    move-object v5, v12

    .line 8
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->ANNUAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    const/4 v1, 0x5

    aput-object v8, v0, v1

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    const-string v2, "MONTHLY_NO_TRIAL_PRICE_INC"

    const/4 v3, 0x6

    const v4, 0x7f110313

    const/4 v6, 0x0

    move-object v1, v8

    move-object v5, v9

    .line 9
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_NO_TRIAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    const/4 v1, 0x6

    aput-object v8, v0, v1

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    const-string v2, "ANNUAL_NO_TRIAL_PRICE_INC"

    const/4 v3, 0x7

    const v4, 0x7f11030c

    move-object v1, v8

    move-object v5, v12

    .line 10
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->ANNUAL_NO_TRIAL_PRICE_INC:Lcom/hiya/stingray/manager/u3$p;

    aput-object v8, v0, v10

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    const-string v2, "MONTHLY_PRICE_INC_TRIAL_PERIOD_EXP"

    const/16 v3, 0x8

    const v4, 0x7f110311

    move-object v1, v8

    move-object v5, v9

    move-object v6, v13

    .line 11
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_PRICE_INC_TRIAL_PERIOD_EXP:Lcom/hiya/stingray/manager/u3$p;

    const/16 v1, 0x8

    aput-object v8, v0, v1

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    const-string v2, "ANNUAL_PRICE_INC_TRIAL_PERIOD_EXP"

    const/16 v3, 0x9

    const v4, 0x7f11030a

    move-object v1, v8

    move-object v5, v12

    .line 12
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->ANNUAL_PRICE_INC_TRIAL_PERIOD_EXP:Lcom/hiya/stingray/manager/u3$p;

    const/16 v1, 0x9

    aput-object v8, v0, v1

    new-instance v8, Lcom/hiya/stingray/manager/u3$p;

    const-string v2, "MONTHLY_PROMO"

    const/16 v3, 0xa

    const v4, 0x7f11030f

    const/4 v6, 0x0

    const/4 v7, 0x1

    move-object v1, v8

    move-object v5, v9

    .line 13
    invoke-direct/range {v1 .. v7}, Lcom/hiya/stingray/manager/u3$p;-><init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V

    sput-object v8, Lcom/hiya/stingray/manager/u3$p;->MONTHLY_PROMO:Lcom/hiya/stingray/manager/u3$p;

    const/16 v1, 0xa

    aput-object v8, v0, v1

    sput-object v0, Lcom/hiya/stingray/manager/u3$p;->$VALUES:[Lcom/hiya/stingray/manager/u3$p;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IILcom/hiya/stingray/manager/u3$q;Ljava/lang/Integer;Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/hiya/stingray/manager/u3$q;",
            "Ljava/lang/Integer;",
            "Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/hiya/stingray/manager/u3$p;->id:I

    iput-object p4, p0, Lcom/hiya/stingray/manager/u3$p;->subscriptionPeriod:Lcom/hiya/stingray/manager/u3$q;

    iput-object p5, p0, Lcom/hiya/stingray/manager/u3$p;->trialLengthDays:Ljava/lang/Integer;

    iput-boolean p6, p0, Lcom/hiya/stingray/manager/u3$p;->hasIntroductoryPrice:Z

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/u3$p;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/u3$p;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/u3$p;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/u3$p;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/u3$p;->$VALUES:[Lcom/hiya/stingray/manager/u3$p;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/u3$p;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/u3$p;

    return-object v0
.end method


# virtual methods
.method public final getHasIntroductoryPrice()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/manager/u3$p;->hasIntroductoryPrice:Z

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/manager/u3$p;->id:I

    return v0
.end method

.method public final getSubscriptionPeriod()Lcom/hiya/stingray/manager/u3$q;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$p;->subscriptionPeriod:Lcom/hiya/stingray/manager/u3$q;

    return-object v0
.end method

.method public final getTrialLengthDays()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$p;->trialLengthDays:Ljava/lang/Integer;

    return-object v0
.end method

.method public final isAnnual()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$p;->subscriptionPeriod:Lcom/hiya/stingray/manager/u3$q;

    sget-object v1, Lcom/hiya/stingray/manager/u3$q;->ANNUAL:Lcom/hiya/stingray/manager/u3$q;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isMonthly()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$p;->subscriptionPeriod:Lcom/hiya/stingray/manager/u3$q;

    sget-object v1, Lcom/hiya/stingray/manager/u3$q;->MONTHLY:Lcom/hiya/stingray/manager/u3$q;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final isWithTrial()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/u3$p;->trialLengthDays:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
