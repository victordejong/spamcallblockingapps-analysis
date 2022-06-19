.class public final Lcom/hiya/client/callerid/dao/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lg/g/b/b/d/g;

.field private final b:Lg/g/b/a/g/a/i/a;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Lg/g/b/b/d/g;Lg/g/b/a/g/a/i/a;)V
    .locals 1

    const-string v0, "dbOp"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callerIdMapper"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/a0;->a:Lg/g/b/b/d/g;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/a0;->b:Lg/g/b/a/g/a/i/a;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/dao/a0;)Lg/g/b/a/g/a/i/a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/a0;->b:Lg/g/b/a/g/a/i/a;

    return-object p0
.end method

.method public static final synthetic b(Lcom/hiya/client/callerid/dao/a0;)Lg/g/b/b/d/g;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/hiya/client/callerid/dao/a0;->a:Lg/g/b/b/d/g;

    return-object p0
.end method

.method public static synthetic g(Lcom/hiya/client/callerid/dao/a0;Ljava/lang/String;Ljava/lang/String;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_0

    const-string p2, "~"

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/hiya/client/callerid/dao/a0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method


# virtual methods
.method public final c()Li/c/b0/b/e;
    .locals 2

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/a0$a;

    invoke-direct {v0, p0}, Lcom/hiya/client/callerid/dao/a0$a;-><init>(Lcom/hiya/client/callerid/dao/a0;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object v0

    const-string v1, "Completable.create { emi\u2026ns.\", e))\n        }\n    }"

    invoke-static {v0, v1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public final d(Ljava/util/List;)Li/c/b0/b/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lg/g/b/c/s;",
            ">;)",
            "Li/c/b0/b/e;"
        }
    .end annotation

    const-string v0, "translations"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/a0$b;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/dao/a0$b;-><init>(Lcom/hiya/client/callerid/dao/a0;Ljava/util/List;)V

    invoke-static {v0}, Li/c/b0/b/e;->k(Li/c/b0/b/h;)Li/c/b0/b/e;

    move-result-object p1

    const-string v0, "Completable.create { emi\u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Lg/g/b/c/f;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lg/g/b/c/f;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/f;",
            ">;"
        }
    .end annotation

    const-string v0, "response"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lcom/hiya/client/callerid/dao/a0$c;

    invoke-direct {v0, p0, p1}, Lcom/hiya/client/callerid/dao/a0$c;-><init>(Lcom/hiya/client/callerid/dao/a0;Lg/g/b/c/f;)V

    invoke-static {v0}, Li/c/b0/b/e0;->f(Li/c/b0/b/h0;)Li/c/b0/b/e0;

    move-result-object p1

    const-string v0, "Single.create { emitter \u2026)\n            }\n        }"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 4

    const-string v0, "toTranslate"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "indicator"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_1

    const/4 v0, 0x2

    const/4 v3, 0x0

    invoke-static {p1, p2, v2, v0, v3}, Lkotlin/c0/m;->D(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 2
    iget-object p2, p0, Lcom/hiya/client/callerid/dao/a0;->a:Lg/g/b/b/d/g;

    invoke-virtual {p1, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object p1

    const-string v0, "(this as java.lang.String).substring(startIndex)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p1}, Lg/g/b/b/d/g;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_1

    :cond_1
    const-string p1, ""

    :goto_1
    return-object p1
.end method
