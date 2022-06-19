.class public final Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/account/network/ExchangeCredentialsResponseDto$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0010\t\n\u0002\u0008\r\u0008\u0007\u0018\u0000 \u00122\u00020\u0001:\u0001\u0013B-\u0012\u0008\u0010\u000c\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0008\u0001\u0010\u0003\u001a\u00020\u0002\u0012\u0008\u0010\u000e\u001a\u0004\u0018\u00010\u0002\u0012\u0006\u0010\u0008\u001a\u00020\u0007\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0019\u0010\u0003\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u0019\u0010\u0008\u001a\u00020\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\u000c\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000c\u0010\u0004\u001a\u0004\u0008\r\u0010\u0006R\u001b\u0010\u000e\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000e\u0010\u0004\u001a\u0004\u0008\u000f\u0010\u0006\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;",
        "",
        "",
        "state",
        "Ljava/lang/String;",
        "getState",
        "()Ljava/lang/String;",
        "",
        "ttl",
        "J",
        "getTtl",
        "()J",
        "installationId",
        "getInstallationId",
        "domain",
        "getDomain",
        "<init>",
        "(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V",
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
.field public static final Companion:Lcom/truecaller/account/network/ExchangeCredentialsResponseDto$a;

.field public static final STATE_ACCEPTED:Ljava/lang/String; = "accepted"

.field public static final STATE_EXCHANGED:Ljava/lang/String; = "exchanged"


# instance fields
.field private final domain:Ljava/lang/String;

.field private final installationId:Ljava/lang/String;

.field private final state:Ljava/lang/String;

.field private final ttl:J


# direct methods
.method public static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto$a;-><init>(Ls1/z/c/f;)V

    sput-object v0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->Companion:Lcom/truecaller/account/network/ExchangeCredentialsResponseDto$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .locals 1

    const-string v0, "state"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->installationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->state:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->domain:Ljava/lang/String;

    iput-wide p4, p0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->ttl:J

    return-void
.end method


# virtual methods
.method public final getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getState()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->state:Ljava/lang/String;

    return-object v0
.end method

.method public final getTtl()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/account/network/ExchangeCredentialsResponseDto;->ttl:J

    return-wide v0
.end method
