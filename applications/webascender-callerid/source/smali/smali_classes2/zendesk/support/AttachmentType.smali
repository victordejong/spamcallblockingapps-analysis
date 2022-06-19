.class public final enum Lzendesk/support/AttachmentType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lzendesk/support/AttachmentType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lzendesk/support/AttachmentType;

.field public static final enum BLOCK:Lzendesk/support/AttachmentType;

.field public static final enum INLINE:Lzendesk/support/AttachmentType;


# instance fields
.field private attachmentType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lzendesk/support/AttachmentType;

    const-string v1, "INLINE"

    const/4 v2, 0x0

    const-string v3, "inline"

    invoke-direct {v0, v1, v2, v3}, Lzendesk/support/AttachmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v0, Lzendesk/support/AttachmentType;->INLINE:Lzendesk/support/AttachmentType;

    .line 2
    new-instance v1, Lzendesk/support/AttachmentType;

    const-string v3, "BLOCK"

    const/4 v4, 0x1

    const-string v5, "block"

    invoke-direct {v1, v3, v4, v5}, Lzendesk/support/AttachmentType;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    sput-object v1, Lzendesk/support/AttachmentType;->BLOCK:Lzendesk/support/AttachmentType;

    const/4 v3, 0x2

    new-array v3, v3, [Lzendesk/support/AttachmentType;

    aput-object v0, v3, v2

    aput-object v1, v3, v4

    .line 3
    sput-object v3, Lzendesk/support/AttachmentType;->$VALUES:[Lzendesk/support/AttachmentType;

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

    .line 2
    iput-object p3, p0, Lzendesk/support/AttachmentType;->attachmentType:Ljava/lang/String;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lzendesk/support/AttachmentType;
    .locals 1

    .line 1
    const-class v0, Lzendesk/support/AttachmentType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lzendesk/support/AttachmentType;

    return-object p0
.end method

.method public static values()[Lzendesk/support/AttachmentType;
    .locals 1

    .line 1
    sget-object v0, Lzendesk/support/AttachmentType;->$VALUES:[Lzendesk/support/AttachmentType;

    invoke-virtual {v0}, [Lzendesk/support/AttachmentType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lzendesk/support/AttachmentType;

    return-object v0
.end method


# virtual methods
.method public getAttachmentType()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lzendesk/support/AttachmentType;->attachmentType:Ljava/lang/String;

    return-object v0
.end method
