.class public final enum Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "FeedbackItemState"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum DUMMY_FINAL:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum FEEDBACK_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum FEEDBACK_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum INVITE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum INVITE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum QUESTION_ENJOYING:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum QUESTION_ENJOYING_BLOCKED:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum QUESTION_ENJOYING_CALLER_ID:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum QUESTION_GIVE_FEEDBACK:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum QUESTION_INVITE_FRIENDS:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum QUESTION_RATE:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum QUESTION_SHARE:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum QUESTION_SHARE_BLOCKED:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum QUESTION_SHARE_CALLER_ID:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum RATE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum RATE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum RATE_YES_THANKS:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum SHARE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

.field public static final enum SHARE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;


# instance fields
.field private final mDismissId:I

.field private final mFinalState:Z

.field private final mIconId:I

.field private final mMessageId:I

.field private final mNegativeId:I

.field private final mPositiveId:I

.field private final mTitleId:I


# direct methods
.method public static constructor <clinit>()V
    .locals 33

    .line 1
    new-instance v10, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v1, "QUESTION_ENJOYING"

    const/4 v2, 0x0

    const v3, 0x7f12029a

    const/4 v4, -0x1

    const v5, 0x7f040081

    const v6, 0x7f120297

    const v7, 0x7f12071f

    const v8, 0x7f120745

    const/4 v9, 0x0

    move-object v0, v10

    invoke-direct/range {v0 .. v9}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v10, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 2
    new-instance v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v1, "QUESTION_ENJOYING_CALLER_ID"

    const/4 v2, 0x1

    const v3, 0x7f12029c

    const v4, 0x7f0805e5

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;III)V

    sput-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING_CALLER_ID:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 3
    new-instance v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v3, "QUESTION_ENJOYING_BLOCKED"

    const/4 v5, 0x2

    const v6, 0x7f12029b

    invoke-direct {v1, v3, v5, v6, v4}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;III)V

    sput-object v1, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING_BLOCKED:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 4
    new-instance v3, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v6, "QUESTION_RATE"

    const/4 v7, 0x3

    const v8, 0x7f12029f

    invoke-direct {v3, v6, v7, v8, v4}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;III)V

    sput-object v3, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_RATE:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 5
    new-instance v4, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v6, "QUESTION_GIVE_FEEDBACK"

    const/4 v8, 0x4

    const v9, 0x7f12029d

    const v11, 0x7f0804dd

    invoke-direct {v4, v6, v8, v9, v11}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;III)V

    sput-object v4, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_GIVE_FEEDBACK:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 6
    new-instance v6, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v9, "FEEDBACK_NO"

    const/4 v11, 0x5

    invoke-direct {v6, v9, v11}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;I)V

    sput-object v6, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->FEEDBACK_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 7
    new-instance v9, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v12, "RATE_NO"

    const/4 v13, 0x6

    invoke-direct {v9, v12, v13}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;I)V

    sput-object v9, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 8
    new-instance v12, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v14, "FEEDBACK_YES"

    const/4 v15, 0x7

    invoke-direct {v12, v14, v15}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;I)V

    sput-object v12, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->FEEDBACK_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 9
    new-instance v14, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v15, "RATE_YES"

    const/16 v13, 0x8

    const/4 v11, 0x0

    invoke-direct {v14, v15, v13, v11}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;IZ)V

    sput-object v14, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 10
    new-instance v15, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v13, "RATE_YES_THANKS"

    const/16 v8, 0x9

    const v7, 0x7f1202a3

    const v5, 0x7f0807e8

    invoke-direct {v15, v13, v8, v7, v5}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;III)V

    sput-object v15, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_YES_THANKS:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 11
    new-instance v5, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v17, "QUESTION_SHARE"

    const/16 v18, 0xa

    const v19, 0x7f1202a0

    const/16 v20, -0x1

    const v21, 0x7f040081

    const v22, 0x7f120297

    const v23, 0x7f12071f

    const v24, 0x7f120745

    const/16 v25, 0x0

    move-object/from16 v16, v5

    invoke-direct/range {v16 .. v25}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v5, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_SHARE:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 12
    new-instance v7, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v13, "QUESTION_SHARE_CALLER_ID"

    const/16 v8, 0xb

    const v2, 0x7f1202a2

    const v11, 0x7f080641

    invoke-direct {v7, v13, v8, v2, v11}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;III)V

    sput-object v7, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_SHARE_CALLER_ID:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 13
    new-instance v2, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v13, "QUESTION_SHARE_BLOCKED"

    const/16 v8, 0xc

    move-object/from16 v20, v7

    const v7, 0x7f1202a1

    invoke-direct {v2, v13, v8, v7, v11}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;III)V

    sput-object v2, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_SHARE_BLOCKED:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 14
    new-instance v7, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v11, "SHARE_NO"

    const/16 v13, 0xd

    invoke-direct {v7, v11, v13}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;I)V

    sput-object v7, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->SHARE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 15
    new-instance v11, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v13, "SHARE_YES"

    const/16 v8, 0xe

    invoke-direct {v11, v13, v8}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->SHARE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 16
    new-instance v13, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v24, "QUESTION_INVITE_FRIENDS"

    const/16 v25, 0xf

    const v26, 0x7f12036b

    const v27, 0x7f12029e

    const v28, 0x7f040081

    const v29, 0x7f120299

    const/16 v30, -0x1

    const v31, 0x7f120298

    const/16 v32, 0x0

    move-object/from16 v23, v13

    invoke-direct/range {v23 .. v32}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;IIIIIIIZ)V

    sput-object v13, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_INVITE_FRIENDS:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 17
    new-instance v8, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    move-object/from16 v24, v13

    const-string v13, "INVITE_YES"

    move-object/from16 v25, v11

    const/16 v11, 0x10

    invoke-direct {v8, v13, v11}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;I)V

    sput-object v8, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->INVITE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 18
    new-instance v13, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v11, "INVITE_NO"

    move-object/from16 v27, v8

    const/16 v8, 0x11

    invoke-direct {v13, v11, v8}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;I)V

    sput-object v13, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->INVITE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    .line 19
    new-instance v11, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const-string v8, "DUMMY_FINAL"

    move-object/from16 v29, v13

    const/16 v13, 0x12

    invoke-direct {v11, v8, v13}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;I)V

    sput-object v11, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->DUMMY_FINAL:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const/16 v8, 0x13

    new-array v8, v8, [Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    const/16 v18, 0x0

    aput-object v10, v8, v18

    const/4 v10, 0x1

    aput-object v0, v8, v10

    const/4 v0, 0x2

    aput-object v1, v8, v0

    const/4 v0, 0x3

    aput-object v3, v8, v0

    const/4 v0, 0x4

    aput-object v4, v8, v0

    const/4 v0, 0x5

    aput-object v6, v8, v0

    const/4 v0, 0x6

    aput-object v9, v8, v0

    const/4 v0, 0x7

    aput-object v12, v8, v0

    const/16 v0, 0x8

    aput-object v14, v8, v0

    const/16 v0, 0x9

    aput-object v15, v8, v0

    const/16 v0, 0xa

    aput-object v5, v8, v0

    const/16 v0, 0xb

    aput-object v20, v8, v0

    const/16 v0, 0xc

    aput-object v2, v8, v0

    const/16 v0, 0xd

    aput-object v7, v8, v0

    const/16 v0, 0xe

    aput-object v25, v8, v0

    const/16 v0, 0xf

    aput-object v24, v8, v0

    const/16 v0, 0x10

    aput-object v27, v8, v0

    const/16 v0, 0x11

    aput-object v29, v8, v0

    aput-object v11, v8, v13

    .line 20
    sput-object v8, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->$VALUES:[Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    const/4 v0, 0x1

    .line 2
    invoke-direct {p0, p1, p2, v0}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;IZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;III)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)V"
        }
    .end annotation

    const v5, 0x7f120297

    const v6, 0x7f12071f

    const v7, 0x7f120745

    const/4 v8, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    .line 1
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;IIIIIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIIZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIIZ)V"
        }
    .end annotation

    .line 5
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 6
    iput p3, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mTitleId:I

    .line 7
    iput p4, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mMessageId:I

    .line 8
    iput p5, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mIconId:I

    .line 9
    iput p6, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mDismissId:I

    .line 10
    iput p7, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mNegativeId:I

    .line 11
    iput p8, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mPositiveId:I

    .line 12
    iput-boolean p9, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mFinalState:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IIIIIIZ)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIIIZ)V"
        }
    .end annotation

    const/4 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    .line 4
    invoke-direct/range {v0 .. v9}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;IIIIIIIZ)V

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    const/4 v3, -0x1

    const/4 v4, -0x1

    const/4 v5, -0x1

    const/4 v6, -0x1

    const/4 v7, -0x1

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v8, p3

    .line 3
    invoke-direct/range {v0 .. v8}, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;-><init>(Ljava/lang/String;IIIIIIZ)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->$VALUES:[Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    invoke-virtual {v0}, [Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    return-object v0
.end method


# virtual methods
.method public getDismissId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mDismissId:I

    return v0
.end method

.method public getIconId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mIconId:I

    return v0
.end method

.method public getMessageId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mMessageId:I

    return v0
.end method

.method public getNegativeId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mNegativeId:I

    return v0
.end method

.method public getPositiveId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mPositiveId:I

    return v0
.end method

.method public getTitleId()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mTitleId:I

    return v0
.end method

.method public isFeedbackState()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING_CALLER_ID:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_ENJOYING_BLOCKED:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_RATE:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_GIVE_FEEDBACK:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isInviteState()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_INVITE_FRIENDS:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->INVITE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->INVITE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public isShareState()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_SHARE:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_SHARE_BLOCKED:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->QUESTION_SHARE_CALLER_ID:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->SHARE_NO:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-eq p0, v0, :cond_1

    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->SHARE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne p0, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method

.method public shouldClose()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->mFinalState:Z

    return v0
.end method

.method public shouldGiveFeedback()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->FEEDBACK_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldInvite()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->INVITE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldRate()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->RATE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public shouldShare()Z
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;->SHARE_YES:Lcom/truecaller/ui/components/FeedbackItemView$FeedbackItem$FeedbackItemState;

    if-ne p0, v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method
