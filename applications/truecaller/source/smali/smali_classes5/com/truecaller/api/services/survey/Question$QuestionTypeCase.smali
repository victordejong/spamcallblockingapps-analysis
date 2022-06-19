.class public final enum Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/truecaller/api/services/survey/Question;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "QuestionTypeCase"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

.field public static final enum BOOL:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

.field public static final enum FREE_TEXT:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

.field public static final enum MULTI_ANSWER:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

.field public static final enum QUESTIONTYPE_NOT_SET:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

.field public static final enum RATING:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

.field public static final enum SINGLE_ANSWER:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;


# instance fields
.field private final value:I


# direct methods
.method public static constructor <clinit>()V
    .locals 14

    .line 1
    new-instance v0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    const-string v1, "BOOL"

    const/4 v2, 0x0

    const/4 v3, 0x4

    invoke-direct {v0, v1, v2, v3}, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->BOOL:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    .line 2
    new-instance v1, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    const-string v4, "RATING"

    const/4 v5, 0x1

    const/4 v6, 0x5

    invoke-direct {v1, v4, v5, v6}, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v1, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->RATING:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    .line 3
    new-instance v4, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    const-string v7, "SINGLE_ANSWER"

    const/4 v8, 0x2

    const/4 v9, 0x6

    invoke-direct {v4, v7, v8, v9}, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v4, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->SINGLE_ANSWER:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    .line 4
    new-instance v7, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    const-string v10, "MULTI_ANSWER"

    const/4 v11, 0x3

    const/4 v12, 0x7

    invoke-direct {v7, v10, v11, v12}, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v7, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->MULTI_ANSWER:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    .line 5
    new-instance v10, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    const-string v12, "FREE_TEXT"

    const/16 v13, 0x8

    invoke-direct {v10, v12, v3, v13}, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v10, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->FREE_TEXT:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    .line 6
    new-instance v12, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    const-string v13, "QUESTIONTYPE_NOT_SET"

    invoke-direct {v12, v13, v6, v2}, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;-><init>(Ljava/lang/String;II)V

    sput-object v12, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->QUESTIONTYPE_NOT_SET:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    new-array v9, v9, [Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    aput-object v0, v9, v2

    aput-object v1, v9, v5

    aput-object v4, v9, v8

    aput-object v7, v9, v11

    aput-object v10, v9, v3

    aput-object v12, v9, v6

    .line 7
    sput-object v9, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->$VALUES:[Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

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
    iput p3, p0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->value:I

    return-void
.end method

.method public static forNumber(I)Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;
    .locals 0

    if-eqz p0, :cond_0

    packed-switch p0, :pswitch_data_0

    const/4 p0, 0x0

    return-object p0

    .line 1
    :pswitch_0
    sget-object p0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->FREE_TEXT:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    return-object p0

    .line 2
    :pswitch_1
    sget-object p0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->MULTI_ANSWER:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    return-object p0

    .line 3
    :pswitch_2
    sget-object p0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->SINGLE_ANSWER:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    return-object p0

    .line 4
    :pswitch_3
    sget-object p0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->RATING:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    return-object p0

    .line 5
    :pswitch_4
    sget-object p0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->BOOL:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    return-object p0

    .line 6
    :cond_0
    sget-object p0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->QUESTIONTYPE_NOT_SET:Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    return-object p0

    nop

    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public static valueOf(I)Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;
    .locals 0
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 2
    invoke-static {p0}, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->forNumber(I)Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    move-result-object p0

    return-object p0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;
    .locals 1

    .line 1
    const-class v0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;
    .locals 1

    .line 1
    sget-object v0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->$VALUES:[Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    invoke-virtual {v0}, [Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;

    return-object v0
.end method


# virtual methods
.method public getNumber()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/api/services/survey/Question$QuestionTypeCase;->value:I

    return v0
.end method
