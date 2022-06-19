.class public final Lcom/truecaller/account/network/TokenResponseDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/account/network/TokenResponseDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\u0010\n\u0002\u0010\u000b\n\u0002\u0008\u000c\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\t\u0008\u0007\u0018\u0000 22\u00020\u0001:\u00013B\u00a5\u0001\u0012\u0008\u0008\u0001\u0010\u0008\u001a\u00020\u0007\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010$\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u001b\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0013\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0011\u001a\u0004\u0018\u00010\u0002\u0012\n\u0008\u0001\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010&\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0015\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\"\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0019\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010(\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u001e\u001a\u0004\u0018\u00010\u001d\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u000e\u0010,\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*\u00a2\u0006\u0004\u00080\u00101R\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u001b\u0010\u0011\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0004\u001a\u0004\u0008\u0012\u0010\u0006R\u001b\u0010\u0013\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0013\u0010\u0004\u001a\u0004\u0008\u0014\u0010\u0006R\u001b\u0010\u0015\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000e\u001a\u0004\u0008\u0016\u0010\u0010R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0004\u001a\u0004\u0008\u0018\u0010\u0006R\u001b\u0010\u0019\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0019\u0010\u0004\u001a\u0004\u0008\u001a\u0010\u0006R\u001b\u0010\u001b\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001b\u0010\u0004\u001a\u0004\u0008\u001c\u0010\u0006R\u001b\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u001e\u0010\u001f\u001a\u0004\u0008 \u0010!R\u001b\u0010\"\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\"\u0010\u0004\u001a\u0004\u0008#\u0010\u0006R\u001b\u0010$\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008$\u0010\u000e\u001a\u0004\u0008%\u0010\u0010R\u001b\u0010&\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008&\u0010\u000e\u001a\u0004\u0008\'\u0010\u0010R\u001b\u0010(\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008(\u0010\u000e\u001a\u0004\u0008)\u0010\u0010R!\u0010,\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008,\u0010-\u001a\u0004\u0008.\u0010/\u00a8\u00064"
    }
    d2 = {
        "Lcom/truecaller/account/network/TokenResponseDto;",
        "",
        "",
        "message",
        "Ljava/lang/String;",
        "getMessage",
        "()Ljava/lang/String;",
        "",
        "status",
        "I",
        "getStatus",
        "()I",
        "",
        "backupTime",
        "Ljava/lang/Long;",
        "getBackupTime",
        "()Ljava/lang/Long;",
        "requestId",
        "getRequestId",
        "domain",
        "getDomain",
        "ttl",
        "getTtl",
        "method",
        "getMethod",
        "installationId",
        "getInstallationId",
        "parsedCountryCode",
        "getParsedCountryCode",
        "",
        "suspended",
        "Ljava/lang/Boolean;",
        "getSuspended",
        "()Ljava/lang/Boolean;",
        "pattern",
        "getPattern",
        "parsedPhoneNumber",
        "getParsedPhoneNumber",
        "tokenTtl",
        "getTokenTtl",
        "userId",
        "getUserId",
        "",
        "Lcom/truecaller/account/network/VerificationPhoneNumber;",
        "phones",
        "Ljava/util/List;",
        "getPhones",
        "()Ljava/util/List;",
        "<init>",
        "(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/util/List;)V",
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
.field public static final Companion:Lcom/truecaller/account/network/TokenResponseDto$a;

.field public static final METHOD_CALL:Ljava/lang/String; = "call"

.field public static final METHOD_SMS:Ljava/lang/String; = "sms"

.field public static final STATUS_ACCOUNT_CREATED:I = 0x13

.field public static final STATUS_ACCOUNT_RECOVERED:I = 0x12

.field public static final STATUS_ALREADY_VERIFIED:I = 0x3

.field public static final STATUS_ATTESTATION_REQUIRED:I = 0x4e21

.field public static final STATUS_BACKUP_FOUND:I = 0x11

.field public static final STATUS_CHANGE_ACCOUNT:I = 0x14

.field public static final STATUS_PHONE_NUMBER_BLOCKED:I = 0x15

.field public static final STATUS_PHONE_NUMBER_BLOCKED_REUSE:I = 0x6

.field public static final STATUS_PHONE_NUMBER_LIMIT_REACHED:I = 0x5

.field public static final STATUS_REQUEST_ID_LIMIT_REACHED:I = 0x4

.field public static final STATUS_SUCCESS_NOT_STORED:I = 0xc

.field public static final STATUS_TOKEN_INVALID:I = 0xb

.field public static final STATUS_TOKEN_PENDING:I = 0x9

.field public static final STATUS_TOKEN_RETRY_LIMIT_REACHED:I = 0x7

.field public static final STATUS_TOKEN_SENT:I = 0x1

.field public static final STATUS_TOKEN_TIMED_OUT:I = 0x8

.field public static final STATUS_VERIFICATION_FAILED:I = 0x4e23

.field public static final STATUS_VERIFICATION_FAILED_THROTTLED:I = 0x4e22

.field public static final STATUS_VERIFIED:I = 0x2


# instance fields
.field private final backupTime:Ljava/lang/Long;

.field private final domain:Ljava/lang/String;

.field private final installationId:Ljava/lang/String;

.field private final message:Ljava/lang/String;

.field private final method:Ljava/lang/String;

.field private final parsedCountryCode:Ljava/lang/String;

.field private final parsedPhoneNumber:Ljava/lang/Long;

.field private final pattern:Ljava/lang/String;

.field private final phones:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/truecaller/account/network/VerificationPhoneNumber;",
            ">;"
        }
    .end annotation
.end field

.field private final requestId:Ljava/lang/String;

.field private final status:I

.field private final suspended:Ljava/lang/Boolean;

.field private final tokenTtl:Ljava/lang/Long;

.field private final ttl:Ljava/lang/Long;

.field private final userId:Ljava/lang/Long;


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/account/network/TokenResponseDto$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/account/network/TokenResponseDto$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/account/network/TokenResponseDto;->Companion:Lcom/truecaller/account/network/TokenResponseDto$a;

    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Long;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/lang/Long;",
            "Ljava/lang/Boolean;",
            "Ljava/lang/Long;",
            "Ljava/util/List<",
            "Lcom/truecaller/account/network/VerificationPhoneNumber;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/truecaller/account/network/TokenResponseDto;->status:I

    iput-object p2, p0, Lcom/truecaller/account/network/TokenResponseDto;->message:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/account/network/TokenResponseDto;->parsedPhoneNumber:Ljava/lang/Long;

    iput-object p4, p0, Lcom/truecaller/account/network/TokenResponseDto;->parsedCountryCode:Ljava/lang/String;

    iput-object p5, p0, Lcom/truecaller/account/network/TokenResponseDto;->domain:Ljava/lang/String;

    iput-object p6, p0, Lcom/truecaller/account/network/TokenResponseDto;->requestId:Ljava/lang/String;

    iput-object p7, p0, Lcom/truecaller/account/network/TokenResponseDto;->method:Ljava/lang/String;

    iput-object p8, p0, Lcom/truecaller/account/network/TokenResponseDto;->tokenTtl:Ljava/lang/Long;

    iput-object p9, p0, Lcom/truecaller/account/network/TokenResponseDto;->ttl:Ljava/lang/Long;

    iput-object p10, p0, Lcom/truecaller/account/network/TokenResponseDto;->pattern:Ljava/lang/String;

    iput-object p11, p0, Lcom/truecaller/account/network/TokenResponseDto;->installationId:Ljava/lang/String;

    iput-object p12, p0, Lcom/truecaller/account/network/TokenResponseDto;->userId:Ljava/lang/Long;

    iput-object p13, p0, Lcom/truecaller/account/network/TokenResponseDto;->suspended:Ljava/lang/Boolean;

    iput-object p14, p0, Lcom/truecaller/account/network/TokenResponseDto;->backupTime:Ljava/lang/Long;

    iput-object p15, p0, Lcom/truecaller/account/network/TokenResponseDto;->phones:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public final getBackupTime()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->backupTime:Ljava/lang/Long;

    return-object v0
.end method

.method public final getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getMessage()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->message:Ljava/lang/String;

    return-object v0
.end method

.method public final getMethod()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->method:Ljava/lang/String;

    return-object v0
.end method

.method public final getParsedCountryCode()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->parsedCountryCode:Ljava/lang/String;

    return-object v0
.end method

.method public final getParsedPhoneNumber()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->parsedPhoneNumber:Ljava/lang/Long;

    return-object v0
.end method

.method public final getPattern()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->pattern:Ljava/lang/String;

    return-object v0
.end method

.method public final getPhones()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/truecaller/account/network/VerificationPhoneNumber;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->phones:Ljava/util/List;

    return-object v0
.end method

.method public final getRequestId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->requestId:Ljava/lang/String;

    return-object v0
.end method

.method public final getStatus()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->status:I

    return v0
.end method

.method public final getSuspended()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->suspended:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTokenTtl()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->tokenTtl:Ljava/lang/Long;

    return-object v0
.end method

.method public final getTtl()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->ttl:Ljava/lang/Long;

    return-object v0
.end method

.method public final getUserId()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/TokenResponseDto;->userId:Ljava/lang/Long;

    return-object v0
.end method
