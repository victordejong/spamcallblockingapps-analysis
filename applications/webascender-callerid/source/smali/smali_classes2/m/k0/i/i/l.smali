.class public final Lm/k0/i/i/l;
.super Lm/k0/i/i/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/k0/i/i/l$a;
    }
.end annotation


# static fields
.field public static final j:Lm/k0/i/i/l$a;


# instance fields
.field private final h:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class<",
            "*>;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/k0/i/i/l$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/k0/i/i/l$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/k0/i/i/l;->j:Lm/k0/i/i/l$a;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;Ljava/lang/Class;Ljava/lang/Class;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocket;",
            ">;",
            "Ljava/lang/Class<",
            "-",
            "Ljavax/net/ssl/SSLSocketFactory;",
            ">;",
            "Ljava/lang/Class<",
            "*>;)V"
        }
    .end annotation

    const-string v0, "sslSocketClass"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sslSocketFactoryClass"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "paramClass"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lm/k0/i/i/f;-><init>(Ljava/lang/Class;)V

    iput-object p2, p0, Lm/k0/i/i/l;->h:Ljava/lang/Class;

    iput-object p3, p0, Lm/k0/i/i/l;->i:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public d(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 2

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/k0/i/i/l;->i:Ljava/lang/Class;

    const-string v1, "sslParameters"

    invoke-static {p1, v0, v1}, Lm/k0/b;->G(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "x509TrustManager"

    .line 3
    invoke-static {p1, v0, v1}, Lm/k0/b;->G(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 4
    :cond_0
    const-class v0, Ljavax/net/ssl/X509TrustManager;

    const-string v1, "trustManager"

    .line 5
    invoke-static {p1, v0, v1}, Lm/k0/b;->G(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Ljavax/net/ssl/X509TrustManager;

    :goto_0
    return-object v0

    .line 6
    :cond_1
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1
.end method

.method public e(Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 1

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/k0/i/i/l;->h:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method
