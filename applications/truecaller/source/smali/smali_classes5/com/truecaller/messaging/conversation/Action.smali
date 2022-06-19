.class public final enum Lcom/truecaller/messaging/conversation/Action;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/messaging/conversation/Action;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0010\u0008\n\u0002\u0008\u001e\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\'\u0008\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\t\u001a\u00020\u0002\u0012\u0008\u0008\u0001\u0010\u0007\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u000cR\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0007\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0007\u0010\u0004\u001a\u0004\u0008\u0008\u0010\u0006R\u0019\u0010\t\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\t\u0010\u0004\u001a\u0004\u0008\n\u0010\u0006j\u0002\u0008\rj\u0002\u0008\u000ej\u0002\u0008\u000fj\u0002\u0008\u0010j\u0002\u0008\u0011j\u0002\u0008\u0012j\u0002\u0008\u0013j\u0002\u0008\u0014j\u0002\u0008\u0015j\u0002\u0008\u0016j\u0002\u0008\u0017j\u0002\u0008\u0018j\u0002\u0008\u0019j\u0002\u0008\u001aj\u0002\u0008\u001bj\u0002\u0008\u001cj\u0002\u0008\u001dj\u0002\u0008\u001ej\u0002\u0008\u001f\u00a8\u0006 "
    }
    d2 = {
        "Lcom/truecaller/messaging/conversation/Action;",
        "",
        "",
        "id",
        "I",
        "getId",
        "()I",
        "icon",
        "getIcon",
        "text",
        "getText",
        "<init>",
        "(Ljava/lang/String;IIII)V",
        "REPLY",
        "COPY",
        "DELETE",
        "FORWARD",
        "SHARE",
        "SELECT_CALLS",
        "IMPORTANT",
        "NOT_IMPORTANT",
        "SPAM",
        "NOT_SPAM",
        "PROMOTIONAL",
        "NOT_PROMOTIONAL",
        "DOWNLOAD",
        "RESEND_SMS",
        "EDIT",
        "SEND_FEEDBACK",
        "DETAILS",
        "SELECT_MSGS",
        "MORE",
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
.field private static final synthetic $VALUES:[Lcom/truecaller/messaging/conversation/Action;

.field public static final enum COPY:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum DELETE:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum DETAILS:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum DOWNLOAD:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum EDIT:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum FORWARD:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum IMPORTANT:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum MORE:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum NOT_IMPORTANT:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum NOT_PROMOTIONAL:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum NOT_SPAM:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum PROMOTIONAL:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum REPLY:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum RESEND_SMS:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum SELECT_CALLS:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum SELECT_MSGS:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum SEND_FEEDBACK:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum SHARE:Lcom/truecaller/messaging/conversation/Action;

.field public static final enum SPAM:Lcom/truecaller/messaging/conversation/Action;


# instance fields
.field private final icon:I

.field private final id:I

.field private final text:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    const/16 v0, 0x13

    new-array v0, v0, [Lcom/truecaller/messaging/conversation/Action;

    new-instance v7, Lcom/truecaller/messaging/conversation/Action;

    const-string v2, "REPLY"

    const/4 v3, 0x0

    const v4, 0x7f0a0077

    const v5, 0x7f1205d7

    const v6, 0x7f0806a8

    move-object v1, v7

    .line 1
    invoke-direct/range {v1 .. v6}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v7, Lcom/truecaller/messaging/conversation/Action;->REPLY:Lcom/truecaller/messaging/conversation/Action;

    const/4 v1, 0x0

    aput-object v7, v0, v1

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v9, "COPY"

    const/4 v10, 0x1

    const v11, 0x7f0a0062

    const v12, 0x7f120d2b

    const v13, 0x7f080698

    move-object v8, v1

    .line 2
    invoke-direct/range {v8 .. v13}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->COPY:Lcom/truecaller/messaging/conversation/Action;

    const/4 v2, 0x1

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "DELETE"

    const/4 v5, 0x2

    const v6, 0x7f0a0063

    const v7, 0x7f1202cf

    const v8, 0x7f080699

    move-object v3, v1

    .line 3
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->DELETE:Lcom/truecaller/messaging/conversation/Action;

    const/4 v2, 0x2

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "FORWARD"

    const/4 v5, 0x3

    const v6, 0x7f0a0068

    const v7, 0x7f1201dc

    const v8, 0x7f08069f

    move-object v3, v1

    .line 4
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->FORWARD:Lcom/truecaller/messaging/conversation/Action;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "SHARE"

    const/4 v5, 0x4

    const v6, 0x7f0a007e

    const v7, 0x7f120222

    const v8, 0x7f08078c

    move-object v3, v1

    .line 5
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->SHARE:Lcom/truecaller/messaging/conversation/Action;

    const/4 v2, 0x4

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "SELECT_CALLS"

    const/4 v5, 0x5

    const v6, 0x7f0a007b

    const v7, 0x7f12021d

    const v8, 0x7f08078a

    move-object v3, v1

    .line 6
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->SELECT_CALLS:Lcom/truecaller/messaging/conversation/Action;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "IMPORTANT"

    const/4 v5, 0x6

    const v6, 0x7f0a006c

    const v7, 0x7f1201f6

    const v8, 0x7f0807a3

    move-object v3, v1

    .line 7
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->IMPORTANT:Lcom/truecaller/messaging/conversation/Action;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "NOT_IMPORTANT"

    const/4 v5, 0x7

    const v6, 0x7f0a0071

    const v7, 0x7f120237

    const v8, 0x7f0807a2

    move-object v3, v1

    .line 8
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->NOT_IMPORTANT:Lcom/truecaller/messaging/conversation/Action;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "SPAM"

    const/16 v5, 0x8

    const v6, 0x7f0a0081

    const v7, 0x7f120229

    const v8, 0x7f080690

    move-object v3, v1

    .line 9
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->SPAM:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0x8

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "NOT_SPAM"

    const/16 v5, 0x9

    const v6, 0x7f0a0073

    const v7, 0x7f120208

    move-object v3, v1

    .line 10
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->NOT_SPAM:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "PROMOTIONAL"

    const/16 v5, 0xa

    const v6, 0x7f0a0076

    const v7, 0x7f120215

    const v8, 0x7f08059e

    move-object v3, v1

    .line 11
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->PROMOTIONAL:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "NOT_PROMOTIONAL"

    const/16 v5, 0xb

    const v6, 0x7f0a0072

    const v7, 0x7f120214

    const v8, 0x7f08059f

    move-object v3, v1

    .line 12
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->NOT_PROMOTIONAL:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "DOWNLOAD"

    const/16 v5, 0xc

    const v6, 0x7f0a0065

    const v7, 0x7f120d2c

    const v8, 0x7f08069a

    move-object v3, v1

    .line 13
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->DOWNLOAD:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "RESEND_SMS"

    const/16 v5, 0xd

    const v6, 0x7f0a0079

    const v7, 0x7f1201d6

    const v8, 0x7f0806a3

    move-object v3, v1

    .line 14
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->RESEND_SMS:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "EDIT"

    const/16 v5, 0xe

    const v6, 0x7f0a0066

    const v7, 0x7f1201d2

    const v8, 0x7f08069b

    move-object v3, v1

    .line 15
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->EDIT:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "SEND_FEEDBACK"

    const/16 v5, 0xf

    const v6, 0x7f0a0067

    const v7, 0x7f1201bb

    const v8, 0x7f080716

    move-object v3, v1

    .line 16
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->SEND_FEEDBACK:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "DETAILS"

    const/16 v5, 0x10

    const v6, 0x7f0a006b

    const v7, 0x7f1201b5

    const v8, 0x7f0806a0

    move-object v3, v1

    .line 17
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->DETAILS:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0x10

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "SELECT_MSGS"

    const/16 v5, 0x11

    const v6, 0x7f0a007c

    const v7, 0x7f12021f

    const v8, 0x7f08078a

    move-object v3, v1

    .line 18
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->SELECT_MSGS:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0x11

    aput-object v1, v0, v2

    new-instance v1, Lcom/truecaller/messaging/conversation/Action;

    const-string v4, "MORE"

    const/16 v5, 0x12

    const/4 v6, 0x0

    const v7, 0x7f120205

    const v8, 0x7f08074b

    move-object v3, v1

    .line 19
    invoke-direct/range {v3 .. v8}, Lcom/truecaller/messaging/conversation/Action;-><init>(Ljava/lang/String;IIII)V

    sput-object v1, Lcom/truecaller/messaging/conversation/Action;->MORE:Lcom/truecaller/messaging/conversation/Action;

    const/16 v2, 0x12

    aput-object v1, v0, v2

    sput-object v0, Lcom/truecaller/messaging/conversation/Action;->$VALUES:[Lcom/truecaller/messaging/conversation/Action;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIII)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/truecaller/messaging/conversation/Action;->id:I

    iput p4, p0, Lcom/truecaller/messaging/conversation/Action;->text:I

    iput p5, p0, Lcom/truecaller/messaging/conversation/Action;->icon:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/messaging/conversation/Action;
    .locals 1

    const-class v0, Lcom/truecaller/messaging/conversation/Action;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/messaging/conversation/Action;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/messaging/conversation/Action;
    .locals 1

    sget-object v0, Lcom/truecaller/messaging/conversation/Action;->$VALUES:[Lcom/truecaller/messaging/conversation/Action;

    invoke-virtual {v0}, [Lcom/truecaller/messaging/conversation/Action;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/messaging/conversation/Action;

    return-object v0
.end method


# virtual methods
.method public final getIcon()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/Action;->icon:I

    return v0
.end method

.method public final getId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/Action;->id:I

    return v0
.end method

.method public final getText()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/messaging/conversation/Action;->text:I

    return v0
.end method
