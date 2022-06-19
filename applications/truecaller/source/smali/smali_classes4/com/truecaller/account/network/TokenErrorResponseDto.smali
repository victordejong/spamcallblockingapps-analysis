.class public final Lcom/truecaller/account/network/TokenErrorResponseDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/account/network/TokenErrorResponseDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\t\u0008\u0007\u0018\u0000 \u00132\u00020\u0001:\u0001\u0014B\'\u0012\u0008\u0008\u0001\u0010\r\u001a\u00020\u000c\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0002\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u00a2\u0006\u0004\u0008\u0011\u0010\u0012R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u0019\u0010\r\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010\u00a8\u0006\u0015"
    }
    d2 = {
        "Lcom/truecaller/account/network/TokenErrorResponseDto;",
        "",
        "",
        "message",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "",
        "nextCallDuration",
        "Ljava/lang/Long;",
        "getNextCallDuration",
        "()Ljava/lang/Long;",
        "",
        "status",
        "I",
        "getStatus",
        "()I",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/Long;)V",
        "Companion",
        "a",
        "account-network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final Companion:Lcom/truecaller/account/network/TokenErrorResponseDto$a;

.field public static final STATUS_APPLICATION_NOT_SUPPORTED:I = 0x9c42

.field public static final STATUS_CLIENT_SECRET_WRONG:I = 0x9c44

.field public static final STATUS_INCORRECT_PRIVACY_SELECTION:I = 0x9c4c

.field public static final STATUS_INTERNAL_SERVER_ERROR:I = 0xc352

.field public static final STATUS_INVALID_BODY_FORMAT:I = 0x9c41

.field public static final STATUS_INVALID_PHONE_NUMBER:I = 0x9c43

.field public static final STATUS_MOBILE_SERVICES_MISSING:I = 0x9d6e

.field public static final STATUS_NUMBER_ALREADY_REGISTERED:I = 0x9c4b

.field public static final STATUS_NUMBER_BLOCKED:I = 0x9caa

.field public static final STATUS_VERIFICATION_UNAVAILABLE_LEGAL:I = 0xb02d


# instance fields
.field private final message:Ljava/lang/String;

.field private final nextCallDuration:Ljava/lang/Long;

.field private final status:I


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/account/network/TokenErrorResponseDto$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/account/network/TokenErrorResponseDto$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/account/network/TokenErrorResponseDto;->Companion:Lcom/truecaller/account/network/TokenErrorResponseDto$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Long;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/account/network/TokenErrorResponseDto;->status:I

    iput-object p2, p0, Lcom/truecaller/account/network/TokenErrorResponseDto;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/account/network/TokenErrorResponseDto;->nextCallDuration:Ljava/lang/Long;

    return-void
.end method

.method public synthetic constructor <init>(ILjava/lang/String;Ljava/lang/Long;ILs1/z/c/f;)V
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 2
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Lcom/truecaller/account/network/TokenErrorResponseDto;-><init>(ILjava/lang/String;Ljava/lang/Long;)V

    return-void
.end method


# virtual methods
.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenErrorResponseDto;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextCallDuration()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenErrorResponseDto;->nextCallDuration:Ljava/lang/Long;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/network/TokenErrorResponseDto;->status:I

    return v0
.end method
