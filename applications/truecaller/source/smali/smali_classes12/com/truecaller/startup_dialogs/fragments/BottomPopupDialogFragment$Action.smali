.class public final enum Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Action"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;",
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
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0011\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B/\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u000c\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u000e\u001a\u00020\u0007\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0011B!\u0008\u0012\u0012\u0006\u0010\u000c\u001a\u00020\u0007\u0012\u0006\u0010\u000e\u001a\u00020\u0007\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0010\u0010\u0012R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\u000c\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\t\u001a\u0004\u0008\r\u0010\u000bR\u0019\u0010\u000e\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\t\u001a\u0004\u0008\u000f\u0010\u000bj\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017\u00a8\u0006\u0018"
    }
    d2 = {
        "Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;",
        "",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "analyticsType",
        "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "getAnalyticsType",
        "()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
        "",
        "accept",
        "I",
        "getAccept",
        "()I",
        "icon",
        "getIcon",
        "text",
        "getText",
        "<init>",
        "(Ljava/lang/String;IIIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V",
        "(Ljava/lang/String;IIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V",
        "MISSED_CALL_NOTIFICATION",
        "REQUEST_LOCATION_PERMISSION",
        "REQUEST_DRAW_PERMISSION",
        "SOFTWARE_UPDATE",
        "REQUEST_DO_NOT_DISTURB_ACCESS",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

.field public static final enum MISSED_CALL_NOTIFICATION:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

.field public static final enum REQUEST_DO_NOT_DISTURB_ACCESS:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

.field public static final enum REQUEST_DRAW_PERMISSION:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

.field public static final enum REQUEST_LOCATION_PERMISSION:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

.field public static final enum SOFTWARE_UPDATE:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;


# instance fields
.field private final accept:I

.field private final analyticsType:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

.field private final icon:I

.field private final text:I


# direct methods
.method public static constructor <clinit>()V
    .locals 15

    const/4 v0, 0x5

    new-array v0, v0, [Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    new-instance v7, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    .line 1
    sget-object v6, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->MissedCalls:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const-string v2, "MISSED_CALL_NOTIFICATION"

    const/4 v3, 0x0

    const v4, 0x7f08036b

    const v5, 0x7f120784

    move-object v1, v7

    .line 2
    invoke-direct/range {v1 .. v6}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;-><init>(Ljava/lang/String;IIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V

    sput-object v7, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->MISSED_CALL_NOTIFICATION:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    .line 3
    sget-object v14, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->AccessLocation:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const-string v9, "REQUEST_LOCATION_PERMISSION"

    const/4 v10, 0x1

    const v11, 0x7f080528

    const v12, 0x7f12043d

    const v13, 0x7f120456

    move-object v8, v1

    .line 4
    invoke-direct/range {v8 .. v14}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;-><init>(Ljava/lang/String;IIIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V

    sput-object v1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->REQUEST_LOCATION_PERMISSION:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    .line 5
    sget-object v9, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->DrawOverlay:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const-string v4, "REQUEST_DRAW_PERMISSION"

    const/4 v5, 0x2

    const v6, 0x7f080459

    const v7, 0x7f12043c

    const v8, 0x7f120456

    move-object v3, v1

    .line 6
    invoke-direct/range {v3 .. v9}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;-><init>(Ljava/lang/String;IIIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V

    sput-object v1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->REQUEST_DRAW_PERMISSION:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    .line 7
    sget-object v9, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->SoftwareUpdate:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const-string v4, "SOFTWARE_UPDATE"

    const/4 v5, 0x3

    const v6, 0x7f080818

    const v7, 0x7f120185

    const v8, 0x7f120bda

    move-object v3, v1

    .line 8
    invoke-direct/range {v3 .. v9}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;-><init>(Ljava/lang/String;IIIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V

    sput-object v1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->SOFTWARE_UPDATE:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    .line 9
    sget-object v9, Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;->RingSilent:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    const-string v4, "REQUEST_DO_NOT_DISTURB_ACCESS"

    const/4 v5, 0x4

    const v6, 0x7f080605

    const v7, 0x7f12043b

    const v8, 0x7f120456

    move-object v3, v1

    .line 10
    invoke-direct/range {v3 .. v9}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;-><init>(Ljava/lang/String;IIIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V

    sput-object v1, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->REQUEST_DO_NOT_DISTURB_ACCESS:Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->$VALUES:[Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III",
            "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->icon:I

    iput p4, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->text:I

    iput p5, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->accept:I

    iput-object p6, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->analyticsType:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II",
            "Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;",
            ")V"
        }
    .end annotation

    const/4 v5, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    .line 2
    invoke-direct/range {v0 .. v6}, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;-><init>(Ljava/lang/String;IIIILcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;
    .locals 1

    const-class v0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;
    .locals 1

    sget-object v0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->$VALUES:[Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    invoke-virtual {v0}, [Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;

    return-object v0
.end method


# virtual methods
.method public final getAccept()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->accept:I

    return v0
.end method

.method public final getAnalyticsType()Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->analyticsType:Lcom/truecaller/startup_dialogs/analytics/StartupDialogEvent$Type;

    return-object v0
.end method

.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->icon:I

    return v0
.end method

.method public final getText()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/startup_dialogs/fragments/BottomPopupDialogFragment$Action;->text:I

    return v0
.end method
