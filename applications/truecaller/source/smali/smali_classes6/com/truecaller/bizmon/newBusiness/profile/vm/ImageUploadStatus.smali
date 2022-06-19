.class public final enum Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;",
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
        "\u0000\u000c\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0008\u0007\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u0002\u0010\u0003j\u0002\u0008\u0004j\u0002\u0008\u0005j\u0002\u0008\u0006j\u0002\u0008\u0007\u00a8\u0006\u0008"
    }
    d2 = {
        "Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;",
        "",
        "<init>",
        "(Ljava/lang/String;I)V",
        "PENDING",
        "IN_PROGRESS",
        "UPLOADED",
        "FAILED",
        "bizmon_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

.field public static final enum FAILED:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

.field public static final enum IN_PROGRESS:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

.field public static final enum PENDING:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

.field public static final enum UPLOADED:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    new-instance v1, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    const-string v2, "PENDING"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->PENDING:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    const-string v2, "IN_PROGRESS"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->IN_PROGRESS:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    const-string v2, "UPLOADED"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->UPLOADED:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    aput-object v1, v0, v3

    new-instance v1, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    const-string v2, "FAILED"

    const/4 v3, 0x3

    invoke-direct {v1, v2, v3}, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;-><init>(Ljava/lang/String;I)V

    sput-object v1, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->FAILED:Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    aput-object v1, v0, v3

    sput-object v0, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->$VALUES:[Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

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

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;
    .locals 1

    const-class v0, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;
    .locals 1

    sget-object v0, Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->$VALUES:[Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    invoke-virtual {v0}, [Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/bizmon/newBusiness/profile/vm/ImageUploadStatus;

    return-object v0
.end method
