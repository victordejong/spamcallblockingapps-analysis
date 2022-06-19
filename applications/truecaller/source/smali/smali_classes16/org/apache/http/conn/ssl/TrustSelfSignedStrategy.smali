.class public Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/conn/ssl/TrustStrategy;


# static fields
.field public static final INSTANCE:Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;

    invoke-direct {v0}, Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;-><init>()V

    sput-object v0, Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;->INSTANCE:Lorg/apache/http/conn/ssl/TrustSelfSignedStrategy;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public isTrusted([Ljava/security/cert/X509Certificate;Ljava/lang/String;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/security/cert/CertificateException;
        }
    .end annotation

    .line 1
    array-length p1, p1

    const/4 p2, 0x1

    if-ne p1, p2, :cond_0

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
