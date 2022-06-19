.class public final Lm/k0/i/i/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/k0/i/i/j$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/k0/i/i/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lm/k0/i/c;->f:Lm/k0/i/c$a;

    invoke-virtual {v0}, Lm/k0/i/c$a;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    instance-of p1, p1, Lorg/bouncycastle/jsse/BCSSLSocket;

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public b(Ljavax/net/ssl/SSLSocket;)Lm/k0/i/i/k;
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance p1, Lm/k0/i/i/g;

    invoke-direct {p1}, Lm/k0/i/i/g;-><init>()V

    return-object p1
.end method
