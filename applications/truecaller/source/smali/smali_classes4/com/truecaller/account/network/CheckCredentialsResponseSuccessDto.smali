.class public final Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;
.super Le/a/n2/a/e;
.source "SourceFile"


# annotations
.annotation build Landroidx/annotation/Keep;
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\t\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0002\u0008\u0004\n\u0002\u0010\u000e\n\u0002\u0008\u000f\u0008\u0007\u0018\u00002\u00020\u0001B?\u0012\u0006\u0010\u0011\u001a\u00020\u0002\u0012\u0006\u0010\u0015\u001a\u00020\u000c\u0012\u0008\u0010\r\u001a\u0004\u0018\u00010\u000c\u0012\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002\u0012\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007\u0012\u0008\u0010\u0017\u001a\u0004\u0018\u00010\u0002\u00a2\u0006\u0004\u0008\u0019\u0010\u001aR\u001b\u0010\u0003\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0003\u0010\u0004\u001a\u0004\u0008\u0005\u0010\u0006R\u001b\u0010\u0008\u001a\u0004\u0018\u00010\u00078\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0008\u0010\t\u001a\u0004\u0008\n\u0010\u000bR\u001b\u0010\r\u001a\u0004\u0018\u00010\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\r\u0010\u000e\u001a\u0004\u0008\u000f\u0010\u0010R\u0019\u0010\u0011\u001a\u00020\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0011\u0010\u0012\u001a\u0004\u0008\u0013\u0010\u0014R\u0019\u0010\u0015\u001a\u00020\u000c8\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0015\u0010\u000e\u001a\u0004\u0008\u0016\u0010\u0010R\u001b\u0010\u0017\u001a\u0004\u0018\u00010\u00028\u0006@\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0004\u001a\u0004\u0008\u0018\u0010\u0006\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;",
        "Le/a/n2/a/e;",
        "",
        "ttl",
        "Ljava/lang/Long;",
        "getTtl",
        "()Ljava/lang/Long;",
        "",
        "suspended",
        "Ljava/lang/Boolean;",
        "getSuspended",
        "()Ljava/lang/Boolean;",
        "",
        "installationId",
        "Ljava/lang/String;",
        "getInstallationId",
        "()Ljava/lang/String;",
        "nextCallDuration",
        "J",
        "getNextCallDuration",
        "()J",
        "domain",
        "getDomain",
        "nextSuspensionCheck",
        "getNextSuspensionCheck",
        "<init>",
        "(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V",
        "account-network_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final domain:Ljava/lang/String;

.field private final installationId:Ljava/lang/String;

.field private final nextCallDuration:J

.field private final nextSuspensionCheck:Ljava/lang/Long;

.field private final suspended:Ljava/lang/Boolean;

.field private final ttl:Ljava/lang/Long;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Long;)V
    .locals 1

    const-string v0, "domain"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Le/a/n2/a/e;-><init>(Ls1/z/c/f;)V

    iput-wide p1, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->nextCallDuration:J

    iput-object p3, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->domain:Ljava/lang/String;

    iput-object p4, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->installationId:Ljava/lang/String;

    iput-object p5, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->ttl:Ljava/lang/Long;

    iput-object p6, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->suspended:Ljava/lang/Boolean;

    iput-object p7, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->nextSuspensionCheck:Ljava/lang/Long;

    return-void
.end method


# virtual methods
.method public final getDomain()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->domain:Ljava/lang/String;

    return-object v0
.end method

.method public final getInstallationId()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->installationId:Ljava/lang/String;

    return-object v0
.end method

.method public final getNextCallDuration()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->nextCallDuration:J

    return-wide v0
.end method

.method public final getNextSuspensionCheck()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->nextSuspensionCheck:Ljava/lang/Long;

    return-object v0
.end method

.method public final getSuspended()Ljava/lang/Boolean;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->suspended:Ljava/lang/Boolean;

    return-object v0
.end method

.method public final getTtl()Ljava/lang/Long;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/account/network/CheckCredentialsResponseSuccessDto;->ttl:Ljava/lang/Long;

    return-object v0
.end method
