.class public final enum Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;",
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
        "\u0000.\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0010\u0008\u0086\u0001\u0018\u0000 \u00172\u0008\u0012\u0004\u0012\u00020\u00000\u0001:\u0001\u0018B)\u0008\u0002\u0012\u0008\u0008\u0002\u0010\u0008\u001a\u00020\u0007\u0012\n\u0008\u0003\u0010\u000c\u001a\u0004\u0018\u00010\u000b\u0012\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0010\u00a2\u0006\u0004\u0008\u0015\u0010\u0016J\u0017\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\u0008\u0010\nR\u001b\u0010\u000c\u001a\u0004\u0018\u00010\u000b8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\r\u001a\u0004\u0008\u000e\u0010\u000fR\u0019\u0010\u0011\u001a\u00020\u00108\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;",
        "",
        "Le/a/p5/c0;",
        "resourceProvider",
        "",
        "getName",
        "(Le/a/p5/c0;)Ljava/lang/String;",
        "",
        "isVideo",
        "Z",
        "()Z",
        "",
        "nameRes",
        "Ljava/lang/Integer;",
        "getNameRes",
        "()Ljava/lang/Integer;",
        "Lcom/truecaller/calling/ActionType;",
        "primaryAction",
        "Lcom/truecaller/calling/ActionType;",
        "getPrimaryAction",
        "()Lcom/truecaller/calling/ActionType;",
        "<init>",
        "(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;)V",
        "Companion",
        "a",
        "FLASH_MESSAGE",
        "WHATSAPP_CALL",
        "WHATSAPP_VIDEO_CALL",
        "CELLULAR_CALL",
        "CELLULAR_VIDEO_CALL",
        "VOIP_CALL",
        "VOIP_GROUP_CALL",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

.field public static final enum CELLULAR_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

.field public static final enum CELLULAR_VIDEO_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

.field public static final Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

.field public static final enum FLASH_MESSAGE:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

.field public static final enum VOIP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

.field public static final enum VOIP_GROUP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

.field public static final enum WHATSAPP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

.field public static final enum WHATSAPP_VIDEO_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;


# instance fields
.field private final isVideo:Z

.field private final nameRes:Ljava/lang/Integer;

.field private final primaryAction:Lcom/truecaller/calling/ActionType;


# direct methods
.method public static constructor <clinit>()V
    .locals 18

    const/4 v0, 0x7

    new-array v0, v0, [Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    new-instance v9, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const v1, 0x7f120b2e

    .line 1
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    const-string v2, "FLASH_MESSAGE"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x5

    const/4 v8, 0x0

    move-object v1, v9

    invoke-direct/range {v1 .. v8}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;-><init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;ILs1/z/c/f;)V

    sput-object v9, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->FLASH_MESSAGE:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const/4 v1, 0x0

    aput-object v9, v0, v1

    new-instance v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const v2, 0x7f1210ee

    .line 2
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    sget-object v15, Lcom/truecaller/calling/ActionType;->WHATSAPP_CALL:Lcom/truecaller/calling/ActionType;

    const-string v11, "WHATSAPP_CALL"

    const/4 v12, 0x1

    const/4 v13, 0x0

    const/16 v16, 0x1

    const/16 v17, 0x0

    move-object v10, v1

    move-object v14, v7

    invoke-direct/range {v10 .. v17}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;-><init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;ILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->WHATSAPP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    .line 3
    sget-object v8, Lcom/truecaller/calling/ActionType;->WHATSAPP_VIDEO_CALL:Lcom/truecaller/calling/ActionType;

    const-string v4, "WHATSAPP_VIDEO_CALL"

    const/4 v5, 0x2

    const/4 v6, 0x1

    move-object v3, v1

    invoke-direct/range {v3 .. v8}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;-><init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;)V

    sput-object v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->WHATSAPP_VIDEO_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    .line 4
    sget-object v8, Lcom/truecaller/calling/ActionType;->CELLULAR_CALL:Lcom/truecaller/calling/ActionType;

    const-string v4, "CELLULAR_CALL"

    const/4 v5, 0x3

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v9, 0x3

    const/4 v10, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;-><init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;ILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->CELLULAR_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    .line 5
    sget-object v8, Lcom/truecaller/calling/ActionType;->CELLULAR_VIDEO_CALL:Lcom/truecaller/calling/ActionType;

    const-string v4, "CELLULAR_VIDEO_CALL"

    const/4 v5, 0x4

    const/4 v6, 0x1

    const/4 v9, 0x2

    move-object v3, v1

    invoke-direct/range {v3 .. v10}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;-><init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;ILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->CELLULAR_VIDEO_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const v2, 0x7f1210ca

    .line 6
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    sget-object v11, Lcom/truecaller/calling/ActionType;->VOIP_CALL:Lcom/truecaller/calling/ActionType;

    const-string v4, "VOIP_CALL"

    const/4 v5, 0x5

    const/4 v6, 0x0

    const/4 v9, 0x1

    move-object v3, v1

    move-object v7, v2

    move-object v8, v11

    invoke-direct/range {v3 .. v10}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;-><init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;ILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->VOIP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const/4 v3, 0x5

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const-string v4, "VOIP_GROUP_CALL"

    const/4 v5, 0x6

    move-object v3, v1

    .line 7
    invoke-direct/range {v3 .. v10}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;-><init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;ILs1/z/c/f;)V

    sput-object v1, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->VOIP_GROUP_CALL:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->$VALUES:[Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    new-instance v0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/calling/ActionType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-boolean p3, p0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->isVideo:Z

    iput-object p4, p0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->nameRes:Ljava/lang/Integer;

    iput-object p5, p0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->primaryAction:Lcom/truecaller/calling/ActionType;

    return-void
.end method

.method public synthetic constructor <init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;ILs1/z/c/f;)V
    .locals 6

    and-int/lit8 p7, p6, 0x1

    if-eqz p7, :cond_0

    const/4 p3, 0x0

    :cond_0
    move v3, p3

    and-int/lit8 p3, p6, 0x2

    if-eqz p3, :cond_1

    const/4 p4, 0x0

    :cond_1
    move-object v4, p4

    and-int/lit8 p3, p6, 0x4

    if-eqz p3, :cond_2

    .line 2
    sget-object p5, Lcom/truecaller/calling/ActionType;->CELLULAR_CALL:Lcom/truecaller/calling/ActionType;

    :cond_2
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;-><init>(Ljava/lang/String;IZLjava/lang/Integer;Lcom/truecaller/calling/ActionType;)V

    return-void
.end method

.method public static final resolve(Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;
    .locals 1

    sget-object v0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->Companion:Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;

    invoke-virtual {v0, p0, p1}, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType$a;->b(Lcom/truecaller/data/entity/HistoryEvent;Le/a/o5/s1;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;
    .locals 1

    const-class v0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;
    .locals 1

    sget-object v0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->$VALUES:[Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    invoke-virtual {v0}, [Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;

    return-object v0
.end method


# virtual methods
.method public final getName(Le/a/p5/c0;)Ljava/lang/String;
    .locals 2

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->nameRes:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-interface {p1, v0, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public final getNameRes()Ljava/lang/Integer;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->nameRes:Ljava/lang/Integer;

    return-object v0
.end method

.method public final getPrimaryAction()Lcom/truecaller/calling/ActionType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->primaryAction:Lcom/truecaller/calling/ActionType;

    return-object v0
.end method

.method public final isVideo()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/calling/dialer/call_log/data/CallLogItemType;->isVideo:Z

    return v0
.end method
