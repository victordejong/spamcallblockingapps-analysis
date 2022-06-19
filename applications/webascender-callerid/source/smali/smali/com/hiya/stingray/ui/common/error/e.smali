.class public Lcom/hiya/stingray/ui/common/error/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Lcom/hiya/stingray/ui/common/error/c;

.field private final c:Lcom/hiya/stingray/ui/login/o;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/ui/common/error/c;Lcom/hiya/stingray/ui/login/o;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/ui/common/error/e;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/ui/common/error/e;->b:Lcom/hiya/stingray/ui/common/error/c;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/ui/common/error/e;->c:Lcom/hiya/stingray/ui/login/o;

    return-void
.end method

.method static synthetic a(Lcom/hiya/stingray/ui/common/error/e;Ljava/lang/Throwable;)Lg/g/a/a/b;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/error/e;->e(Ljava/lang/Throwable;)Lg/g/a/a/b;

    move-result-object p0

    return-object p0
.end method

.method static synthetic b(Lcom/hiya/stingray/ui/common/error/e;)Lcom/hiya/stingray/ui/common/error/c;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/common/error/e;->b:Lcom/hiya/stingray/ui/common/error/c;

    return-object p0
.end method

.method static synthetic c(Lcom/hiya/stingray/ui/common/error/e;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/common/error/e;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic d(Lcom/hiya/stingray/ui/common/error/e;)Lcom/hiya/stingray/ui/login/o;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/ui/common/error/e;->c:Lcom/hiya/stingray/ui/login/o;

    return-object p0
.end method

.method private e(Ljava/lang/Throwable;)Lg/g/a/a/b;
    .locals 2

    .line 1
    sget-object v0, Lg/g/a/a/d;->UNDEFINED:Lg/g/a/a/d;

    .line 2
    instance-of v1, p1, Lcom/hiya/api/exception/HiyaRetrofitException;

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/hiya/api/exception/HiyaRetrofitException;

    .line 4
    invoke-virtual {p1}, Lcom/hiya/api/exception/HiyaRetrofitException;->c()Lg/g/a/a/b;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/hiya/stingray/exception/HiyaGenericException;

    if-eqz v1, :cond_1

    .line 6
    check-cast p1, Lcom/hiya/stingray/exception/HiyaGenericException;

    .line 7
    invoke-virtual {p1}, Lcom/hiya/stingray/exception/HiyaGenericException;->b()Lg/g/a/a/b;

    move-result-object p1

    return-object p1

    .line 8
    :cond_1
    instance-of v1, p1, Lcom/hiya/stingray/exception/HiyaDbException;

    if-eqz v1, :cond_2

    .line 9
    check-cast p1, Lcom/hiya/stingray/exception/HiyaDbException;

    .line 10
    invoke-virtual {p1}, Lcom/hiya/stingray/exception/HiyaDbException;->b()Lg/g/a/a/b;

    move-result-object p1

    return-object p1

    :cond_2
    return-object v0
.end method


# virtual methods
.method public f(Ljava/lang/Throwable;)Lcom/hiya/stingray/exception/a;
    .locals 3

    .line 1
    sget-object v0, Lcom/hiya/stingray/exception/a;->UNKNOWN_ERROR:Lcom/hiya/stingray/exception/a;

    .line 2
    instance-of v1, p1, Lcom/hiya/stingray/exception/b;

    if-eqz v1, :cond_0

    .line 3
    check-cast p1, Lcom/hiya/stingray/exception/b;

    invoke-interface {p1}, Lcom/hiya/stingray/exception/b;->a()Lcom/hiya/stingray/exception/a;

    move-result-object v0

    goto :goto_0

    .line 4
    :cond_0
    instance-of v1, p1, Lcom/hiya/api/exception/RetrofitException;

    if-eqz v1, :cond_4

    .line 5
    check-cast p1, Lcom/hiya/api/exception/RetrofitException;

    .line 6
    invoke-virtual {p1}, Lcom/hiya/api/exception/RetrofitException;->a()Lcom/hiya/api/exception/RetrofitException$a;

    move-result-object v1

    sget-object v2, Lcom/hiya/api/exception/RetrofitException$a;->NETWORK:Lcom/hiya/api/exception/RetrofitException$a;

    if-ne v1, v2, :cond_1

    .line 7
    sget-object v0, Lcom/hiya/stingray/exception/a;->NETWORK_ERROR:Lcom/hiya/stingray/exception/a;

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {p1}, Lcom/hiya/api/exception/RetrofitException;->a()Lcom/hiya/api/exception/RetrofitException$a;

    move-result-object v1

    sget-object v2, Lcom/hiya/api/exception/RetrofitException$a;->UNEXPECTED:Lcom/hiya/api/exception/RetrofitException$a;

    if-ne v1, v2, :cond_2

    goto :goto_0

    .line 9
    :cond_2
    invoke-virtual {p1}, Lcom/hiya/api/exception/RetrofitException;->b()Lretrofit2/Response;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 10
    invoke-virtual {p1}, Lcom/hiya/api/exception/RetrofitException;->b()Lretrofit2/Response;

    move-result-object p1

    invoke-virtual {p1}, Lretrofit2/Response;->code()I

    move-result p1

    invoke-static {p1}, Lcom/hiya/stingray/exception/a;->get(I)Lcom/hiya/stingray/exception/a;

    move-result-object v0

    goto :goto_0

    .line 11
    :cond_3
    sget-object v0, Lcom/hiya/stingray/exception/a;->IMPOSSIBLE_ERROR:Lcom/hiya/stingray/exception/a;

    :cond_4
    :goto_0
    return-object v0
.end method

.method public g(Ljava/lang/Throwable;)V
    .locals 4

    .line 1
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/ui/common/error/e;->f(Ljava/lang/Throwable;)Lcom/hiya/stingray/exception/a;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/stingray/ui/common/error/e;->e(Ljava/lang/Throwable;)Lg/g/a/a/b;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object v1, v2, v3

    .line 3
    invoke-virtual {v0}, Lcom/hiya/stingray/exception/a;->getErrorCodeCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const/4 v1, 0x1

    aput-object v0, v2, v1

    const-string v0, "API call %s failed. The Api Error code was %d"

    invoke-static {p1, v0, v2}, Lr/a/a;->f(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public h(Lcom/hiya/stingray/util/a0;Li/c/b0/b/v;Landroidx/fragment/app/n;Ljava/lang/String;Ljava/lang/Class;)Li/c/b0/c/c;
    .locals 7

    if-eqz p1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 1
    :goto_0
    invoke-static {v0}, Lcom/google/common/base/m;->u(Z)V

    .line 2
    invoke-virtual {p1, p5}, Lcom/hiya/stingray/util/a0;->b(Ljava/lang/Class;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    invoke-static {p2}, Lcom/trello/rxlifecycle4/d/c;->a(Li/c/b0/b/v;)Lcom/trello/rxlifecycle4/b;

    move-result-object p2

    invoke-virtual {v0, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p2

    const-wide/16 v0, 0x3e8

    sget-object v2, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 4
    invoke-virtual {p2, v0, v1, v2}, Li/c/b0/b/v;->throttleLast(JLjava/util/concurrent/TimeUnit;)Li/c/b0/b/v;

    move-result-object p2

    new-instance v6, Lcom/hiya/stingray/ui/common/error/e$a;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p3

    move-object v3, p4

    move-object v4, p1

    move-object v5, p5

    invoke-direct/range {v0 .. v5}, Lcom/hiya/stingray/ui/common/error/e$a;-><init>(Lcom/hiya/stingray/ui/common/error/e;Landroidx/fragment/app/n;Ljava/lang/String;Lcom/hiya/stingray/util/a0;Ljava/lang/Class;)V

    new-instance p1, Lcom/hiya/stingray/ui/common/error/e$b;

    invoke-direct {p1, p0}, Lcom/hiya/stingray/ui/common/error/e$b;-><init>(Lcom/hiya/stingray/ui/common/error/e;)V

    .line 5
    invoke-virtual {p2, v6, p1}, Li/c/b0/b/v;->subscribe(Li/c/b0/d/g;Li/c/b0/d/g;)Li/c/b0/c/c;

    move-result-object p1

    return-object p1
.end method
