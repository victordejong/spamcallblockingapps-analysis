.class public final enum Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;",
        ">;",
        "Landroid/os/Parcelable;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0012\u0008\u0087\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u00012\u00020\u0002B\u0011\u0008\u0002\u0012\u0006\u0010\r\u001a\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0010\u0010\u0004\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\u0004\u0010\u0005J \u0010\n\u001a\u00020\t2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\u0008\u001a\u00020\u0003H\u00d6\u0001\u00a2\u0006\u0004\u0008\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001d\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;",
        "",
        "Landroid/os/Parcelable;",
        "",
        "describeContents",
        "()I",
        "Landroid/os/Parcel;",
        "parcel",
        "flags",
        "Ls1/s;",
        "writeToParcel",
        "(Landroid/os/Parcel;I)V",
        "",
        "value",
        "Ljava/lang/String;",
        "getValue",
        "()Ljava/lang/String;",
        "<init>",
        "(Ljava/lang/String;ILjava/lang/String;)V",
        "INCALLUI",
        "POPUP_CALLER_ID",
        "FACS",
        "PACS",
        "ExpandingPACS",
        "PACS_LANDSCAPE",
        "FACS_LANDSCAPE",
        "FACS_LANDSCAPE_AVATAR",
        "INCALLUI_LANDSCAPE",
        "INCALL_NOTIF_SERVICE",
        "DEBUG_DIALOG",
        "video-caller-id_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;",
            ">;"
        }
    .end annotation
.end field

.field public static final enum DEBUG_DIALOG:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum ExpandingPACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum FACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum FACS_LANDSCAPE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum FACS_LANDSCAPE_AVATAR:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum INCALLUI:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum INCALLUI_LANDSCAPE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum INCALL_NOTIF_SERVICE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum PACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum PACS_LANDSCAPE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

.field public static final enum POPUP_CALLER_ID:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;


# instance fields
.field private final value:Ljava/lang/String;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/16 v0, 0xb

    new-array v0, v0, [Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "INCALLUI"

    const/4 v3, 0x0

    const-string v4, "InCallUI"

    .line 1
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->INCALLUI:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "POPUP_CALLER_ID"

    const/4 v3, 0x1

    const-string v4, "PopUp"

    .line 2
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->POPUP_CALLER_ID:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "FACS"

    const/4 v3, 0x2

    .line 3
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->FACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "PACS"

    const/4 v3, 0x3

    .line 4
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->PACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "ExpandingPACS"

    const/4 v3, 0x4

    .line 5
    invoke-direct {v1, v2, v3, v2}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->ExpandingPACS:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "PACS_LANDSCAPE"

    const/4 v3, 0x5

    const-string v4, "PACS_Landscape"

    .line 6
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->PACS_LANDSCAPE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "FACS_LANDSCAPE"

    const/4 v3, 0x6

    const-string v4, "FACS_Landscape"

    .line 7
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->FACS_LANDSCAPE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "FACS_LANDSCAPE_AVATAR"

    const/4 v3, 0x7

    const-string v4, "FACS_Landscape_Avatar"

    .line 8
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->FACS_LANDSCAPE_AVATAR:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "INCALLUI_LANDSCAPE"

    const/16 v3, 0x8

    const-string v4, "INCALLUI_Landscape"

    .line 9
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->INCALLUI_LANDSCAPE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "INCALL_NOTIF_SERVICE"

    const/16 v3, 0x9

    const-string v4, "InCallNotifService"

    .line 10
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->INCALL_NOTIF_SERVICE:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    const-string v2, "DEBUG_DIALOG"

    const/16 v3, 0xa

    const-string v4, "DebugDialog"

    .line 11
    invoke-direct {v1, v2, v3, v4}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->DEBUG_DIALOG:Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->$VALUES:[Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    new-instance v0, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext$a;

    invoke-direct {v0}, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext$a;-><init>()V

    sput-object v0, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->value:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;
    .locals 1

    const-class v0, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;
    .locals 1

    sget-object v0, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->$VALUES:[Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    invoke-virtual {v0}, [Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;

    return-object v0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public final getValue()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/videocallerid/utils/analytics/VideoPlayerContext;->value:Ljava/lang/String;

    return-object v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 0

    const-string p2, "parcel"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return-void
.end method
