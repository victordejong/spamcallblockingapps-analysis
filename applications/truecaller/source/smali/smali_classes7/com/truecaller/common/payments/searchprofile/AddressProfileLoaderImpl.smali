.class public final Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/b0/m/c/a;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0008\n\u0002\u0018\u0002\n\u0002\u0008\u0006\u0018\u00002\u00020\u0001B%\u0008\u0007\u0012\u0008\u0008\u0001\u0010\u0017\u001a\u00020\u0014\u0012\u0008\u0008\u0001\u0010\u001c\u001a\u00020\u0014\u0012\u0006\u0010 \u001a\u00020\u001d\u00a2\u0006\u0004\u0008!\u0010\"J-\u0010\t\u001a\u00020\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0014\u0008\u0001\u0010\u0007\u001a\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00060\u0004H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ\u0017\u0010\u000b\u001a\u00020\u00052\u0006\u0010\u0003\u001a\u00020\u0002H\u0016\u00a2\u0006\u0004\u0008\u000b\u0010\u000cJ\u000f\u0010\r\u001a\u00020\u0006H\u0007\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0013\u001a\u00020\u00088B@\u0002X\u0082\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u000f\u0010\u0010\u001a\u0004\u0008\u0011\u0010\u0012R\u0016\u0010\u0017\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0016R\u0016\u0010\u001a\u001a\u00020\u00148V@\u0016X\u0096\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0018\u0010\u0019R\u0016\u0010\u001c\u001a\u00020\u00148\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001b\u0010\u0016R\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u001e\u0010\u001f\u00a8\u0006#"
    }
    d2 = {
        "Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;",
        "Le/a/b0/m/c/a;",
        "",
        "address",
        "Lkotlin/Function1;",
        "Le/a/b0/m/a/a;",
        "Ls1/s;",
        "execute",
        "Lq3/a/p1;",
        "Iz",
        "(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;",
        "Kw",
        "(Ljava/lang/String;)Le/a/b0/m/a/a;",
        "destroy",
        "()V",
        "a",
        "Ls1/g;",
        "getJob",
        "()Lq3/a/p1;",
        "job",
        "Ls1/w/f;",
        "b",
        "Ls1/w/f;",
        "ioContext",
        "getCoroutineContext",
        "()Ls1/w/f;",
        "coroutineContext",
        "c",
        "uiContext",
        "Le/a/b0/m/a/b;",
        "d",
        "Le/a/b0/m/a/b;",
        "addressProfileProvider",
        "<init>",
        "(Ls1/w/f;Ls1/w/f;Le/a/b0/m/a/b;)V",
        "common-payments_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/w/f;

.field public final c:Ls1/w/f;

.field public final d:Le/a/b0/m/a/b;


# direct methods
.method public constructor <init>(Ls1/w/f;Ls1/w/f;Le/a/b0/m/a/b;)V
    .locals 1
    .param p1    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "ioContext"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "addressProfileProvider"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->b:Ls1/w/f;

    iput-object p2, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->c:Ls1/w/f;

    iput-object p3, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->d:Le/a/b0/m/a/b;

    .line 2
    sget-object p1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$a;->b:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$a;

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Le/a/b0/m/a/a;",
            "Ls1/s;",
            ">;)",
            "Lq3/a/p1;"
        }
    .end annotation

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "execute"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v4, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, p2, v0}, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;-><init>(Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)V

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v5, 0x3

    const/4 v6, 0x0

    move-object v1, p0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object p1

    return-object p1
.end method

.method public Kw(Ljava/lang/String;)Le/a/b0/m/a/a;
    .locals 3

    const-string v0, "address"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->getCoroutineContext()Ls1/w/f;

    move-result-object v0

    new-instance v1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$b;-><init>(Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;Ljava/lang/String;Ls1/w/d;)V

    invoke-static {v0, v1}, Ls1/a/a/a/v0/f/d;->b3(Ls1/w/f;Ls1/z/b/p;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/b0/m/a/a;

    return-object p1
.end method

.method public final destroy()V
    .locals 3
    .annotation runtime Ln3/v/m0;
        value = .enum Ln3/v/u$a;->ON_DESTROY:Ln3/v/u$a;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lq3/a/p1;

    const/4 v1, 0x0

    const/4 v2, 0x1

    .line 2
    invoke-static {v0, v1, v2, v1}, Ls1/a/a/a/v0/f/d;->Y(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    return-void
.end method

.method public getCoroutineContext()Ls1/w/f;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->b:Ls1/w/f;

    .line 2
    iget-object v1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->a:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lq3/a/p1;

    .line 3
    invoke-interface {v0, v1}, Ls1/w/f;->plus(Ls1/w/f;)Ls1/w/f;

    move-result-object v0

    return-object v0
.end method
