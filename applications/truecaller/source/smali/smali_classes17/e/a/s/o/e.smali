.class public final Le/a/s/o/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/s/o/d;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Le/a/s/o/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/s/o/a;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "authRequestInterceptor"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/s/o/e;->a:Landroid/content/Context;

    iput-object p2, p0, Le/a/s/o/e;->b:Le/a/s/o/a;

    return-void
.end method

.method public static k(Le/a/s/o/e;ZZI)Le/a/s/o/f;
    .locals 3

    and-int/lit8 v0, p3, 0x1

    if-eqz v0, :cond_0

    const/4 p1, 0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/4 p2, 0x0

    .line 1
    :cond_1
    const-class p3, Le/a/s/o/f;

    new-instance v0, Lu3/e0$a;

    invoke-direct {v0}, Lu3/e0$a;-><init>()V

    if-eqz p1, :cond_2

    .line 2
    iget-object p1, p0, Le/a/s/o/e;->b:Le/a/s/o/a;

    invoke-virtual {v0, p1}, Lu3/e0$a;->a(Lu3/b0;)Lu3/e0$a;

    .line 3
    :cond_2
    invoke-static {p3}, Ls1/z/c/d0;->a(Ljava/lang/Class;)Ls1/a/c;

    move-result-object p1

    invoke-interface {p1}, Ls1/a/c;->c()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_0

    :cond_3
    const-string p1, ""

    :goto_0
    invoke-static {p1}, Le/a/n/g0;->F(Ljava/lang/String;)Ljava/util/List;

    .line 4
    new-instance p1, Le/a/s/o/c;

    invoke-direct {p1}, Le/a/s/o/c;-><init>()V

    invoke-virtual {v0, p1}, Lu3/e0$a;->a(Lu3/b0;)Lu3/e0$a;

    if-eqz p2, :cond_4

    .line 5
    new-instance p1, Lu3/d;

    .line 6
    new-instance p2, Ljava/io/File;

    iget-object p0, p0, Le/a/s/o/e;->a:Landroid/content/Context;

    invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;

    move-result-object p0

    const-string v1, "call_assistant_http"

    invoke-direct {p2, p0, v1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    const-wide/32 v1, 0x100000

    .line 7
    invoke-direct {p1, p2, v1, v2}, Lu3/d;-><init>(Ljava/io/File;J)V

    .line 8
    iput-object p1, v0, Lu3/e0$a;->k:Lu3/d;

    .line 9
    :cond_4
    new-instance p0, Le/m/e/l;

    invoke-direct {p0}, Le/m/e/l;-><init>()V

    const-string p1, "yyyy-MM-dd\'T\'HH:mm:ss.SSSZ"

    .line 10
    iput-object p1, p0, Le/m/e/l;->g:Ljava/lang/String;

    .line 11
    invoke-virtual {p0}, Le/m/e/l;->a()Le/m/e/k;

    move-result-object p0

    .line 12
    new-instance p1, Lx3/b0$b;

    invoke-direct {p1}, Lx3/b0$b;-><init>()V

    const-string p2, "https://callhero-dev.herokuapp.com/api/"

    .line 13
    invoke-virtual {p1, p2}, Lx3/b0$b;->a(Ljava/lang/String;)Lx3/b0$b;

    .line 14
    new-instance p2, Lx3/g0/a/a;

    invoke-direct {p2, p0}, Lx3/g0/a/a;-><init>(Le/m/e/k;)V

    .line 15
    iget-object p0, p1, Lx3/b0$b;->d:Ljava/util/List;

    invoke-interface {p0, p2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    new-instance p0, Lu3/e0;

    invoke-direct {p0, v0}, Lu3/e0;-><init>(Lu3/e0$a;)V

    .line 17
    invoke-virtual {p1, p0}, Lx3/b0$b;->d(Lu3/e0;)Lx3/b0$b;

    .line 18
    invoke-virtual {p1}, Lx3/b0$b;->c()Lx3/b0;

    move-result-object p0

    .line 19
    invoke-virtual {p0, p3}, Lx3/b0;->b(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p0

    const-string p1, "Retrofit.Builder()\n     \u2026stantRestApi::class.java)"

    invoke-static {p0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p0, Le/a/s/o/f;

    return-object p0
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/callhero_assistant/data/DisableServiceResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p0, v0, v0, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/s/o/f;->a(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/callhero_assistant/data/EnableServiceResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p0, v0, v0, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/s/o/f;->b(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/callhero_assistant/data/UpdatePreferencesResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p0, v0, v0, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/a/s/o/f;->c(Lcom/truecaller/callhero_assistant/data/UpdatePreferencesRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public d(Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/callhero_assistant/data/SaveCarrierResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p0, v0, v0, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/a/s/o/f;->d(Lcom/truecaller/callhero_assistant/data/SaveCarrierRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public e(Le/a/s/k/a;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/s/k/a;",
            "Ls1/w/d<",
            "-",
            "Le/a/s/k/b;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p0, v0, v0, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/a/s/o/f;->e(Le/a/s/k/a;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/Carrier;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p0, v0, v0, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/s/o/f;->f(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Lcom/truecaller/callhero_assistant/data/SignupTcRequestDto;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhero_assistant/data/SignupTcRequestDto;",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/callhero_assistant/data/SignupTcResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x2

    .line 1
    invoke-static {p0, v0, v0, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/a/s/o/f;->g(Lcom/truecaller/callhero_assistant/data/SignupTcRequestDto;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/callhero_assistant/data/ListVoicesResponseDto;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 1
    invoke-static {p0, v0, v1, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/s/o/f;->h(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;Ls1/w/d;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/callhero_assistant/data/ScreenedCall;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p0, v0, v0, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Le/a/s/o/f;->i(Lcom/truecaller/callhero_assistant/data/GetMyCallsRequest;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;)Lx3/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;",
            ")",
            "Lx3/b<",
            "Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersResponseDto;",
            ">;"
        }
    .end annotation

    const-string v0, "requestDto"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x3

    .line 1
    invoke-static {p0, v0, v0, v1}, Le/a/s/o/e;->k(Le/a/s/o/e;ZZI)Le/a/s/o/f;

    move-result-object v0

    invoke-interface {v0, p1}, Le/a/s/o/f;->j(Lcom/truecaller/callhero_assistant/data/SetWhitelistNumbersRequestDto;)Lx3/b;

    move-result-object p1

    return-object p1
.end method
