.class public final Lg/g/a/e/e/e;
.super Lg/g/a/e/e/h;
.source "SourceFile"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lg/g/a/e/e/h;-><init>()V

    return-void
.end method


# virtual methods
.method public D()Ljava/lang/String;
    .locals 1

    const-string v0, "EVENT"

    return-object v0
.end method

.method public G(Lm/f;)Z
    .locals 4

    const-string v0, "call"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lm/f;->request()Lm/e0;

    move-result-object p1

    invoke-virtual {p1}, Lm/e0;->l()Lm/y;

    move-result-object p1

    invoke-virtual {p1}, Lm/y;->u()Ljava/net/URI;

    move-result-object p1

    invoke-virtual {p1}, Ljava/net/URI;->getPath()Ljava/lang/String;

    move-result-object p1

    const-string v0, "call.request().url.toUri().path"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phone_numbers/eventProfile"

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {p1, v0, v1, v2, v3}, Lkotlin/c0/m;->I(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZILjava/lang/Object;)Z

    move-result p1

    return p1
.end method
