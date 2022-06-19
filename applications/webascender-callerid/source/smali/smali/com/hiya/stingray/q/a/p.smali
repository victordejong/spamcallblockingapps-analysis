.class public Lcom/hiya/stingray/q/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/q/a/o;


# instance fields
.field private final a:Lg/g/a/a/g/f;

.field private final b:Lg/g/a/a/g/g;

.field private final c:Lg/g/a/a/g/h/c;

.field private final d:Lcom/hiya/stingray/q/b/q;

.field private final e:Lcom/hiya/stingray/t/i1/x0;


# direct methods
.method public constructor <init>(Lg/g/a/a/g/f;Lg/g/a/a/g/h/c;Lg/g/a/a/g/g;Lcom/hiya/stingray/q/b/q;Lcom/hiya/stingray/t/i1/x0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/hiya/stingray/q/a/p;->a:Lg/g/a/a/g/f;

    .line 3
    iput-object p2, p0, Lcom/hiya/stingray/q/a/p;->c:Lg/g/a/a/g/h/c;

    .line 4
    iput-object p3, p0, Lcom/hiya/stingray/q/a/p;->b:Lg/g/a/a/g/g;

    .line 5
    iput-object p4, p0, Lcom/hiya/stingray/q/a/p;->d:Lcom/hiya/stingray/q/b/q;

    .line 6
    iput-object p5, p0, Lcom/hiya/stingray/q/a/p;->e:Lcom/hiya/stingray/t/i1/x0;

    return-void
.end method

.method private synthetic g(Ljava/util/List;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    invoke-interface {p1}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->e:Lcom/hiya/stingray/t/i1/x0;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/x0;->e(Ljava/util/List;)Lg/g/a/a/i/m/d;

    move-result-object p1

    .line 3
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->e:Lcom/hiya/stingray/t/i1/x0;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/x0;->a(Lg/g/a/a/i/m/d;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1

    .line 4
    :cond_1
    :goto_0
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method private synthetic i(Lg/g/a/a/i/m/d;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->e:Lcom/hiya/stingray/t/i1/x0;

    .line 2
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/x0;->a(Lg/g/a/a/i/m/d;)Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/x0;->d(Ljava/util/List;)Ljava/util/List;

    move-result-object p1

    .line 4
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->d:Lcom/hiya/stingray/q/b/q;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/q/b/q;->b(Ljava/util/List;)V

    return-void
.end method

.method private synthetic k(Lg/g/a/a/i/m/d;)Li/c/b0/b/v;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->e:Lcom/hiya/stingray/t/i1/x0;

    invoke-virtual {v0, p1}, Lcom/hiya/stingray/t/i1/x0;->a(Lg/g/a/a/i/m/d;)Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public a(Ljava/lang/String;Ljava/lang/String;Z)Li/c/b0/b/v;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "raw_phone"
        .end annotation
    .end param
    .param p2    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "device_locale"
        .end annotation
    .end param
    .param p3    # Z
        .annotation runtime Lretrofit2/http/Query;
            value = "commentsOnly"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Z)",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/m/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->b:Lg/g/a/a/g/g;

    invoke-interface {v0, p1, p2, p3}, Lg/g/a/a/g/g;->a(Ljava/lang/String;Ljava/lang/String;Z)Li/c/b0/b/v;

    move-result-object p1

    new-instance p2, Lcom/hiya/stingray/exception/c;

    sget-object p3, Lg/g/a/a/e;->GET_PHONE_REPORTS:Lg/g/a/a/e;

    invoke-direct {p2, p3}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, p2}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public b(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
    .locals 2
    .param p1    # Lg/g/a/a/i/o/y;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/o/y;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->c:Lg/g/a/a/g/h/c;

    invoke-interface {v0, p1}, Lg/g/a/a/g/h/c;->b(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->POST_USER_FEEDBACK:Lg/g/a/a/e;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public c(Ljava/util/List;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/a/a/i/k/d;",
            ">;)",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->c:Lg/g/a/a/g/h/c;

    invoke-interface {v0, p1}, Lg/g/a/a/g/h/c;->c(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->POST_TRACK_EVENT:Lg/g/a/a/e;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public d(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;
    .locals 2
    .param p1    # Lg/g/a/a/i/o/y;
        .annotation runtime Lretrofit2/http/Body;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/a/a/i/o/y;",
            ")",
            "Li/c/b0/b/v<",
            "Lretrofit2/Response<",
            "Ljava/lang/Void;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->c:Lg/g/a/a/g/h/c;

    invoke-interface {v0, p1}, Lg/g/a/a/g/h/c;->b(Lg/g/a/a/i/o/y;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->POST_PHONE_REPORT_ITEM:Lg/g/a/a/e;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public e(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/b1;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->d:Lcom/hiya/stingray/q/b/q;

    invoke-virtual {v0}, Lcom/hiya/stingray/q/b/q;->c()Li/c/b0/b/v;

    move-result-object v0

    new-instance v1, Lcom/hiya/stingray/q/a/f;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/a/f;-><init>(Lcom/hiya/stingray/q/a/p;)V

    .line 2
    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    invoke-virtual {p0, p1}, Lcom/hiya/stingray/q/a/p;->f(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/q/a/e;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/a/e;-><init>(Lcom/hiya/stingray/q/a/p;)V

    .line 4
    invoke-virtual {p1, v1}, Li/c/b0/b/v;->doOnNext(Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v1, Lcom/hiya/stingray/q/a/g;

    invoke-direct {v1, p0}, Lcom/hiya/stingray/q/a/g;-><init>(Lcom/hiya/stingray/q/a/p;)V

    .line 5
    invoke-virtual {p1, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object p1

    .line 6
    invoke-virtual {v0, p1}, Li/c/b0/b/v;->switchIfEmpty(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public f(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation runtime Lretrofit2/http/Query;
            value = "locale"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Lg/g/a/a/i/m/d;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/q/a/p;->a:Lg/g/a/a/g/f;

    invoke-interface {v0, p1}, Lg/g/a/a/g/f;->a(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    new-instance v0, Lcom/hiya/stingray/exception/c;

    sget-object v1, Lg/g/a/a/e;->GET_REPORT_CATEGORIES:Lg/g/a/a/e;

    invoke-direct {v0, v1}, Lcom/hiya/stingray/exception/c;-><init>(Lg/g/a/a/b;)V

    .line 2
    invoke-virtual {p1, v0}, Li/c/b0/b/v;->compose(Li/c/b0/b/b0;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic h(Ljava/util/List;)Li/c/b0/b/v;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/a/p;->g(Ljava/util/List;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public synthetic j(Lg/g/a/a/i/m/d;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/a/p;->i(Lg/g/a/a/i/m/d;)V

    return-void
.end method

.method public synthetic l(Lg/g/a/a/i/m/d;)Li/c/b0/b/v;
    .locals 0

    invoke-direct {p0, p1}, Lcom/hiya/stingray/q/a/p;->k(Lg/g/a/a/i/m/d;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
