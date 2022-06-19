.class public final enum Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/messenger/v1/events/Event;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "PayloadCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum GROUP_CREATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum GROUP_DELETED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum GROUP_INFO_UPDATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum GROUP_INVITE_KEY_UPDATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum INCOMPATIBLE_EVENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum MESSAGES_DELETED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum MESSAGE_EDITED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum MESSAGE_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum PARTICIPANT_ADDED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum PARTICIPANT_REMOVED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum PAYLOAD_NOT_SET:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum PING:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum REACTION_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum REPORT_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum ROLES_UPDATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

.field public static final enum USER_TYPING:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 19

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v1, "MESSAGE_SENT"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->MESSAGE_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v4, "REPORT_SENT"

    const/4 v5, 0x1

    const/4 v6, 0x3

    invoke-direct {v1, v4, v5, v6}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->REPORT_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 3
    new-instance v4, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v7, "REACTION_SENT"

    const/4 v8, 0x4

    invoke-direct {v4, v7, v3, v8}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->REACTION_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 4
    new-instance v7, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v9, "GROUP_CREATED"

    const/4 v10, 0x5

    invoke-direct {v7, v9, v6, v10}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->GROUP_CREATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 5
    new-instance v9, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v11, "PARTICIPANT_ADDED"

    const/4 v12, 0x6

    invoke-direct {v9, v11, v8, v12}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->PARTICIPANT_ADDED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 6
    new-instance v11, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v13, "PARTICIPANT_REMOVED"

    const/4 v14, 0x7

    invoke-direct {v11, v13, v10, v14}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->PARTICIPANT_REMOVED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 7
    new-instance v13, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v15, "ROLES_UPDATED"

    const/16 v10, 0x8

    invoke-direct {v13, v15, v12, v10}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->ROLES_UPDATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 8
    new-instance v15, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v12, "GROUP_INFO_UPDATED"

    const/16 v8, 0x9

    invoke-direct {v15, v12, v14, v8}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->GROUP_INFO_UPDATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 9
    new-instance v12, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v14, "GROUP_DELETED"

    const/16 v6, 0xa

    invoke-direct {v12, v14, v10, v6}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->GROUP_DELETED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 10
    new-instance v14, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v10, "USER_TYPING"

    const/16 v3, 0xb

    invoke-direct {v14, v10, v8, v3}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->USER_TYPING:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 11
    new-instance v10, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v8, "GROUP_INVITE_KEY_UPDATED"

    const/16 v5, 0xc

    invoke-direct {v10, v8, v6, v5}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->GROUP_INVITE_KEY_UPDATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 12
    new-instance v8, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v6, "MESSAGE_EDITED"

    const/16 v2, 0xd

    invoke-direct {v8, v6, v3, v2}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->MESSAGE_EDITED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 13
    new-instance v6, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v3, "MESSAGES_DELETED"

    const/16 v2, 0xe

    invoke-direct {v6, v3, v5, v2}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v6, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->MESSAGES_DELETED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 14
    new-instance v3, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v5, "PING"

    const/16 v2, 0x3e5

    move-object/from16 v16, v6

    const/16 v6, 0xd

    invoke-direct {v3, v5, v6, v2}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->PING:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 15
    new-instance v2, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v5, "INCOMPATIBLE_EVENT"

    const/16 v6, 0x3e6

    move-object/from16 v17, v3

    const/16 v3, 0xe

    invoke-direct {v2, v5, v3, v6}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v2, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->INCOMPATIBLE_EVENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    .line 16
    new-instance v3, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const-string v5, "PAYLOAD_NOT_SET"

    const/16 v6, 0xf

    move-object/from16 v18, v2

    const/4 v2, 0x0

    invoke-direct {v3, v5, v6, v2}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->PAYLOAD_NOT_SET:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    const/16 v5, 0x10

    new-array v5, v5, [Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    aput-object v0, v5, v2

    const/4 v0, 0x1

    aput-object v1, v5, v0

    const/4 v0, 0x2

    aput-object v4, v5, v0

    const/4 v0, 0x3

    aput-object v7, v5, v0

    const/4 v0, 0x4

    aput-object v9, v5, v0

    const/4 v0, 0x5

    aput-object v11, v5, v0

    const/4 v0, 0x6

    aput-object v13, v5, v0

    const/4 v0, 0x7

    aput-object v15, v5, v0

    const/16 v0, 0x8

    aput-object v12, v5, v0

    const/16 v0, 0x9

    aput-object v14, v5, v0

    const/16 v0, 0xa

    aput-object v10, v5, v0

    const/16 v0, 0xb

    aput-object v8, v5, v0

    const/16 v0, 0xc

    aput-object v16, v5, v0

    const/16 v0, 0xd

    aput-object v17, v5, v0

    const/16 v0, 0xe

    aput-object v18, v5, v0

    aput-object v3, v5, v6

    .line 17
    sput-object v5, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;
    .locals 1

    if-eqz p0, :cond_2

    const/16 v0, 0x3e5

    if-eq p0, v0, :cond_1

    const/16 v0, 0x3e6

    if-eq p0, v0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->MESSAGES_DELETED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->MESSAGE_EDITED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->GROUP_INVITE_KEY_UPDATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->USER_TYPING:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->GROUP_DELETED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->GROUP_INFO_UPDATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->ROLES_UPDATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->PARTICIPANT_REMOVED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->PARTICIPANT_ADDED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->GROUP_CREATED:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->REACTION_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->REPORT_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->MESSAGE_SENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 14
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->INCOMPATIBLE_EVENT:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 15
    :cond_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->PING:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    .line 16
    :cond_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->PAYLOAD_NOT_SET:Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/events/Event$PayloadCase;->value:I

    return v0
.end method
