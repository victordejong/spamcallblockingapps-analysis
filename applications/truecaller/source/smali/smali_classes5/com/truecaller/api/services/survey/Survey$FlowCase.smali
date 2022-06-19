.class public final enum Lcom/truecaller/api/services/survey/Survey$FlowCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/survey/Survey;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FlowCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/survey/Survey$FlowCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/survey/Survey$FlowCase;

.field public static final enum ACS_BIZMON:Lcom/truecaller/api/services/survey/Survey$FlowCase;

.field public static final enum ACS_GENERIC:Lcom/truecaller/api/services/survey/Survey$FlowCase;

.field public static final enum ACS_NAME_SUGGESTION:Lcom/truecaller/api/services/survey/Survey$FlowCase;

.field public static final enum FLOW_NOT_SET:Lcom/truecaller/api/services/survey/Survey$FlowCase;

.field public static final enum REPORT_PROFILE:Lcom/truecaller/api/services/survey/Survey$FlowCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 12

    .line 1
    new-instance v0, Lcom/truecaller/api/services/survey/Survey$FlowCase;

    const-string v1, "ACS_GENERIC"

    const/4 v2, 0x0

    const/4 v3, 0x3

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/survey/Survey$FlowCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/survey/Survey$FlowCase;->ACS_GENERIC:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/survey/Survey$FlowCase;

    const-string v4, "ACS_NAME_SUGGESTION"

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-direct {v1, v4, v5, v6}, Lcom/truecaller/api/services/survey/Survey$FlowCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/survey/Survey$FlowCase;->ACS_NAME_SUGGESTION:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    .line 3
    new-instance v4, Lcom/truecaller/api/services/survey/Survey$FlowCase;

    const-string v7, "REPORT_PROFILE"

    const/4 v8, 0x2

    const/4 v9, 0x5

    invoke-direct {v4, v7, v8, v9}, Lcom/truecaller/api/services/survey/Survey$FlowCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/api/services/survey/Survey$FlowCase;->REPORT_PROFILE:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    .line 4
    new-instance v7, Lcom/truecaller/api/services/survey/Survey$FlowCase;

    const-string v10, "ACS_BIZMON"

    const/4 v11, 0x6

    invoke-direct {v7, v10, v3, v11}, Lcom/truecaller/api/services/survey/Survey$FlowCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/survey/Survey$FlowCase;->ACS_BIZMON:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    .line 5
    new-instance v10, Lcom/truecaller/api/services/survey/Survey$FlowCase;

    const-string v11, "FLOW_NOT_SET"

    invoke-direct {v10, v11, v6, v2}, Lcom/truecaller/api/services/survey/Survey$FlowCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/truecaller/api/services/survey/Survey$FlowCase;->FLOW_NOT_SET:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    new-array v9, v9, [Lcom/truecaller/api/services/survey/Survey$FlowCase;

    aput-object v0, v9, v2

    aput-object v1, v9, v5

    aput-object v4, v9, v8

    aput-object v7, v9, v3

    aput-object v10, v9, v6

    .line 6
    sput-object v9, Lcom/truecaller/api/services/survey/Survey$FlowCase;->$VALUES:[Lcom/truecaller/api/services/survey/Survey$FlowCase;

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
    iput p3, p0, Lcom/truecaller/api/services/survey/Survey$FlowCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/survey/Survey$FlowCase;
    .locals 1

    if-eqz p0, :cond_4

    const/4 v0, 0x3

    if-eq p0, v0, :cond_3

    const/4 v0, 0x4

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/4 v0, 0x6

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/survey/Survey$FlowCase;->ACS_BIZMON:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/survey/Survey$FlowCase;->REPORT_PROFILE:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/survey/Survey$FlowCase;->ACS_NAME_SUGGESTION:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/truecaller/api/services/survey/Survey$FlowCase;->ACS_GENERIC:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    return-object p0

    .line 5
    :cond_4
    sget-object p0, Lcom/truecaller/api/services/survey/Survey$FlowCase;->FLOW_NOT_SET:Lcom/truecaller/api/services/survey/Survey$FlowCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/survey/Survey$FlowCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/survey/Survey$FlowCase;->forNumber(I)Lcom/truecaller/api/services/survey/Survey$FlowCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/survey/Survey$FlowCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/survey/Survey$FlowCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Survey$FlowCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/survey/Survey$FlowCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Survey$FlowCase;->$VALUES:[Lcom/truecaller/api/services/survey/Survey$FlowCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/survey/Survey$FlowCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/survey/Survey$FlowCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Survey$FlowCase;->value:I

    return v0
.end method
