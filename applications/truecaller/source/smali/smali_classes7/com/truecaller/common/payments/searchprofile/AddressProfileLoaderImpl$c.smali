.class public final Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->Iz(Ljava/lang/String;Ls1/z/b/l;)Lq3/a/p1;
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
    c = "com.truecaller.common.payments.searchprofile.AddressProfileLoaderImpl$loadIntoUi$1"
    f = "AddressProfileLoader.kt"
    l = {
        0x2d,
        0x2e
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:Ljava/lang/Object;

.field public g:I

.field public final synthetic h:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;

.field public final synthetic i:Ljava/lang/String;

.field public final synthetic j:Ls1/z/b/l;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->h:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;

    iput-object p2, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->i:Ljava/lang/String;

    iput-object p3, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->j:Ls1/z/b/l;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
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

    new-instance p1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;

    iget-object v0, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->h:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;

    iget-object v1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->j:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;-><init>(Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;

    iget-object v0, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->h:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;

    iget-object v1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->i:Ljava/lang/String;

    iget-object v2, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->j:Ls1/z/b/l;

    invoke-direct {p1, v0, v1, v2, p2}, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;-><init>(Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;Ljava/lang/String;Ls1/z/b/l;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->g:I

    const/4 v2, 0x2

    const/4 v3, 0x1

    if-eqz v1, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->f:Ljava/lang/Object;

    check-cast v1, Ls1/z/c/c0;

    iget-object v3, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->e:Ljava/lang/Object;

    check-cast v3, Ls1/z/c/c0;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    :cond_2
    invoke-static {p1}, Le/d/c/a/a;->d0(Ljava/lang/Object;)Ls1/z/c/c0;

    move-result-object v1

    .line 4
    iget-object p1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->h:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;

    .line 5
    iget-object p1, p1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->d:Le/a/b0/m/a/b;

    .line 6
    iget-object v4, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->i:Ljava/lang/String;

    iput-object v1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->e:Ljava/lang/Object;

    iput-object v1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->f:Ljava/lang/Object;

    iput v3, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->g:I

    check-cast p1, Le/a/b0/m/a/c;

    invoke-virtual {p1, v4, p0}, Le/a/b0/m/a/c;->a(Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_3

    return-object v0

    :cond_3
    move-object v3, v1

    .line 7
    :goto_0
    check-cast p1, Le/a/b0/m/a/a;

    iput-object p1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 8
    iget-object p1, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->h:Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;

    .line 9
    iget-object p1, p1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl;->c:Ls1/w/f;

    .line 10
    new-instance v1, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;

    const/4 v4, 0x0

    invoke-direct {v1, p0, v3, v4}, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c$a;-><init>(Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;Ls1/z/c/c0;Ls1/w/d;)V

    iput-object v4, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->e:Ljava/lang/Object;

    iput-object v4, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->f:Ljava/lang/Object;

    iput v2, p0, Lcom/truecaller/common/payments/searchprofile/AddressProfileLoaderImpl$c;->g:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    .line 11
    :cond_4
    :goto_1
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
