.class public final Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.common.payments.searchprofile.AddressProfileLoaderImpl$loadIntoUi$1$1"
    f = "AddressProfileLoader.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;->e:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;

    iput-object p2, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;->f:Ls1/z/c/c0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;

    iget-object v0, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;->e:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;

    iget-object v1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;-><init>(Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;->e:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;

    iget-object v0, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->j:Ls1/z/b/l;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b0/m/a/a;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p2
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;->e:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;

    iget-object p1, p1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->j:Ls1/z/b/l;

    iget-object v0, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;->f:Ls1/z/c/c0;

    iget-object v0, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v0, Le/a/b0/m/a/a;

    invoke-interface {p1, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
