.class public final enum Lcom/truecaller/ui/SingleActivity$FragmentSingle;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/SingleActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FragmentSingle"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ui/SingleActivity$FragmentSingle;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ui/SingleActivity$FragmentSingle;

.field public static final enum DETAILS_CALL_LOG:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

.field public static final enum FEEDBACK_FORM:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

.field public static final enum NOTIFICATIONS:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

.field public static final enum NOTIFICATION_MESSAGES:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

.field public static final enum SPEED_DIAL:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

.field public static final enum THEME_SELECTOR:Lcom/truecaller/ui/SingleActivity$FragmentSingle;


# direct methods
.method public static constructor <clinit>()V
    .locals 13

    .line 1
    new-instance v0, Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    const-string v1, "NOTIFICATION_MESSAGES"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lcom/truecaller/ui/SingleActivity$FragmentSingle;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->NOTIFICATION_MESSAGES:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    new-instance v1, Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    const-string v3, "FEEDBACK_FORM"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lcom/truecaller/ui/SingleActivity$FragmentSingle;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->FEEDBACK_FORM:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    new-instance v3, Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    const-string v5, "NOTIFICATIONS"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lcom/truecaller/ui/SingleActivity$FragmentSingle;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->NOTIFICATIONS:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    new-instance v5, Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    const-string v7, "DETAILS_CALL_LOG"

    const/4 v8, 0x3

    invoke-direct {v5, v7, v8}, Lcom/truecaller/ui/SingleActivity$FragmentSingle;-><init>(Ljava/lang/String;I)V

    sput-object v5, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->DETAILS_CALL_LOG:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    new-instance v7, Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    const-string v9, "SPEED_DIAL"

    const/4 v10, 0x4

    invoke-direct {v7, v9, v10}, Lcom/truecaller/ui/SingleActivity$FragmentSingle;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->SPEED_DIAL:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    new-instance v9, Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    const-string v11, "THEME_SELECTOR"

    const/4 v12, 0x5

    invoke-direct {v9, v11, v12}, Lcom/truecaller/ui/SingleActivity$FragmentSingle;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->THEME_SELECTOR:Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    const/4 v11, 0x6

    new-array v11, v11, [Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    aput-object v0, v11, v2

    aput-object v1, v11, v4

    aput-object v3, v11, v6

    aput-object v5, v11, v8

    aput-object v7, v11, v10

    aput-object v9, v11, v12

    .line 2
    sput-object v11, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->$VALUES:[Lcom/truecaller/ui/SingleActivity$FragmentSingle;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ui/SingleActivity$FragmentSingle;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ui/SingleActivity$FragmentSingle;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/SingleActivity$FragmentSingle;->$VALUES:[Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    invoke-virtual {v0}, [Lcom/truecaller/ui/SingleActivity$FragmentSingle;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ui/SingleActivity$FragmentSingle;

    return-object v0
.end method
