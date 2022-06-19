.class public final enum Lcom/hiya/stingray/manager/d3$a;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/hiya/stingray/manager/d3;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/hiya/stingray/manager/d3$a;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/hiya/stingray/manager/d3$a;

.field public static final enum BATTERY_OPTIMIZATION:Lcom/hiya/stingray/manager/d3$a;

.field public static final enum CALLS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

.field public static final enum CALL_LOG_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

.field public static final enum DEFAULT_CALLER_ID_APP:Lcom/hiya/stingray/manager/d3$a;

.field public static final enum DEFAULT_PHONE_APP:Lcom/hiya/stingray/manager/d3$a;

.field public static final enum DISPLAY_OVER_APPS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

.field public static final enum PHONE_VERIFICATION:Lcom/hiya/stingray/manager/d3$a;


# instance fields
.field private final bodyRC:Ljava/lang/String;

.field private final buttonTitleRC:Ljava/lang/String;

.field private final requestCode:I

.field private final resolvedButtonTitleRC:Ljava/lang/String;

.field private final titleRC:Ljava/lang/String;

.field private final userPropertyFlag:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/hiya/stingray/manager/d3$a;

    new-instance v9, Lcom/hiya/stingray/manager/d3$a;

    const-string v2, "CALLS_PERMISSION"

    const/4 v3, 0x0

    const-string v4, "onboarding_calls_permission_title"

    const-string v5, "onboarding_calls_permission_body"

    const-string v6, "onboarding_button_allow"

    const-string v7, "onboarding_button_allowed"

    const-string v8, "cm"

    move-object v1, v9

    .line 1
    invoke-direct/range {v1 .. v8}, Lcom/hiya/stingray/manager/d3$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v9, Lcom/hiya/stingray/manager/d3$a;->CALLS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Lcom/hiya/stingray/manager/d3$a;

    const-string v11, "CALL_LOG_PERMISSION"

    const/4 v12, 0x1

    const-string v13, "onboarding_call_log_permission_title"

    const-string v14, "onboarding_call_log_permission_body"

    const-string v15, "onboarding_button_allow"

    const-string v16, "onboarding_button_allowed"

    const-string v17, "cl"

    move-object v10, v1

    .line 2
    invoke-direct/range {v10 .. v17}, Lcom/hiya/stingray/manager/d3$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/d3$a;->CALL_LOG_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/hiya/stingray/manager/d3$a;

    const-string v4, "PHONE_VERIFICATION"

    const/4 v5, 0x2

    const-string v6, "onboarding_phone_verification_title"

    const-string v7, "onboarding_phone_verification_body"

    const-string v8, "onboarding_button_verify_now"

    const-string v9, "onboarding_button_verified"

    const-string v10, "pv"

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v10}, Lcom/hiya/stingray/manager/d3$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/d3$a;->PHONE_VERIFICATION:Lcom/hiya/stingray/manager/d3$a;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/hiya/stingray/manager/d3$a;

    const-string v4, "DISPLAY_OVER_APPS_PERMISSION"

    const/4 v5, 0x3

    const-string v6, "onboarding_display_over_apps_permission_title"

    const-string v7, "onboarding_display_over_apps_permission_body"

    const-string v8, "onboarding_button_allow"

    const-string v9, "onboarding_button_allowed"

    const-string v10, "oa"

    move-object v3, v1

    .line 4
    invoke-direct/range {v3 .. v10}, Lcom/hiya/stingray/manager/d3$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/d3$a;->DISPLAY_OVER_APPS_PERMISSION:Lcom/hiya/stingray/manager/d3$a;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/hiya/stingray/manager/d3$a;

    const-string v4, "BATTERY_OPTIMIZATION"

    const/4 v5, 0x4

    const-string v6, "onboarding_battery_optimization_title"

    const-string v7, "onboarding_battery_optimization_body"

    const-string v8, "onboarding_button_allow"

    const-string v9, "onboarding_button_allowed"

    const-string v10, "bo"

    move-object v3, v1

    .line 5
    invoke-direct/range {v3 .. v10}, Lcom/hiya/stingray/manager/d3$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/d3$a;->BATTERY_OPTIMIZATION:Lcom/hiya/stingray/manager/d3$a;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/hiya/stingray/manager/d3$a;

    const-string v4, "DEFAULT_CALLER_ID_APP"

    const/4 v5, 0x5

    const-string v6, "onboarding_default_caller_id_app_title"

    const-string v7, "onboarding_default_caller_id_app_body"

    const-string v8, "onboarding_button_set"

    const-string v9, "onboarding_button_set"

    const-string v10, "sa"

    move-object v3, v1

    .line 6
    invoke-direct/range {v3 .. v10}, Lcom/hiya/stingray/manager/d3$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/d3$a;->DEFAULT_CALLER_ID_APP:Lcom/hiya/stingray/manager/d3$a;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/hiya/stingray/manager/d3$a;

    const-string v4, "DEFAULT_PHONE_APP"

    const/4 v5, 0x6

    const-string v6, ""

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, "pa"

    move-object v3, v1

    .line 7
    invoke-direct/range {v3 .. v10}, Lcom/hiya/stingray/manager/d3$a;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lcom/hiya/stingray/manager/d3$a;->DEFAULT_PHONE_APP:Lcom/hiya/stingray/manager/d3$a;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/hiya/stingray/manager/d3$a;->$VALUES:[Lcom/hiya/stingray/manager/d3$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/hiya/stingray/manager/d3$a;->titleRC:Ljava/lang/String;

    iput-object p4, p0, Lcom/hiya/stingray/manager/d3$a;->bodyRC:Ljava/lang/String;

    iput-object p5, p0, Lcom/hiya/stingray/manager/d3$a;->buttonTitleRC:Ljava/lang/String;

    iput-object p6, p0, Lcom/hiya/stingray/manager/d3$a;->resolvedButtonTitleRC:Ljava/lang/String;

    iput-object p7, p0, Lcom/hiya/stingray/manager/d3$a;->userPropertyFlag:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    add-int/lit16 p1, p1, 0x3e8

    iput p1, p0, Lcom/hiya/stingray/manager/d3$a;->requestCode:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/hiya/stingray/manager/d3$a;
    .locals 1

    const-class v0, Lcom/hiya/stingray/manager/d3$a;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/hiya/stingray/manager/d3$a;

    return-object p0
.end method

.method public static values()[Lcom/hiya/stingray/manager/d3$a;
    .locals 1

    sget-object v0, Lcom/hiya/stingray/manager/d3$a;->$VALUES:[Lcom/hiya/stingray/manager/d3$a;

    invoke-virtual {v0}, [Lcom/hiya/stingray/manager/d3$a;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/hiya/stingray/manager/d3$a;

    return-object v0
.end method


# virtual methods
.method public final getBodyRC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3$a;->bodyRC:Ljava/lang/String;

    return-object v0
.end method

.method public final getButtonTitleRC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3$a;->buttonTitleRC:Ljava/lang/String;

    return-object v0
.end method

.method public final getRequestCode()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/hiya/stingray/manager/d3$a;->requestCode:I

    return v0
.end method

.method public final getResolvedButtonTitleRC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3$a;->resolvedButtonTitleRC:Ljava/lang/String;

    return-object v0
.end method

.method public final getTitleRC()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3$a;->titleRC:Ljava/lang/String;

    return-object v0
.end method

.method public final getUserPropertyFlag()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/manager/d3$a;->userPropertyFlag:Ljava/lang/String;

    return-object v0
.end method
