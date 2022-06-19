.class public Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation build Lorg/apache/http/annotation/Contract;
    threading = .enum Lorg/apache/http/annotation/ThreadingBehavior;->IMMUTABLE:Lorg/apache/http/annotation/ThreadingBehavior;
.end annotation

.annotation build Lorg/apache/http/annotation/Obsolete;
.end annotation


# instance fields
.field private volatile cookieSpec:Lorg/apache/http/cookie/CookieSpec;

.field private final datepatterns:[Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;-><init>([Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>([Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->datepatterns:[Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 1

    .line 1
    iget-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez p1, :cond_1

    .line 2
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    if-nez p1, :cond_0

    .line 4
    new-instance p1, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;

    iget-object v0, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->datepatterns:[Ljava/lang/String;

    invoke-direct {p1, v0}, Lorg/apache/http/impl/cookie/NetscapeDraftSpec;-><init>([Ljava/lang/String;)V

    iput-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    .line 5
    :cond_0
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 6
    :cond_1
    :goto_0
    iget-object p1, p0, Lorg/apache/http/impl/cookie/NetscapeDraftSpecProvider;->cookieSpec:Lorg/apache/http/cookie/CookieSpec;

    return-object p1
.end method
