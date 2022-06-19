.class public final enum Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachmentCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

.field public static final enum ATTACHMENT_NOT_SET:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

.field public static final enum FILE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

.field public static final enum IMAGE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

.field public static final enum VIDEO:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->IMAGE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    const-string v4, "VIDEO"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->VIDEO:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    .line 3
    new-instance v4, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    const-string v6, "FILE"

    const/16 v7, 0x8

    invoke-direct {v4, v6, v3, v7}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->FILE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    .line 4
    new-instance v6, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    const-string v7, "ATTACHMENT_NOT_SET"

    const/4 v8, 0x3

    invoke-direct {v6, v7, v8, v2}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->ATTACHMENT_NOT_SET:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    const/4 v7, 0x4

    new-array v7, v7, [Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    aput-object v0, v7, v2

    aput-object v1, v7, v5

    aput-object v4, v7, v3

    aput-object v6, v7, v8

    .line 5
    sput-object v7, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->$VALUES:[Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;
    .locals 1

    if-eqz p0, :cond_3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_2

    const/4 v0, 0x5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x8

    if-eq p0, v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->FILE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    return-object p0

    .line 2
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->VIDEO:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    return-object p0

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->IMAGE:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    return-object p0

    .line 4
    :cond_3
    sget-object p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->ATTACHMENT_NOT_SET:Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    return-object p0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->forNumber(I)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->$VALUES:[Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/business/BusinessInputMessageContent$AttachmentCase;->value:I

    return v0
.end method
