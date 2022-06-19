.class public Lorg/apache/http/impl/auth/NTLMSchemeFactory;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/auth/AuthSchemeFactory;
.implements Lorg/apache/http/auth/AuthSchemeProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/auth/AuthScheme;
    .locals 0

    .line 1
    new-instance p1, Lorg/apache/http/impl/auth/NTLMScheme;

    invoke-direct {p1}, Lorg/apache/http/impl/auth/NTLMScheme;-><init>()V

    return-object p1
.end method

.method public newInstance(Lorg/apache/http/params/HttpParams;)Lorg/apache/http/auth/AuthScheme;
    .locals 0

    .line 1
    new-instance p1, Lorg/apache/http/impl/auth/NTLMScheme;

    invoke-direct {p1}, Lorg/apache/http/impl/auth/NTLMScheme;-><init>()V

    return-object p1
.end method
