.class public Lorg/apache/http/cookie/CookieSpecRegistry$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/http/cookie/CookieSpecProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/apache/http/cookie/CookieSpecRegistry;->lookup(Ljava/lang/String;)Lorg/apache/http/cookie/CookieSpecProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic this$0:Lorg/apache/http/cookie/CookieSpecRegistry;

.field public final synthetic val$name:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lorg/apache/http/cookie/CookieSpecRegistry;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lorg/apache/http/cookie/CookieSpecRegistry$1;->this$0:Lorg/apache/http/cookie/CookieSpecRegistry;

    iput-object p2, p0, Lorg/apache/http/cookie/CookieSpecRegistry$1;->val$name:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Lorg/apache/http/protocol/HttpContext;)Lorg/apache/http/cookie/CookieSpec;
    .locals 2

    const-string v0, "http.request"

    .line 1
    invoke-interface {p1, v0}, Lorg/apache/http/protocol/HttpContext;->getAttribute(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lorg/apache/http/HttpRequest;

    .line 2
    iget-object v0, p0, Lorg/apache/http/cookie/CookieSpecRegistry$1;->this$0:Lorg/apache/http/cookie/CookieSpecRegistry;

    iget-object v1, p0, Lorg/apache/http/cookie/CookieSpecRegistry$1;->val$name:Ljava/lang/String;

    invoke-interface {p1}, Lorg/apache/http/HttpMessage;->getParams()Lorg/apache/http/params/HttpParams;

    move-result-object p1

    invoke-virtual {v0, v1, p1}, Lorg/apache/http/cookie/CookieSpecRegistry;->getCookieSpec(Ljava/lang/String;Lorg/apache/http/params/HttpParams;)Lorg/apache/http/cookie/CookieSpec;

    move-result-object p1

    return-object p1
.end method
