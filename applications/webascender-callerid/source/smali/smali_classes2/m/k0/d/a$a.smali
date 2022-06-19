.class public final Lm/k0/d/a$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lm/k0/d/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/w/c/g;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lm/k0/d/a$a;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lm/k0/d/a$a;Lm/x;Lm/x;)Lm/x;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lm/k0/d/a$a;->c(Lm/x;Lm/x;)Lm/x;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lm/k0/d/a$a;Lm/g0;)Lm/g0;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lm/k0/d/a$a;->f(Lm/g0;)Lm/g0;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lm/x;Lm/x;)Lm/x;
    .locals 9

    .line 1
    new-instance v0, Lm/x$a;

    invoke-direct {v0}, Lm/x$a;-><init>()V

    .line 2
    invoke-virtual {p1}, Lm/x;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_3

    .line 3
    invoke-virtual {p1, v3}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v4

    .line 4
    invoke-virtual {p1, v3}, Lm/x;->j(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, "Warning"

    const/4 v7, 0x1

    .line 5
    invoke-static {v6, v4, v7}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v6

    if-eqz v6, :cond_0

    const/4 v6, 0x2

    const/4 v7, 0x0

    const-string v8, "1"

    invoke-static {v5, v8, v2, v6, v7}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    invoke-direct {p0, v4}, Lm/k0/d/a$a;->d(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 7
    invoke-direct {p0, v4}, Lm/k0/d/a$a;->e(Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 8
    invoke-virtual {p2, v4}, Lm/x;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_2

    .line 9
    :cond_1
    invoke-virtual {v0, v4, v5}, Lm/x$a;->d(Ljava/lang/String;Ljava/lang/String;)Lm/x$a;

    :cond_2
    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 10
    :cond_3
    invoke-virtual {p2}, Lm/x;->size()I

    move-result p1

    :goto_2
    if-ge v2, p1, :cond_5

    .line 11
    invoke-virtual {p2, v2}, Lm/x;->g(I)Ljava/lang/String;

    move-result-object v1

    .line 12
    invoke-direct {p0, v1}, Lm/k0/d/a$a;->d(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_4

    invoke-direct {p0, v1}, Lm/k0/d/a$a;->e(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 13
    invoke-virtual {p2, v2}, Lm/x;->j(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v1, v3}, Lm/x$a;->d(Ljava/lang/String;Ljava/lang/String;)Lm/x$a;

    :cond_4
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 14
    :cond_5
    invoke-virtual {v0}, Lm/x$a;->e()Lm/x;

    move-result-object p1

    return-object p1
.end method

.method private final d(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Content-Length"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Encoding"

    .line 2
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "Content-Type"

    .line 3
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :cond_1
    :goto_0
    return v1
.end method

.method private final e(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "Connection"

    const/4 v1, 0x1

    .line 1
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Keep-Alive"

    .line 2
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authenticate"

    .line 3
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Proxy-Authorization"

    .line 4
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "TE"

    .line 5
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Trailers"

    .line 6
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Transfer-Encoding"

    .line 7
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "Upgrade"

    .line 8
    invoke-static {v0, p1, v1}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-nez p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method private final f(Lm/g0;)Lm/g0;
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    .line 1
    invoke-virtual {p1}, Lm/g0;->a()Lm/h0;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    :goto_0
    if-eqz v1, :cond_1

    .line 2
    invoke-virtual {p1}, Lm/g0;->C()Lm/g0$a;

    move-result-object p1

    invoke-virtual {p1, v0}, Lm/g0$a;->b(Lm/h0;)Lm/g0$a;

    invoke-virtual {p1}, Lm/g0$a;->c()Lm/g0;

    move-result-object p1

    :cond_1
    return-object p1
.end method
