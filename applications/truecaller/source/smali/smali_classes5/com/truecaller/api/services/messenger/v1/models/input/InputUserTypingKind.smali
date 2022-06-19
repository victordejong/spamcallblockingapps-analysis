.class public final enum Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;
.super Ljava/lang/Enum;
.source "SourceFile"

# interfaces
.implements Lcom/google/protobuf/Internal$EnumLite;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;",
        ">;",
        "Lcom/google/protobuf/Internal$EnumLite;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final enum ANIMATION:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final enum ANIMATION_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final ANIMATION_UPLOADING_VALUE:I = 0xa

.field public static final ANIMATION_VALUE:I = 0x5

.field public static final enum FILE:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final enum FILE_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final FILE_UPLOADING_VALUE:I = 0xb

.field public static final FILE_VALUE:I = 0x6

.field public static final enum IMAGE:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final enum IMAGE_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final IMAGE_UPLOADING_VALUE:I = 0x9

.field public static final IMAGE_VALUE:I = 0x2

.field public static final enum TYPING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final TYPING_VALUE:I = 0x0

.field public static final enum UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final enum VCARD:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final enum VCARD_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final VCARD_UPLOADING_VALUE:I = 0xc

.field public static final VCARD_VALUE:I = 0x7

.field public static final enum VIDEO:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final enum VIDEO_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final VIDEO_UPLOADING_VALUE:I = 0x8

.field public static final VIDEO_VALUE:I = 0x1

.field public static final enum VOICE_RECORDING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final VOICE_RECORDING_VALUE:I = 0x3

.field public static final enum VOICE_SENDING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

.field public static final VOICE_SENDING_VALUE:I = 0x4

.field private static final internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 17

    .line 1
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v1, "TYPING"

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, v2}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->TYPING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v3, "VIDEO"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VIDEO:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 3
    new-instance v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v5, "VIDEO_UPLOADING"

    const/4 v6, 0x2

    const/16 v7, 0x8

    invoke-direct {v3, v5, v6, v7}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v3, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VIDEO_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 4
    new-instance v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v8, "IMAGE"

    const/4 v9, 0x3

    invoke-direct {v5, v8, v9, v6}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v5, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->IMAGE:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 5
    new-instance v8, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v10, "IMAGE_UPLOADING"

    const/4 v11, 0x4

    const/16 v12, 0x9

    invoke-direct {v8, v10, v11, v12}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v8, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->IMAGE_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 6
    new-instance v10, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v13, "VOICE_RECORDING"

    const/4 v14, 0x5

    invoke-direct {v10, v13, v14, v9}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VOICE_RECORDING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 7
    new-instance v13, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v15, "VOICE_SENDING"

    const/4 v9, 0x6

    invoke-direct {v13, v15, v9, v11}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v13, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VOICE_SENDING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 8
    new-instance v15, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v11, "ANIMATION"

    const/4 v6, 0x7

    invoke-direct {v15, v11, v6, v14}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v15, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->ANIMATION:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 9
    new-instance v11, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v14, "ANIMATION_UPLOADING"

    const/16 v4, 0xa

    invoke-direct {v11, v14, v7, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v11, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->ANIMATION_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 10
    new-instance v14, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v7, "FILE"

    invoke-direct {v14, v7, v12, v9}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v14, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->FILE:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 11
    new-instance v7, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v12, "FILE_UPLOADING"

    const/16 v9, 0xb

    invoke-direct {v7, v12, v4, v9}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->FILE_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 12
    new-instance v12, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v4, "VCARD"

    invoke-direct {v12, v4, v9, v6}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VCARD:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 13
    new-instance v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v9, "VCARD_UPLOADING"

    const/16 v6, 0xc

    invoke-direct {v4, v9, v6, v6}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VCARD_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 14
    new-instance v9, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const-string v6, "UNRECOGNIZED"

    const/16 v2, 0xd

    move-object/from16 v16, v4

    const/4 v4, -0x1

    invoke-direct {v9, v6, v2, v4}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;-><init>(Ljava/lang/String;II)V

    sput-object v9, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const/16 v4, 0xe

    new-array v4, v4, [Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    const/4 v6, 0x0

    aput-object v0, v4, v6

    const/4 v0, 0x1

    aput-object v1, v4, v0

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v5, v4, v0

    const/4 v0, 0x4

    aput-object v8, v4, v0

    const/4 v0, 0x5

    aput-object v10, v4, v0

    const/4 v0, 0x6

    aput-object v13, v4, v0

    const/4 v0, 0x7

    aput-object v15, v4, v0

    const/16 v0, 0x8

    aput-object v11, v4, v0

    const/16 v0, 0x9

    aput-object v14, v4, v0

    const/16 v0, 0xa

    aput-object v7, v4, v0

    const/16 v0, 0xb

    aput-object v12, v4, v0

    const/16 v0, 0xc

    aput-object v16, v4, v0

    aput-object v9, v4, v2

    .line 15
    sput-object v4, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    .line 16
    new-instance v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind$a;

    invoke-direct {v0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind$a;-><init>()V

    sput-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

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
    iput p3, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;
    .locals 0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VCARD_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->FILE_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->ANIMATION_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->IMAGE_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VIDEO_UPLOADING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 6
    :pswitch_5
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VCARD:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 7
    :pswitch_6
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->FILE:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 8
    :pswitch_7
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->ANIMATION:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 9
    :pswitch_8
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VOICE_SENDING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 10
    :pswitch_9
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VOICE_RECORDING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 11
    :pswitch_a
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->IMAGE:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 12
    :pswitch_b
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->VIDEO:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    .line 13
    :pswitch_c
    sget-object p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->TYPING:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0

    :pswitch_data_0
    .packed-switch 0x0
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

.method public static internalGetValueMap()Lcom/google/protobuf/Internal$EnumLiteMap;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/protobuf/Internal$EnumLiteMap<",
            "Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->internalValueMap:Lcom/google/protobuf/Internal$EnumLiteMap;

    return-object v0
.end method

.method public static internalGetVerifier()Lcom/google/protobuf/Internal$EnumVerifier;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind$b;->a:Lcom/google/protobuf/Internal$EnumVerifier;

    return-object v0
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->forNumber(I)Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->$VALUES:[Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    return-object v0
.end method


# virtual methods
.method public final getNumber()I
    .locals 2

    .line 1
    sget-object v0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->UNRECOGNIZED:Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;

    if-eq p0, v0, :cond_0

    .line 2
    iget v0, p0, Lcom/truecaller/api/services/messenger/v1/models/input/InputUserTypingKind;->value:I

    return v0

    .line 3
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Can\'t get the number of an unknown enum value."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
