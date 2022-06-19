.class public final Lcom/hiya/client/callerid/dao/w;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/client/callerid/dao/w$a;
    }
.end annotation


# instance fields
.field private final a:Lg/g/a/a/g/f;

.field private final b:Lcom/google/gson/f;

.field private final c:Landroid/content/SharedPreferences;


# direct methods
.method public constructor <init>(Lg/g/a/a/g/f;Lcom/google/gson/f;Landroid/content/SharedPreferences;)V
    .locals 1

    const-string v0, "phonesApi"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "gson"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sp"

    invoke-static {p3, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/w;->a:Lg/g/a/a/g/f;

    iput-object p2, p0, Lcom/hiya/client/callerid/dao/w;->b:Lcom/google/gson/f;

    iput-object p3, p0, Lcom/hiya/client/callerid/dao/w;->c:Landroid/content/SharedPreferences;

    return-void
.end method

.method public static final synthetic a(Lcom/hiya/client/callerid/dao/w;Ljava/lang/String;Ljava/util/List;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/hiya/client/callerid/dao/w;->f(Ljava/lang/String;Ljava/util/List;)V

    return-void
.end method

.method private final b(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lg/g/b/c/p;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/w;->a:Lg/g/a/a/g/f;

    invoke-interface {v0, p1}, Lg/g/a/a/g/f;->a(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/hiya/client/callerid/dao/w$b;->f:Lcom/hiya/client/callerid/dao/w$b;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->flatMap(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/hiya/client/callerid/dao/w$c;->f:Lcom/hiya/client/callerid/dao/w$c;

    invoke-virtual {v0, v1}, Li/c/b0/b/v;->map(Li/c/b0/d/o;)Li/c/b0/b/v;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Li/c/b0/b/v;->toList()Li/c/b0/b/e0;

    move-result-object v0

    .line 5
    new-instance v1, Lcom/hiya/client/callerid/dao/w$d;

    invoke-direct {v1, p0, p1}, Lcom/hiya/client/callerid/dao/w$d;-><init>(Lcom/hiya/client/callerid/dao/w;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/e0;->i(Li/c/b0/d/g;)Li/c/b0/b/e0;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "phonesApi.getCategories(\u2026          .toObservable()"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final d(Ljava/lang/String;)Li/c/b0/b/v;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/v<",
            "Ljava/util/List<",
            "Lg/g/b/c/p;",
            ">;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/w;->c:Landroid/content/SharedPreferences;

    const-string v1, "ReportCategories"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "Observable.empty<List<ReportCategory>>()"

    if-eqz v0, :cond_3

    const-string v3, "sp.getString(SP_REPORT_C\u2026y<List<ReportCategory>>()"

    invoke-static {v0, v3}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    :try_start_0
    iget-object v3, p0, Lcom/hiya/client/callerid/dao/w;->b:Lcom/google/gson/f;

    const-class v4, Lcom/hiya/client/callerid/dao/w$a;

    invoke-virtual {v3, v0, v4}, Lcom/google/gson/f;->l(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/hiya/client/callerid/dao/w$a;
    :try_end_0
    .catch Lcom/google/gson/JsonSyntaxException; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v0, :cond_0

    .line 3
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 4
    :cond_0
    invoke-virtual {v0}, Lcom/hiya/client/callerid/dao/w$a;->b()Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x1

    invoke-static {v1, p1, v3}, Lkotlin/c0/m;->q(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v0}, Lcom/hiya/client/callerid/dao/w$a;->c()J

    move-result-wide v5

    sub-long/2addr v3, v5

    const-wide/32 v5, 0x240c8400

    cmp-long p1, v3, v5

    if-lez p1, :cond_1

    goto :goto_0

    .line 6
    :cond_1
    invoke-virtual {v0}, Lcom/hiya/client/callerid/dao/w$a;->a()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Li/c/b0/b/v;->just(Ljava/lang/Object;)Li/c/b0/b/v;

    move-result-object p1

    const-string v0, "Observable.just<List<Rep\u2026hedCategories.categories)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_1

    .line 7
    :cond_2
    :goto_0
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_1
    return-object p1

    .line 8
    :catch_0
    iget-object p1, p0, Lcom/hiya/client/callerid/dao/w;->c:Landroid/content/SharedPreferences;

    invoke-interface {p1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1, v1}, Landroid/content/SharedPreferences$Editor;->remove(Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 9
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 10
    :cond_3
    invoke-static {}, Li/c/b0/b/v;->empty()Li/c/b0/b/v;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final f(Ljava/lang/String;Ljava/util/List;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List<",
            "Lg/g/b/c/p;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/w;->c:Landroid/content/SharedPreferences;

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcom/hiya/client/callerid/dao/w;->b:Lcom/google/gson/f;

    new-instance v2, Lcom/hiya/client/callerid/dao/w$a;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-direct {v2, p1, v3, v4, p2}, Lcom/hiya/client/callerid/dao/w$a;-><init>(Ljava/lang/String;JLjava/util/List;)V

    invoke-virtual {v1, v2}, Lcom/google/gson/f;->u(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string p2, "ReportCategories"

    .line 3
    invoke-interface {v0, p2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Landroid/content/SharedPreferences$Editor;->apply()V

    return-void
.end method


# virtual methods
.method public final c(Ljava/lang/String;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/e0<",
            "Ljava/util/List<",
            "Lg/g/b/c/p;",
            ">;>;"
        }
    .end annotation

    const-string v0, "requestLanguageTag"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/dao/w;->d(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object v0

    .line 2
    invoke-direct {p0, p1}, Lcom/hiya/client/callerid/dao/w;->b(Ljava/lang/String;)Li/c/b0/b/v;

    move-result-object p1

    invoke-virtual {v0, p1}, Li/c/b0/b/v;->switchIfEmpty(Li/c/b0/b/a0;)Li/c/b0/b/v;

    move-result-object p1

    .line 3
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object v0

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->single(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    const-string v0, "getCached(requestLanguag\u2026     .single(emptyList())"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(ILjava/lang/String;)Li/c/b0/b/e0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Ljava/lang/String;",
            ")",
            "Li/c/b0/b/e0<",
            "Lg/g/b/c/p;",
            ">;"
        }
    .end annotation

    const-string v0, "languageTag"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/hiya/client/callerid/dao/w;->c(Ljava/lang/String;)Li/c/b0/b/e0;

    move-result-object p2

    .line 2
    new-instance v0, Lcom/hiya/client/callerid/dao/w$e;

    invoke-direct {v0, p1}, Lcom/hiya/client/callerid/dao/w$e;-><init>(I)V

    invoke-virtual {p2, v0}, Li/c/b0/b/e0;->t(Li/c/b0/d/o;)Li/c/b0/b/e0;

    move-result-object p1

    const-string p2, "fetch(languageTag)\n     \u2026          }\n            }"

    invoke-static {p1, p2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
