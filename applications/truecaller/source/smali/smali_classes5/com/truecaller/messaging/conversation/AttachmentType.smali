.class public final enum Lcom/truecaller/messaging/conversation/AttachmentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/conversation/AttachmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/conversation/AttachmentType;

.field public static final enum AUDIO:Lcom/truecaller/messaging/conversation/AttachmentType;

.field public static final enum DOCUMENT:Lcom/truecaller/messaging/conversation/AttachmentType;

.field public static final enum GIF:Lcom/truecaller/messaging/conversation/AttachmentType;

.field public static final enum IMAGE:Lcom/truecaller/messaging/conversation/AttachmentType;

.field public static final enum LOCATION:Lcom/truecaller/messaging/conversation/AttachmentType;

.field public static final enum PENDING_MMS:Lcom/truecaller/messaging/conversation/AttachmentType;

.field public static final enum UNKNOWN:Lcom/truecaller/messaging/conversation/AttachmentType;

.field public static final enum VCARD:Lcom/truecaller/messaging/conversation/AttachmentType;

.field public static final enum VIDEO:Lcom/truecaller/messaging/conversation/AttachmentType;


# instance fields
.field public final icon:I

.field public final supported:Z

.field public final title:I


# direct methods
.method public static constructor <clinit>()V
    .locals 20

    .line 1
    new-instance v6, Lcom/truecaller/messaging/conversation/AttachmentType;

    const-string v1, "IMAGE"

    const/4 v2, 0x0

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x0

    move-object v0, v6

    invoke-direct/range {v0 .. v5}, Lcom/truecaller/messaging/conversation/AttachmentType;-><init>(Ljava/lang/String;IZII)V

    sput-object v6, Lcom/truecaller/messaging/conversation/AttachmentType;->IMAGE:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 2
    new-instance v0, Lcom/truecaller/messaging/conversation/AttachmentType;

    const-string v8, "GIF"

    const/4 v9, 0x1

    const/4 v10, 0x1

    const/4 v11, 0x0

    const/4 v12, 0x0

    move-object v7, v0

    invoke-direct/range {v7 .. v12}, Lcom/truecaller/messaging/conversation/AttachmentType;-><init>(Ljava/lang/String;IZII)V

    sput-object v0, Lcom/truecaller/messaging/conversation/AttachmentType;->GIF:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 3
    new-instance v1, Lcom/truecaller/messaging/conversation/AttachmentType;

    const-string v14, "AUDIO"

    const/4 v15, 0x2

    const/16 v16, 0x1

    const v17, 0x7f080379

    const v18, 0x7f1201a2

    move-object v13, v1

    invoke-direct/range {v13 .. v18}, Lcom/truecaller/messaging/conversation/AttachmentType;-><init>(Ljava/lang/String;IZII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/AttachmentType;->AUDIO:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 4
    new-instance v2, Lcom/truecaller/messaging/conversation/AttachmentType;

    const-string v8, "VIDEO"

    const/4 v9, 0x3

    const v11, 0x7f080381

    const v12, 0x7f1201a9

    move-object v7, v2

    invoke-direct/range {v7 .. v12}, Lcom/truecaller/messaging/conversation/AttachmentType;-><init>(Ljava/lang/String;IZII)V

    sput-object v2, Lcom/truecaller/messaging/conversation/AttachmentType;->VIDEO:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 5
    new-instance v3, Lcom/truecaller/messaging/conversation/AttachmentType;

    const-string v14, "VCARD"

    const/4 v15, 0x4

    const v17, 0x7f08037f

    const v18, 0x7f1201a3

    move-object v13, v3

    invoke-direct/range {v13 .. v18}, Lcom/truecaller/messaging/conversation/AttachmentType;-><init>(Ljava/lang/String;IZII)V

    sput-object v3, Lcom/truecaller/messaging/conversation/AttachmentType;->VCARD:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 6
    new-instance v4, Lcom/truecaller/messaging/conversation/AttachmentType;

    const-string v8, "PENDING_MMS"

    const/4 v9, 0x5

    const v11, 0x7f08037e

    const v12, 0x7f120257

    move-object v7, v4

    invoke-direct/range {v7 .. v12}, Lcom/truecaller/messaging/conversation/AttachmentType;-><init>(Ljava/lang/String;IZII)V

    sput-object v4, Lcom/truecaller/messaging/conversation/AttachmentType;->PENDING_MMS:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 7
    new-instance v5, Lcom/truecaller/messaging/conversation/AttachmentType;

    const-string v14, "DOCUMENT"

    const/4 v15, 0x6

    const v17, 0x7f08037a

    const v18, 0x7f1201a4

    move-object v13, v5

    invoke-direct/range {v13 .. v18}, Lcom/truecaller/messaging/conversation/AttachmentType;-><init>(Ljava/lang/String;IZII)V

    sput-object v5, Lcom/truecaller/messaging/conversation/AttachmentType;->DOCUMENT:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 8
    new-instance v13, Lcom/truecaller/messaging/conversation/AttachmentType;

    const-string v8, "LOCATION"

    const/4 v9, 0x7

    const v11, 0x7f080529

    const v12, 0x7f1201a6

    move-object v7, v13

    invoke-direct/range {v7 .. v12}, Lcom/truecaller/messaging/conversation/AttachmentType;-><init>(Ljava/lang/String;IZII)V

    sput-object v13, Lcom/truecaller/messaging/conversation/AttachmentType;->LOCATION:Lcom/truecaller/messaging/conversation/AttachmentType;

    .line 9
    new-instance v7, Lcom/truecaller/messaging/conversation/AttachmentType;

    const-string v15, "UNKNOWN"

    const/16 v16, 0x8

    const/16 v17, 0x0

    const v18, 0x7f08037e

    const v19, 0x7f1201a8

    move-object v14, v7

    invoke-direct/range {v14 .. v19}, Lcom/truecaller/messaging/conversation/AttachmentType;-><init>(Ljava/lang/String;IZII)V

    sput-object v7, Lcom/truecaller/messaging/conversation/AttachmentType;->UNKNOWN:Lcom/truecaller/messaging/conversation/AttachmentType;

    const/16 v8, 0x9

    new-array v8, v8, [Lcom/truecaller/messaging/conversation/AttachmentType;

    const/4 v9, 0x0

    aput-object v6, v8, v9

    const/4 v6, 0x1

    aput-object v0, v8, v6

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v2, v8, v0

    const/4 v0, 0x4

    aput-object v3, v8, v0

    const/4 v0, 0x5

    aput-object v4, v8, v0

    const/4 v0, 0x6

    aput-object v5, v8, v0

    const/4 v0, 0x7

    aput-object v13, v8, v0

    const/16 v0, 0x8

    aput-object v7, v8, v0

    .line 10
    sput-object v8, Lcom/truecaller/messaging/conversation/AttachmentType;->$VALUES:[Lcom/truecaller/messaging/conversation/AttachmentType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ZII)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/truecaller/messaging/conversation/AttachmentType;->supported:Z

    .line 3
    iput p4, p0, Lcom/truecaller/messaging/conversation/AttachmentType;->icon:I

    .line 4
    iput p5, p0, Lcom/truecaller/messaging/conversation/AttachmentType;->title:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/AttachmentType;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/messaging/conversation/AttachmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/conversation/AttachmentType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/conversation/AttachmentType;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/messaging/conversation/AttachmentType;->$VALUES:[Lcom/truecaller/messaging/conversation/AttachmentType;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/conversation/AttachmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/AttachmentType;

    return-object v0
.end method
