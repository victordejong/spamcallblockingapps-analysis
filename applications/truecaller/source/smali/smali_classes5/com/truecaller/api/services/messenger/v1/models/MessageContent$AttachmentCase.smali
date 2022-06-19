.class public final enum Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/models/MessageContent;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "AttachmentCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

.field public static final enum ANIMATION:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

.field public static final enum ATTACHMENT_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

.field public static final enum AUDIO:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

.field public static final enum FILE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

.field public static final enum IMAGE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

.field public static final enum LOCATION:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

.field public static final enum VCARD:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

.field public static final enum VIDEO:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 16

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->IMAGE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    const-string v4, "VCARD"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->VCARD:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    .line 3
    new-instance v4, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    const-string v7, "LOCATION"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->LOCATION:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    .line 4
    new-instance v7, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    const-string v9, "VIDEO"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->VIDEO:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    .line 5
    new-instance v9, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    const-string v11, "AUDIO"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->AUDIO:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    .line 6
    new-instance v11, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    const-string v13, "ANIMATION"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->ANIMATION:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    .line 7
    new-instance v13, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    const-string v15, "FILE"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v10}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->FILE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    .line 8
    new-instance v15, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    const-string v12, "ATTACHMENT_NOT_SET"

    invoke-direct {v15, v12, v14, v2}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->ATTACHMENT_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    new-array v10, v10, [Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    aput-object v0, v10, v2

    aput-object v1, v10, v5

    aput-object v4, v10, v3

    aput-object v7, v10, v6

    aput-object v9, v10, v8

    const/4 v0, 0x5

    aput-object v11, v10, v0

    const/4 v0, 0x6

    aput-object v13, v10, v0

    aput-object v15, v10, v14

    .line 9
    sput-object v10, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->FILE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->ANIMATION:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->AUDIO:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->VIDEO:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->LOCATION:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->VCARD:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->IMAGE:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object p0

    .line 8
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->ATTACHMENT_NOT_SET:Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/MessageContent$AttachmentCase;->value:I

    return v0
.end method
