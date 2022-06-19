.class public final Lm/k0/i/i/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lm/k0/i/i/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/k0/i/i/j$a;
    }
.end annotation


# instance fields
.field private a:Lm/k0/i/i/k;

.field private final b:Lm/k0/i/i/j$a;


# direct methods
.method public constructor <init>(Lm/k0/i/i/j$a;)V
    .locals 1

    const-string v0, "socketAdapterFactory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lm/k0/i/i/j;->b:Lm/k0/i/i/j$a;

    return-void
.end method

.method private final declared-synchronized g(Ljavax/net/ssl/SSLSocket;)Lm/k0/i/i/k;
    .locals 1

    monitor-enter p0

    .line 1
    :try_start_0
    iget-object v0, p0, Lm/k0/i/i/j;->a:Lm/k0/i/i/k;

    if-nez v0, :cond_0

    iget-object v0, p0, Lm/k0/i/i/j;->b:Lm/k0/i/i/j$a;

    invoke-interface {v0, p1}, Lm/k0/i/i/j$a;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lm/k0/i/i/j;->b:Lm/k0/i/i/j$a;

    invoke-interface {v0, p1}, Lm/k0/i/i/j$a;->b(Ljavax/net/ssl/SSLSocket;)Lm/k0/i/i/k;

    move-result-object p1

    iput-object p1, p0, Lm/k0/i/i/j;->a:Lm/k0/i/i/k;

    .line 3
    :cond_0
    iget-object p1, p0, Lm/k0/i/i/j;->a:Lm/k0/i/i/k;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-object p1

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method


# virtual methods
.method public a(Ljavax/net/ssl/SSLSocket;)Z
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/k0/i/i/j;->b:Lm/k0/i/i/j$a;

    invoke-interface {v0, p1}, Lm/k0/i/i/j$a;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result p1

    return p1
.end method

.method public b()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public c(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 1

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lm/k0/i/i/j;->g(Ljavax/net/ssl/SSLSocket;)Lm/k0/i/i/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Lm/k0/i/i/k;->c(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return-object p1
.end method

.method public d(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 1

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lm/k0/i/i/k$a;->b(Lm/k0/i/i/k;Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljavax/net/ssl/SSLSocketFactory;)Z
    .locals 1

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lm/k0/i/i/k$a;->a(Lm/k0/i/i/k;Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result p1

    return p1
.end method

.method public f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "+",
            "Lm/d0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "protocols"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lm/k0/i/i/j;->g(Ljavax/net/ssl/SSLSocket;)Lm/k0/i/i/k;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-interface {v0, p1, p2, p3}, Lm/k0/i/i/k;->f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_0
    return-void
.end method
