.class final enum Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzendesk/support/guide/HelpCenterActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x401a
    name = "SnackbarStatus"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

.field public static final enum CONTENT_ERROR:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

.field public static final enum NONE:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

.field public static final enum NO_CONNECTION:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .line 1
    new-instance v0, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    const-string v1, "NO_CONNECTION"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->NO_CONNECTION:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    new-instance v1, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    const-string v3, "NONE"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4}, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->NONE:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    new-instance v3, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    const-string v5, "CONTENT_ERROR"

    const/4 v6, 0x2

    invoke-direct {v3, v5, v6}, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;-><init>(Ljava/lang/String;I)V

    sput-object v3, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->CONTENT_ERROR:Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    const/4 v5, 0x3

    new-array v5, v5, [Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    aput-object v0, v5, v2

    aput-object v1, v5, v4

    aput-object v3, v5, v6

    .line 2
    sput-object v5, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->$VALUES:[Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

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

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    return-object p0
.end method

.method public static values()[Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->$VALUES:[Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    invoke-virtual {v0}, [Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/guide/HelpCenterActivity$SnackbarStatus;

    return-object v0
.end method
