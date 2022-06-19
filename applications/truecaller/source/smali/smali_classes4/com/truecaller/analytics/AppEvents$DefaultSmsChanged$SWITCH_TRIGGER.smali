.class public final enum Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

.field public static final enum NONE:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

.field public static final enum PERSONAL_SMS:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

.field public static final enum PERSONAL_SPAM:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

.field public static final enum UNKNOWN_SMS:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

.field public static final enum UNKNOWN_SPAM:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;


# direct methods
.method public static constructor <clinit>()V
    .locals 11

    .line 1
    new-instance v0, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    const-string v1, "NONE"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->NONE:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    new-instance v1, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    const-string v3, "PERSONAL_SMS"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->PERSONAL_SMS:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    new-instance v3, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    const-string v5, "PERSONAL_SPAM"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->PERSONAL_SPAM:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    new-instance v5, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    const-string v7, "UNKNOWN_SMS"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->UNKNOWN_SMS:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    new-instance v7, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    const-string v9, "UNKNOWN_SPAM"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->UNKNOWN_SPAM:Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    const/4 v9, 0x5

    new-array v9, v9, [Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    aput-object v0, v9, v2

    aput-object v1, v9, v4

    aput-object v3, v9, v6

    aput-object v5, v9, v8

    aput-object v7, v9, v10

    .line 2
    sput-object v9, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->$VALUES:[Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->$VALUES:[Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    invoke-virtual {v0}, [Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/analytics/AppEvents$DefaultSmsChanged$SWITCH_TRIGGER;

    return-object v0
.end method
