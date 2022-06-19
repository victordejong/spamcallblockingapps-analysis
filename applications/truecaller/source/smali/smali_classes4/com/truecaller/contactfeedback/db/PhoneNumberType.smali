.class public final enum Lcom/truecaller/contactfeedback/db/PhoneNumberType;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/truecaller/contactfeedback/db/PhoneNumberType;",
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
        "\u0000\u0010\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0086\u0001\u0018\u00002\u0008\u0012\u0004\u0012\u00020\u00000\u0001B\u0011\u0008\u0002\u0012\u0006\u0010\u0003\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u0007\u0010\u0008R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006j\u0002\u0008\tj\u0002\u0008\nj\u0002\u0008\u000bj\u0002\u0008\u000c\u00a8\u0006\r"
    }
    d2 = {
        "Lcom/truecaller/contactfeedback/db/PhoneNumberType;",
        "",
        "Lcom/truecaller/api/services/comments/model/NumberType;",
        "wrapped",
        "Lcom/truecaller/api/services/comments/model/NumberType;",
        "getWrapped",
        "()Lcom/truecaller/api/services/comments/model/NumberType;",
        "<init>",
        "(Ljava/lang/String;ILcom/truecaller/api/services/comments/model/NumberType;)V",
        "UNKNOWN_NUMBER_TYPE",
        "PHONE_NUMBER",
        "SENDER_ID",
        "IM_ID",
        "contact-feedback_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/truecaller/contactfeedback/db/PhoneNumberType;

.field public static final enum IM_ID:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

.field public static final enum PHONE_NUMBER:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

.field public static final enum SENDER_ID:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

.field public static final enum UNKNOWN_NUMBER_TYPE:Lcom/truecaller/contactfeedback/db/PhoneNumberType;


# instance fields
.field private final wrapped:Lcom/truecaller/api/services/comments/model/NumberType;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    new-instance v1, Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    .line 1
    sget-object v2, Lcom/truecaller/api/services/comments/model/NumberType;->UNKNOWN_NUMBER_TYPE:Lcom/truecaller/api/services/comments/model/NumberType;

    const-string v3, "UNKNOWN_NUMBER_TYPE"

    const/4 v4, 0x0

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/contactfeedback/db/PhoneNumberType;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/comments/model/NumberType;)V

    sput-object v1, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->UNKNOWN_NUMBER_TYPE:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    .line 2
    sget-object v2, Lcom/truecaller/api/services/comments/model/NumberType;->PHONE_NUMBER:Lcom/truecaller/api/services/comments/model/NumberType;

    const-string v3, "PHONE_NUMBER"

    const/4 v4, 0x1

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/contactfeedback/db/PhoneNumberType;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/comments/model/NumberType;)V

    sput-object v1, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->PHONE_NUMBER:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    .line 3
    sget-object v2, Lcom/truecaller/api/services/comments/model/NumberType;->SENDER_ID:Lcom/truecaller/api/services/comments/model/NumberType;

    const-string v3, "SENDER_ID"

    const/4 v4, 0x2

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/contactfeedback/db/PhoneNumberType;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/comments/model/NumberType;)V

    sput-object v1, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->SENDER_ID:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    aput-object v1, v0, v4

    new-instance v1, Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    .line 4
    sget-object v2, Lcom/truecaller/api/services/comments/model/NumberType;->IM_ID:Lcom/truecaller/api/services/comments/model/NumberType;

    const-string v3, "IM_ID"

    const/4 v4, 0x3

    invoke-direct {v1, v3, v4, v2}, Lcom/truecaller/contactfeedback/db/PhoneNumberType;-><init>(Ljava/lang/String;ILcom/truecaller/api/services/comments/model/NumberType;)V

    sput-object v1, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->IM_ID:Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    aput-object v1, v0, v4

    sput-object v0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->$VALUES:[Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;ILcom/truecaller/api/services/comments/model/NumberType;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/api/services/comments/model/NumberType;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput-object p3, p0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->wrapped:Lcom/truecaller/api/services/comments/model/NumberType;

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/truecaller/contactfeedback/db/PhoneNumberType;
    .locals 1

    const-class v0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object p0

    check-cast p0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    return-object p0
.end method

.method public static values()[Lcom/truecaller/contactfeedback/db/PhoneNumberType;
    .locals 1

    sget-object v0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->$VALUES:[Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    invoke-virtual {v0}, [Lcom/truecaller/contactfeedback/db/PhoneNumberType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/truecaller/contactfeedback/db/PhoneNumberType;

    return-object v0
.end method


# virtual methods
.method public final getWrapped()Lcom/truecaller/api/services/comments/model/NumberType;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/contactfeedback/db/PhoneNumberType;->wrapped:Lcom/truecaller/api/services/comments/model/NumberType;

    return-object v0
.end method
