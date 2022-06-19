.class public Lcom/hiya/stingray/q/a/j;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/q/a/i;


# instance fields
.field private a:Lg/g/a/a/g/a;

.field private b:Lcom/hiya/stingray/q/b/j;

.field private c:Lcom/hiya/stingray/t/i1/a;

.field private d:Z


# direct methods
.method public constructor <init>(Lg/g/a/a/g/a;Lcom/hiya/stingray/q/b/j;Lcom/hiya/stingray/t/i1/a;Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/hiya/stingray/q/a/j;->d:Z

    .line 3
    iput-object p1, p0, Lcom/hiya/stingray/q/a/j;->a:Lg/g/a/a/g/a;

    .line 4
    iput-object p2, p0, Lcom/hiya/stingray/q/a/j;->b:Lcom/hiya/stingray/q/b/j;

    .line 5
    iput-object p3, p0, Lcom/hiya/stingray/q/a/j;->c:Lcom/hiya/stingray/t/i1/a;

    .line 6
    invoke-virtual {p4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const p2, 0x7f050003

    invoke-virtual {p1, p2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result p1

    iput-boolean p1, p0, Lcom/hiya/stingray/q/a/j;->d:Z

    return-void
.end method

.method static synthetic m(Lcom/hiya/stingray/q/a/j;)Lcom/hiya/stingray/t/i1/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/a/j;->c:Lcom/hiya/stingray/t/i1/a;

    return-object p0
.end method

.method static synthetic n(Lcom/hiya/stingray/q/a/j;)Lcom/hiya/stingray/q/b/j;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/stingray/q/a/j;->b:Lcom/hiya/stingray/q/b/j;

    return-object p0
.end method

.method private o(Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/d;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/j;->b:Lcom/hiya/stingray/q/b/j;

    new-instance v1, Lcom/hiya/stingray/q/a/j$a;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/a/j$a;-><init>(Lcom/hiya/stingray/q/a/j;)V

    invoke-static {p1, v1}, Lcom/google/common/collect/Lists;->l(Ljava/util/List;Lcom/google/common/base/g;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/q/b/j;->a(ZLjava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/c;->ADD_DENY_LIST_ITEM:Lg/g/a/a/c;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private p(Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/d;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/j;->b:Lcom/hiya/stingray/q/b/j;

    new-instance v1, Lcom/hiya/stingray/q/a/j$b;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/a/j$b;-><init>(Lcom/hiya/stingray/q/a/j;)V

    invoke-static {p1, v1}, Lcom/google/common/collect/Lists;->l(Ljava/util/List;Lcom/google/common/base/g;)Ljava/util/List;

    move-result-object p1

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/q/b/j;->a(ZLjava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/c;->ADD_ALLOW_LIST_ITEM:Lg/g/a/a/c;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private q(Ljava/lang/String;ZZ)Li/c/b0/b/v;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "ZZ)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    if-eqz p3, :cond_2

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result p3

    if-nez p3, :cond_1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/a/j;->e(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/a/j;->l(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    :goto_0
    new-instance p3, Lcom/hiya/stingray/q/a/j$e;

    invoke-direct {p3, p0}, Lcom/hiya/stingray/q/a/j$e;-><init>(Lcom/hiya/stingray/q/a/j;)V

    .line 4
    invoke-virtual {p1, p3}, Li/c/b0/b/v;->takeWhile(Li/c/b0/d/p;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p3, Lcom/hiya/stingray/q/a/j$d;

    invoke-direct {p3, p0, p2}, Lcom/hiya/stingray/q/a/j$d;-><init>(Lcom/hiya/stingray/q/a/j;Z)V

    .line 5
    invoke-virtual {p1, p3}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p3, Lcom/hiya/stingray/q/a/j$c;

    invoke-direct {p3, p0, p2}, Lcom/hiya/stingray/q/a/j$c;-><init>(Lcom/hiya/stingray/q/a/j;Z)V

    .line 6
    invoke-virtual {p1, p3}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    goto :goto_1

    .line 7
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Error. Attempting to sync blocklist for empty user id"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    if-eqz p2, :cond_3

    .line 8
    iget-object p1, p0, Lcom/hiya/stingray/q/a/j;->b:Lcom/hiya/stingray/q/b/j;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/b/j;->b()Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object p3, Lg/g/a/a/c;->GET_DENY_LIST:Lg/g/a/a/c;

    invoke-direct {p2, p3}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    goto :goto_1

    .line 9
    :cond_3
    iget-object p1, p0, Lcom/hiya/stingray/q/a/j;->b:Lcom/hiya/stingray/q/b/j;

    invoke-virtual {p1}, Lcom/hiya/stingray/q/b/j;->d()Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object p3, Lg/g/a/a/c;->GET_DENY_LIST:Lg/g/a/a/c;

    invoke-direct {p2, p3}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private r(Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/j;->b:Lcom/hiya/stingray/q/b/j;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/q/b/j;->e(ZLjava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/c;->REMOVE_DENY_LIST_ITEM:Lg/g/a/a/c;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private s(Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/j;->b:Lcom/hiya/stingray/q/b/j;

    const/4 v1, 0x0

    invoke-virtual {v0, v1, p1}, Lcom/hiya/stingray/q/b/j;->e(ZLjava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/c;->REMOVE_ALLOW_LIST_ITEM:Lg/g/a/a/c;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/q/a/j;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->s(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->s(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/q/a/j;->a:Lg/g/a/a/g/a;

    .line 3
    invoke-interface {v1, p1, p2}, Lg/g/a/a/g/a;->a(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->DELETE_ALLOW_LIST_ITEM:Lg/g/a/a/e;

    invoke-direct {p2, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 4
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e;->M()Li/c/b0/b/v;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Li/c/b0/b/v;->mergeDelayError(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/g/a/a/i/d;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/q/a/j;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->p(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->p(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/q/a/j;->a:Lg/g/a/a/g/a;

    .line 3
    invoke-interface {v1, p1, p2}, Lg/g/a/a/g/a;->b(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->POST_ALLOW_LIST_ITEM:Lg/g/a/a/e;

    invoke-direct {p2, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 4
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 5
    invoke-virtual {p1}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e;->M()Li/c/b0/b/v;

    move-result-object p1

    .line 6
    invoke-static {v0, p1}, Li/c/b0/b/v;->mergeDelayError(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/q/a/j;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->r(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->r(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/q/a/j;->a:Lg/g/a/a/g/a;

    .line 3
    invoke-interface {v1, p1, p2}, Lg/g/a/a/g/a;->c(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->DELETE_DENY_LIST_ITEM:Lg/g/a/a/e;

    invoke-direct {p2, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 4
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e;->M()Li/c/b0/b/v;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Li/c/b0/b/v;->mergeDelayError(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/hiya/stingray/q/a/j;->q(Ljava/lang/String;ZZ)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/j;->a:Lg/g/a/a/g/a;

    invoke-interface {v0, p1}, Lg/g/a/a/g/a;->e(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->GET_DENY_LIST:Lg/g/a/a/e;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .param p2    # Ljava/util/List;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/g/a/a/i/d;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/q/a/j;->d:Z

    if-nez v0, :cond_0

    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->o(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->o(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/stingray/q/a/j;->a:Lg/g/a/a/g/a;

    invoke-interface {v1, p1, p2}, Lg/g/a/a/g/a;->f(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->POST_DENY_LIST_ITEM:Lg/g/a/a/e;

    invoke-direct {p2, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 3
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Li/c/b0/b/v;->ignoreElements()Li/c/b0/b/e;

    move-result-object p1

    invoke-virtual {p1}, Li/c/b0/b/e;->M()Li/c/b0/b/v;

    move-result-object p1

    .line 5
    invoke-static {v0, p1}, Li/c/b0/b/v;->mergeDelayError(Li/c/b0/b/a0;Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public g(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/g/a/a/i/d;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/q/a/j;->f(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->o(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public h(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/q/a/j;->c(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->r(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public i(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/q/a/j;->a(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->s(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public j(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/g/a/a/i/d;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lcom/google/common/base/r;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Lcom/hiya/stingray/q/a/j;->b(Ljava/lang/String;Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    invoke-direct {p0, p2}, Lcom/hiya/stingray/q/a/j;->p(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public k(Ljava/lang/String;Z)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/i/a;",
            ">;>;"
        }
    .end annotation

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, p1, v0, p2}, Lcom/hiya/stingray/q/a/j;->q(Ljava/lang/String;ZZ)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public l(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Path;
            value = "account_id"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lg/g/a/a/i/c;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/j;->a:Lg/g/a/a/g/a;

    invoke-interface {v0, p1}, Lg/g/a/a/g/a;->l(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->GET_ALLOW_LIST:Lg/g/a/a/e;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
