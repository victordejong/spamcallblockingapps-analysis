.class public Lorg/apache/http/impl/auth/NTLMScheme;
.super Lorg/apache/http/impl/auth/AuthSchemeBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/apache/http/impl/auth/NTLMScheme$State;
    }
.end annotation


# instance fields
.field private challenge:Ljava/lang/String;

.field private final engine:Lorg/apache/http/impl/auth/NTLMEngine;

.field private state:Lorg/apache/http/impl/auth/NTLMScheme$State;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 6
    new-instance v0, Lorg/apache/http/impl/auth/NTLMEngineImpl;

    invoke-direct {v0}, Lorg/apache/http/impl/auth/NTLMEngineImpl;-><init>()V

    invoke-direct {p0, v0}, Lorg/apache/http/impl/auth/NTLMScheme;-><init>(Lorg/apache/http/impl/auth/NTLMEngine;)V

    return-void
.end method

.method public constructor <init>(Lorg/apache/http/impl/auth/NTLMEngine;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;-><init>()V

    const-string v0, "NTLM engine"

    .line 2
    invoke-static {p1, v0}, Lorg/apache/http/util/Args;->notNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    .line 4
    sget-object p1, Lorg/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    const/4 p1, 0x0

    .line 5
    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public authenticate(Lorg/apache/http/auth/Credentials;Lorg/apache/http/HttpRequest;)Lorg/apache/http/Header;
    .locals 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/AuthenticationException;
        }
    .end annotation

    .line 1
    :try_start_0
    check-cast p1, Lorg/apache/http/auth/NTCredentials;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 2
    iget-object p2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-eq p2, v0, :cond_3

    .line 3
    sget-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-ne p2, v0, :cond_0

    .line 4
    iget-object p2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object p1

    invoke-interface {p2, v0, p1}, Lorg/apache/http/impl/auth/NTLMEngine;->generateType1Msg(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 5
    sget-object p2, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object p2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 6
    :cond_0
    sget-object v0, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-ne p2, v0, :cond_2

    .line 7
    iget-object v1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->engine:Lorg/apache/http/impl/auth/NTLMEngine;

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getUserName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getPassword()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getDomain()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1}, Lorg/apache/http/auth/NTCredentials;->getWorkstation()Ljava/lang/String;

    move-result-object v5

    iget-object v6, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    invoke-interface/range {v1 .. v6}, Lorg/apache/http/impl/auth/NTLMEngine;->generateType3Msg(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 8
    sget-object p2, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object p2, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 9
    :goto_0
    new-instance p2, Lorg/apache/http/util/CharArrayBuffer;

    const/16 v0, 0x20

    invoke-direct {p2, v0}, Lorg/apache/http/util/CharArrayBuffer;-><init>(I)V

    .line 10
    invoke-virtual {p0}, Lorg/apache/http/impl/auth/AuthSchemeBase;->isProxy()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "Proxy-Authorization"

    .line 11
    invoke-virtual {p2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    const-string v0, "Authorization"

    .line 12
    invoke-virtual {p2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    :goto_1
    const-string v0, ": NTLM "

    .line 13
    invoke-virtual {p2, v0}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 14
    invoke-virtual {p2, p1}, Lorg/apache/http/util/CharArrayBuffer;->append(Ljava/lang/String;)V

    .line 15
    new-instance p1, Lorg/apache/http/message/BufferedHeader;

    invoke-direct {p1, p2}, Lorg/apache/http/message/BufferedHeader;-><init>(Lorg/apache/http/util/CharArrayBuffer;)V

    return-object p1

    .line 16
    :cond_2
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    const-string p2, "Unexpected state: "

    invoke-static {p2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 17
    :cond_3
    new-instance p1, Lorg/apache/http/auth/AuthenticationException;

    const-string p2, "NTLM authentication failed"

    invoke-direct {p1, p2}, Lorg/apache/http/auth/AuthenticationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :catch_0
    new-instance p2, Lorg/apache/http/auth/InvalidCredentialsException;

    const-string v0, "Credentials cannot be used for NTLM authentication: "

    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Lorg/apache/http/auth/InvalidCredentialsException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public getParameter(Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    const/4 p1, 0x0

    return-object p1
.end method

.method public getRealm()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public getSchemeName()Ljava/lang/String;
    .locals 1

    const-string v0, "ntlm"

    return-object v0
.end method

.method public isComplete()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE3_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-eq v0, v1, :cond_1

    sget-object v1, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-ne v0, v1, :cond_0

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

.method public isConnectionBased()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public parseChallenge(Lorg/apache/http/util/CharArrayBuffer;II)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/apache/http/auth/MalformedChallengeException;
        }
    .end annotation

    .line 1
    invoke-virtual {p1, p2, p3}, Lorg/apache/http/util/CharArrayBuffer;->substringTrimmed(II)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->challenge:Ljava/lang/String;

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object p2, Lorg/apache/http/impl/auth/NTLMScheme$State;->UNINITIATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-ne p1, p2, :cond_0

    .line 4
    sget-object p1, Lorg/apache/http/impl/auth/NTLMScheme$State;->CHALLENGE_RECEIVED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 5
    :cond_0
    sget-object p1, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    goto :goto_0

    .line 6
    :cond_1
    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    sget-object p2, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE1_GENERATED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    invoke-virtual {p1, p2}, Ljava/lang/Enum;->compareTo(Ljava/lang/Enum;)I

    move-result p1

    if-ltz p1, :cond_3

    .line 7
    iget-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    if-ne p1, p2, :cond_2

    .line 8
    sget-object p1, Lorg/apache/http/impl/auth/NTLMScheme$State;->MSG_TYPE2_RECEVIED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    :cond_2
    :goto_0
    return-void

    .line 9
    :cond_3
    sget-object p1, Lorg/apache/http/impl/auth/NTLMScheme$State;->FAILED:Lorg/apache/http/impl/auth/NTLMScheme$State;

    iput-object p1, p0, Lorg/apache/http/impl/auth/NTLMScheme;->state:Lorg/apache/http/impl/auth/NTLMScheme$State;

    .line 10
    new-instance p1, Lorg/apache/http/auth/MalformedChallengeException;

    const-string p2, "Out of sequence NTLM response message"

    invoke-direct {p1, p2}, Lorg/apache/http/auth/MalformedChallengeException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
