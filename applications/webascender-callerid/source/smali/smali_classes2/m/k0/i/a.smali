.class public final Lm/k0/i/a;
.super Lm/k0/i/h;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lm/k0/i/a$a;
    }
.end annotation


# static fields
.field private static final e:Z

.field public static final f:Lm/k0/i/a$a;


# instance fields
.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lm/k0/i/i/k;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lm/k0/i/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lm/k0/i/a$a;-><init>(Lkotlin/w/c/g;)V

    sput-object v0, Lm/k0/i/a;->f:Lm/k0/i/a$a;

    .line 1
    sget-object v0, Lm/k0/i/h;->c:Lm/k0/i/h$a;

    invoke-virtual {v0}, Lm/k0/i/h$a;->h()Z

    move-result v0

    if-eqz v0, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    sput-boolean v0, Lm/k0/i/a;->e:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 4

    .line 1
    invoke-direct {p0}, Lm/k0/i/h;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [Lm/k0/i/i/k;

    .line 2
    sget-object v1, Lm/k0/i/i/a;->a:Lm/k0/i/i/a$a;

    invoke-virtual {v1}, Lm/k0/i/i/a$a;->a()Lm/k0/i/i/k;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3
    new-instance v1, Lm/k0/i/i/j;

    sget-object v2, Lm/k0/i/i/f;->g:Lm/k0/i/i/f$a;

    invoke-virtual {v2}, Lm/k0/i/i/f$a;->d()Lm/k0/i/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lm/k0/i/i/j;-><init>(Lm/k0/i/i/j$a;)V

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 4
    new-instance v1, Lm/k0/i/i/j;

    sget-object v2, Lm/k0/i/i/i;->b:Lm/k0/i/i/i$b;

    invoke-virtual {v2}, Lm/k0/i/i/i$b;->a()Lm/k0/i/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lm/k0/i/i/j;-><init>(Lm/k0/i/i/j$a;)V

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 5
    new-instance v1, Lm/k0/i/i/j;

    sget-object v2, Lm/k0/i/i/g;->b:Lm/k0/i/i/g$b;

    invoke-virtual {v2}, Lm/k0/i/i/g$b;->a()Lm/k0/i/i/j$a;

    move-result-object v2

    invoke-direct {v1, v2}, Lm/k0/i/i/j;-><init>(Lm/k0/i/i/j$a;)V

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 6
    invoke-static {v0}, Lkotlin/s/k;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v3, v2

    check-cast v3, Lm/k0/i/i/k;

    .line 9
    invoke-interface {v3}, Lm/k0/i/i/k;->b()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_1
    iput-object v1, p0, Lm/k0/i/a;->d:Ljava/util/List;

    return-void
.end method

.method public static final synthetic r()Z
    .locals 1

    .line 1
    sget-boolean v0, Lm/k0/i/a;->e:Z

    return v0
.end method


# virtual methods
.method public c(Ljavax/net/ssl/X509TrustManager;)Lm/k0/k/c;
    .locals 1

    const-string v0, "trustManager"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lm/k0/i/i/b;->d:Lm/k0/i/i/b$a;

    invoke-virtual {v0, p1}, Lm/k0/i/i/b$a;->a(Ljavax/net/ssl/X509TrustManager;)Lm/k0/i/i/b;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-super {p0, p1}, Lm/k0/i/h;->c(Ljavax/net/ssl/X509TrustManager;)Lm/k0/k/c;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public e(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V
    .locals 3
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
    iget-object v0, p0, Lm/k0/i/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Lm/k0/i/i/k;

    invoke-interface {v2, p1}, Lm/k0/i/i/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    check-cast v1, Lm/k0/i/i/k;

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v1, p1, p2, p3}, Lm/k0/i/i/k;->f(Ljavax/net/ssl/SSLSocket;Ljava/lang/String;Ljava/util/List;)V

    :cond_2
    return-void
.end method

.method public h(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;
    .locals 4

    const-string v0, "sslSocket"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/k0/i/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lm/k0/i/i/k;

    invoke-interface {v3, p1}, Lm/k0/i/i/k;->a(Ljavax/net/ssl/SSLSocket;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lm/k0/i/i/k;

    if-eqz v1, :cond_2

    invoke-interface {v1, p1}, Lm/k0/i/i/k;->c(Ljavax/net/ssl/SSLSocket;)Ljava/lang/String;

    move-result-object v2

    :cond_2
    return-object v2
.end method

.method public j(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "hostname"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Landroid/security/NetworkSecurityPolicy;->getInstance()Landroid/security/NetworkSecurityPolicy;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/security/NetworkSecurityPolicy;->isCleartextTrafficPermitted(Ljava/lang/String;)Z

    move-result p1

    return p1
.end method

.method public q(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;
    .locals 4

    const-string v0, "sslSocketFactory"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lm/k0/i/a;->d:Ljava/util/List;

    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v3, v1

    check-cast v3, Lm/k0/i/i/k;

    invoke-interface {v3, p1}, Lm/k0/i/i/k;->e(Ljavax/net/ssl/SSLSocketFactory;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_0

    :cond_1
    move-object v1, v2

    :goto_0
    check-cast v1, Lm/k0/i/i/k;

    if-eqz v1, :cond_2

    .line 2
    invoke-interface {v1, p1}, Lm/k0/i/i/k;->d(Ljavax/net/ssl/SSLSocketFactory;)Ljavax/net/ssl/X509TrustManager;

    move-result-object v2

    :cond_2
    return-object v2
.end method
