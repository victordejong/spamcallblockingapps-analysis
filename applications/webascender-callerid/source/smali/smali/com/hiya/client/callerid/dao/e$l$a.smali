.class final Lcom/hiya/client/callerid/dao/e$l$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/e$l;->a(Ljava/lang/String;)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;TR;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/dao/e$l;

.field final synthetic g:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/e$l;Ljava/lang/String;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/e$l$a;->f:Lcom/hiya/client/callerid/dao/e$l;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/e$l$a;->g:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lretrofit2/Response;)Lg/g/b/c/f;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lretrofit2/Response<",
            "Lg/g/a/a/i/p/c;",
            ">;)",
            "Lg/g/b/c/f;"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Lretrofit2/Response;->headers()Lm/x;

    move-result-object v0

    const-string v1, "it.headers()"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lg/g/b/a/k/i;->b(Lm/x;)J

    move-result-wide v4

    .line 2
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/e$l$a;->f:Lcom/hiya/client/callerid/dao/e$l;

    iget-object v0, v0, Lcom/hiya/client/callerid/dao/e$l;->f:Lcom/hiya/client/callerid/dao/e;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/e;->k(Lcom/hiya/client/callerid/dao/e;)Lg/g/b/a/g/a/i/a;

    move-result-object v2

    .line 4
    invoke-virtual {p1}, Lretrofit2/Response;->body()Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    const-string v0, "it.body()!!"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v3, p1

    check-cast v3, Lg/g/a/a/i/p/c;

    .line 5
    sget-object v6, Lg/g/b/c/r;->EVENT_PROFILE:Lg/g/b/c/r;

    .line 6
    iget-object v7, p0, Lcom/hiya/client/callerid/dao/e$l$a;->g:Ljava/lang/String;

    const-string p1, "unhashed"

    invoke-static {v7, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object p1

    invoke-virtual {p1}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v8

    const-string p1, "Locale.getDefault().toLanguageTag()"

    invoke-static {v8, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 8
    invoke-virtual/range {v2 .. v8}, Lg/g/b/a/g/a/i/a;->g(Lg/g/a/a/i/p/c;JLg/g/b/c/r;Ljava/lang/String;Ljava/lang/String;)Lg/g/b/c/f;

    move-result-object p1

    .line 9
    sget-object v0, Lg/g/b/a/j/b;->b:Lg/g/b/a/j/b;

    invoke-virtual {p1}, Lg/g/b/c/f;->m()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lg/g/b/a/j/b;->c(Ljava/lang/String;)V

    return-object p1

    .line 10
    :cond_0
    invoke-static {}, Lkotlin/w/c/k;->o()V

    const/4 p1, 0x0

    throw p1

    .line 11
    :cond_1
    new-instance p1, Ljava/io/IOException;

    const-string v0, "Failed to fetch CallerId.  Response body is null."

    invoke-direct {p1, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lretrofit2/Response;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/dao/e$l$a;->a(Lretrofit2/Response;)Lg/g/b/c/f;

    move-result-object p1

    return-object p1
.end method
