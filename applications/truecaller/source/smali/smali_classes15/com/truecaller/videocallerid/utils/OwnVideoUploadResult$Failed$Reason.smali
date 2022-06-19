.class public final enum Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Reason"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0006\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "READ_FILE_FAILED",
        "FETCH_UPLOAD_LINKS_FAILED",
        "UPLOAD_FAILED",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

.field public static final enum FETCH_UPLOAD_LINKS_FAILED:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

.field public static final enum READ_FILE_FAILED:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

.field public static final enum UPLOAD_FAILED:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    new-instance v1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    const-string v2, "READ_FILE_FAILED"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;->READ_FILE_FAILED:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    const-string v2, "FETCH_UPLOAD_LINKS_FAILED"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;->FETCH_UPLOAD_LINKS_FAILED:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    const-string v2, "UPLOAD_FAILED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;->UPLOAD_FAILED:Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;->$VALUES:[Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;
    .locals 1

    const-class v0, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;
    .locals 1

    sget-object v0, Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;->$VALUES:[Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    invoke-virtual {v0}, [Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/videocallerid/utils/OwnVideoUploadResult$Failed$Reason;

    return-object v0
.end method
