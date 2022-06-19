.class public final Le/a/l/n2/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/d/a/a/q;
.implements Le/a/l/n2/e;


# instance fields
.field public a:Le/d/a/a/d;

.field public b:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "-",
            "Le/a/l/n2/e$a;",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field

.field public c:Le/a/l/p2/l;

.field public final d:Landroid/content/Context;

.field public final e:Le/a/b0/o/a;

.field public final f:Ls1/w/f;

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Landroid/content/Context;Le/a/b0/o/a;Ls1/w/f;Ls1/w/f;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/n2/a;->d:Landroid/content/Context;

    iput-object p2, p0, Le/a/l/n2/a;->e:Le/a/b0/o/a;

    iput-object p3, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    iput-object p4, p0, Le/a/l/n2/a;->g:Ls1/w/f;

    return-void
.end method

.method public static final n(Le/a/l/n2/a;)Le/d/a/a/d;
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/l/n2/a;->a:Le/d/a/a/d;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/l/n2/a;->d:Landroid/content/Context;

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 3
    new-instance v2, Le/d/a/a/e;

    const/4 v3, 0x0

    .line 4
    invoke-direct {v2, v3, v1, v0, p0}, Le/d/a/a/e;-><init>(Ljava/lang/String;ZLandroid/content/Context;Le/d/a/a/q;)V

    .line 5
    iput-object v2, p0, Le/a/l/n2/a;->a:Le/d/a/a/d;

    const-string p0, "BillingClient\n          \u2026apply { _billing = this }"

    invoke-static {v2, p0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    move-object v0, v2

    :goto_0
    return-object v0

    .line 6
    :cond_1
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string v0, "Please provide a valid Context."

    .line 7
    invoke-direct {p0, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method public static final o(Le/a/l/n2/a;Le/d/a/a/r;)Le/a/l/n2/f;
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 1
    invoke-static/range {p0 .. p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v20, Le/a/l/n2/f;

    move-object/from16 v2, v20

    .line 3
    invoke-virtual/range {p1 .. p1}, Le/d/a/a/r;->a()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    const-string v5, "sku"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    iget-object v4, v1, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v5, "title"

    .line 5
    invoke-virtual {v4, v5}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 6
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, "("

    invoke-static {v4, v7, v5, v6}, Ls1/f0/v;->e0(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    .line 7
    iget-object v5, v1, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v6, "price"

    .line 8
    invoke-virtual {v5, v6}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 9
    invoke-static {v7, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v6, v1, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v7, "price_currency_code"

    .line 11
    invoke-virtual {v6, v7}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    const-string v8, "priceCurrencyCode"

    .line 12
    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v7, v1, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v8, "price_amount_micros"

    .line 14
    invoke-virtual {v7, v8}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v7

    .line 15
    iget-object v9, v1, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v10, "introductoryPrice"

    .line 16
    invoke-virtual {v9, v10}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    move-object v9, v11

    .line 17
    invoke-static {v11, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v10, v1, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v11, "introductoryPriceAmountMicros"

    .line 19
    invoke-virtual {v10, v11}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v10

    .line 20
    iget-object v12, v1, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v13, "freeTrialPeriod"

    .line 21
    invoke-virtual {v12, v13}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 22
    invoke-virtual {v0, v12}, Le/a/l/n2/a;->r(Ljava/lang/String;)Lw3/b/a/u;

    move-result-object v12

    .line 23
    iget-object v13, v1, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v14, "introductoryPriceCycles"

    .line 24
    invoke-virtual {v13, v14}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result v13

    .line 25
    iget-object v1, v1, Le/d/a/a/r;->b:Lorg/json/JSONObject;

    const-string v14, "introductoryPricePeriod"

    .line 26
    invoke-virtual {v1, v14}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 27
    invoke-virtual {v0, v1}, Le/a/l/n2/a;->r(Ljava/lang/String;)Lw3/b/a/u;

    move-result-object v14

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x3c00

    .line 28
    invoke-direct/range {v2 .. v19}, Le/a/l/n2/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;JLw3/b/a/u;ILw3/b/a/u;Lcom/truecaller/premium/data/ProductKind;Lcom/truecaller/premium/data/PremiumProductType;ZLe/a/l/p2/n1;I)V

    return-object v20
.end method

.method public static final p(Le/a/l/n2/a;Le/d/a/a/k;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    iget p0, p1, Le/d/a/a/k;->a:I

    if-nez p0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return p0
.end method


# virtual methods
.method public a(Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v1, Le/a/l/n2/a$c;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Le/a/l/n2/a$c;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    invoke-static {v0, v1, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public b(Le/a/l/p2/m1;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/m1;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/l/n2/f;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/n2/a$j;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/l/n2/a$j;-><init>(Le/a/l/n2/a;Le/a/l/p2/m1;Ls1/w/d;)V

    .line 2
    iget-object p1, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v2, Le/a/l/n2/d;

    invoke-direct {v2, p0, v0, v1}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, v2, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public c(Le/a/l/p2/l;)V
    .locals 1

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/l/n2/a;->c:Le/a/l/p2/l;

    return-void
.end method

.method public d(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/premium/billing/Receipt;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/n2/a$b;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/l/n2/a$b;-><init>(Le/a/l/n2/a;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V

    .line 2
    iget-object p1, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v2, Le/a/l/n2/d;

    invoke-direct {v2, p0, v0, v1}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, v2, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    .line 3
    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public e(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/premium/billing/Receipt;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/n2/a$m;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/l/n2/a$m;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    .line 2
    iget-object v2, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v3, Le/a/l/n2/d;

    invoke-direct {v3, p0, v0, v1}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v2, v3, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public f(Le/a/l/p2/k1;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/k1;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/n2/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/n2/a$k;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/l/n2/a$k;-><init>(Le/a/l/n2/a;Le/a/l/p2/k1;Ls1/w/d;)V

    .line 2
    iget-object p1, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v2, Le/a/l/n2/d;

    invoke-direct {v2, p0, v0, v1}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, v2, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public g(Landroid/app/Activity;Le/a/l/n2/f;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/Activity;",
            "Le/a/l/n2/f;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/n2/e$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v6, Le/a/l/n2/a$f;

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p0

    move-object v2, p2

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Le/a/l/n2/a$f;-><init>(Le/a/l/n2/a;Le/a/l/n2/f;Landroid/app/Activity;Ljava/lang/String;Ls1/w/d;)V

    .line 2
    iget-object p1, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance p2, Le/a/l/n2/d;

    const/4 p3, 0x0

    invoke-direct {p2, p0, v6, p3}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, p2, p4}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public h(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/premium/billing/Receipt;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/n2/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Le/a/l/n2/a$a;-><init>(Le/a/l/n2/a;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V

    .line 2
    iget-object p1, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v2, Le/a/l/n2/d;

    invoke-direct {v2, p0, v0, v1}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {p1, v2, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public i(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/premium/billing/Receipt;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/n2/a$h;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/l/n2/a$h;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    .line 2
    iget-object v2, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v3, Le/a/l/n2/d;

    invoke-direct {v3, p0, v0, v1}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v2, v3, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public j(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/l/n2/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/n2/a$i;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/l/n2/a$i;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    .line 2
    iget-object v2, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v3, Le/a/l/n2/d;

    invoke-direct {v3, p0, v0, v1}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v2, v3, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public k(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Le/a/l/n2/f;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/n2/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/l/n2/a$d;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    .line 2
    iget-object v2, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v3, Le/a/l/n2/d;

    invoke-direct {v3, p0, v0, v1}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v2, v3, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public l(Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/l/n2/a$e;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Le/a/l/n2/a$e;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    .line 2
    iget-object v2, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v3, Le/a/l/n2/d;

    invoke-direct {v3, p0, v0, v1}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v2, v3, p1}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public m(Ls1/w/d;)Ljava/lang/Object;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Lcom/truecaller/premium/billing/Receipt;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/l/n2/a$g;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/l/n2/a$g;

    iget v1, v0, Le/a/l/n2/a$g;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/n2/a$g;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/n2/a$g;

    invoke-direct {v0, p0, p1}, Le/a/l/n2/a$g;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/l/n2/a$g;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/n2/a$g;->e:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v0, v0, Le/a/l/n2/a$g;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/Collection;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    iget-object v2, v0, Le/a/l/n2/a$g;->g:Ljava/lang/Object;

    check-cast v2, Le/a/l/n2/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iput-object p0, v0, Le/a/l/n2/a$g;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/l/n2/a$g;->e:I

    .line 2
    new-instance p1, Le/a/l/n2/a$m;

    const/4 v2, 0x0

    invoke-direct {p1, p0, v2}, Le/a/l/n2/a$m;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    .line 3
    iget-object v4, p0, Le/a/l/n2/a;->f:Ls1/w/f;

    new-instance v5, Le/a/l/n2/d;

    invoke-direct {v5, p0, p1, v2}, Le/a/l/n2/d;-><init>(Le/a/l/n2/a;Ls1/z/b/l;Ls1/w/d;)V

    invoke-static {v4, v5, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    .line 4
    :goto_1
    check-cast p1, Ljava/util/Collection;

    iput-object p1, v0, Le/a/l/n2/a$g;->g:Ljava/lang/Object;

    iput v3, v0, Le/a/l/n2/a$g;->e:I

    invoke-virtual {v2, v0}, Le/a/l/n2/a;->i(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v6, v0

    move-object v0, p1

    move-object p1, v6

    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    invoke-static {v0, p1}, Ls1/u/i;->l0(Ljava/util/Collection;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public onPurchasesUpdated(Le/d/a/a/k;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d/a/a/k;",
            "Ljava/util/List<",
            "Le/d/a/a/n;",
            ">;)V"
        }
    .end annotation

    const-string v0, "billingResult"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p2, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    sget-object p2, Ls1/u/s;->a:Ls1/u/s;

    :goto_0
    invoke-static {p2}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/d/a/a/n;

    .line 2
    iget v0, p1, Le/d/a/a/k;->a:I

    if-nez v0, :cond_2

    if-eqz p2, :cond_2

    .line 3
    invoke-virtual {p0, p2}, Le/a/l/n2/a;->q(Le/d/a/a/n;)Lcom/truecaller/premium/billing/Receipt;

    move-result-object p1

    .line 4
    iget-object p2, p1, Lcom/truecaller/premium/billing/Receipt;->g:Lcom/truecaller/premium/billing/Receipt$State;

    .line 5
    sget-object v0, Lcom/truecaller/premium/billing/Receipt$State;->PENDING:Lcom/truecaller/premium/billing/Receipt$State;

    if-ne p2, v0, :cond_1

    .line 6
    new-instance p2, Le/a/l/n2/e$a$c;

    invoke-direct {p2, p1}, Le/a/l/n2/e$a$c;-><init>(Lcom/truecaller/premium/billing/Receipt;)V

    goto :goto_1

    .line 7
    :cond_1
    new-instance p2, Le/a/l/n2/e$a$d;

    invoke-direct {p2, p1}, Le/a/l/n2/e$a$d;-><init>(Lcom/truecaller/premium/billing/Receipt;)V

    goto :goto_1

    :cond_2
    const/4 p2, 0x1

    if-ne v0, p2, :cond_3

    .line 8
    sget-object p2, Le/a/l/n2/e$a$a;->a:Le/a/l/n2/e$a$a;

    goto :goto_1

    .line 9
    :cond_3
    new-instance p2, Le/a/l/n2/e$a$b;

    .line 10
    iget-object p1, p1, Le/d/a/a/k;->b:Ljava/lang/String;

    .line 11
    invoke-direct {p2, p1}, Le/a/l/n2/e$a$b;-><init>(Ljava/lang/String;)V

    .line 12
    :goto_1
    iget-object p1, p0, Le/a/l/n2/a;->b:Ls1/z/b/l;

    if-eqz p1, :cond_4

    .line 13
    invoke-interface {p1, p2}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, 0x0

    .line 14
    iput-object p1, p0, Le/a/l/n2/a;->b:Ls1/z/b/l;

    goto :goto_2

    .line 15
    :cond_4
    iget-object p1, p0, Le/a/l/n2/a;->c:Le/a/l/p2/l;

    if-eqz p1, :cond_5

    invoke-interface {p1, p2}, Le/a/l/p2/l;->a(Le/a/l/n2/e$a;)V

    :cond_5
    :goto_2
    return-void
.end method

.method public final q(Le/d/a/a/n;)Lcom/truecaller/premium/billing/Receipt;
    .locals 13

    .line 1
    new-instance v11, Lcom/truecaller/premium/billing/Receipt;

    .line 2
    invoke-virtual {p1}, Le/d/a/a/n;->b()Ljava/util/ArrayList;

    move-result-object v1

    const-string v0, "skus"

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v2, p1, Le/d/a/a/n;->a:Ljava/lang/String;

    const-string v0, "originalJson"

    .line 4
    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, p1, Le/d/a/a/n;->b:Ljava/lang/String;

    const-string v0, "signature"

    .line 6
    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    iget-object v0, p1, Le/d/a/a/n;->c:Lorg/json/JSONObject;

    const-string v4, "purchaseTime"

    .line 8
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    move-result-wide v4

    .line 9
    invoke-virtual {p1}, Le/d/a/a/n;->a()Ljava/lang/String;

    move-result-object v6

    const-string v0, "purchaseToken"

    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v0, p1, Le/d/a/a/n;->c:Lorg/json/JSONObject;

    const-string v7, "acknowledged"

    const/4 v8, 0x1

    .line 11
    invoke-virtual {v0, v7, v8}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v7

    .line 12
    iget-object v0, p1, Le/d/a/a/n;->c:Lorg/json/JSONObject;

    const-string v9, "purchaseState"

    .line 13
    invoke-virtual {v0, v9, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v0

    const/4 v9, 0x4

    const/4 v10, 0x2

    if-eq v0, v9, :cond_0

    goto :goto_0

    :cond_0
    move v8, v10

    :goto_0
    if-eq v8, v10, :cond_1

    .line 14
    sget-object v0, Lcom/truecaller/premium/billing/Receipt$State;->PURCHASED:Lcom/truecaller/premium/billing/Receipt$State;

    goto :goto_1

    .line 15
    :cond_1
    sget-object v0, Lcom/truecaller/premium/billing/Receipt$State;->PENDING:Lcom/truecaller/premium/billing/Receipt$State;

    :goto_1
    move-object v8, v0

    .line 16
    iget-object v0, p1, Le/d/a/a/n;->c:Lorg/json/JSONObject;

    const-string v9, "orderId"

    .line 17
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 18
    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    iget-object v0, p1, Le/d/a/a/n;->c:Lorg/json/JSONObject;

    const-string v9, "obfuscatedAccountId"

    .line 20
    invoke-virtual {v0, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iget-object p1, p1, Le/d/a/a/n;->c:Lorg/json/JSONObject;

    const-string v9, "obfuscatedProfileId"

    .line 21
    invoke-virtual {p1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    const/4 v9, 0x0

    if-nez v0, :cond_2

    if-nez p1, :cond_2

    move-object v12, v9

    goto :goto_2

    :cond_2
    new-instance v12, Le/d/a/a/a;

    .line 22
    invoke-direct {v12, v0, p1}, Le/d/a/a/a;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    :goto_2
    if-eqz v12, :cond_3

    .line 23
    iget-object p1, v12, Le/d/a/a/a;->a:Ljava/lang/String;

    goto :goto_3

    :cond_3
    move-object p1, v9

    :goto_3
    move-object v0, v11

    move-object v9, v10

    move-object v10, p1

    .line 24
    invoke-direct/range {v0 .. v10}, Lcom/truecaller/premium/billing/Receipt;-><init>(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;ZLcom/truecaller/premium/billing/Receipt$State;Ljava/lang/String;Ljava/lang/String;)V

    return-object v11
.end method

.method public final r(Ljava/lang/String;)Lw3/b/a/u;
    .locals 2

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    goto :goto_2

    :cond_2
    move-object p1, v1

    :goto_2
    if-eqz p1, :cond_4

    .line 2
    :try_start_0
    sget v0, Lw3/b/a/u;->d:I

    .line 3
    invoke-static {}, Ls1/a/a/a/v0/f/d;->r3()Lw3/b/a/i0/m;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Lw3/b/a/i0/m;->a()V

    .line 5
    invoke-virtual {v0, p1}, Lw3/b/a/i0/m;->b(Ljava/lang/String;)Lw3/b/a/t;

    move-result-object p1

    .line 6
    new-instance v0, Lw3/b/a/u;

    invoke-direct {v0, p1}, Lw3/b/a/u;-><init>(Ljava/lang/Object;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v0

    goto :goto_4

    :catch_0
    move-exception p1

    .line 7
    new-instance v0, Lcom/truecaller/log/UnmutedException$p;

    invoke-virtual {p1}, Ljava/lang/IllegalArgumentException;->getMessage()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_3

    goto :goto_3

    :cond_3
    const-string p1, ""

    :goto_3
    invoke-direct {v0, p1}, Lcom/truecaller/log/UnmutedException$p;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Le/a/c/p/a;->I1(Ljava/lang/Throwable;)V

    :cond_4
    :goto_4
    return-object v1
.end method

.method public final s(Le/d/a/a/d;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/d/a/a/d;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Le/d/a/a/r;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Le/a/l/n2/a$l;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Le/a/l/n2/a$l;

    iget v1, v0, Le/a/l/n2/a$l;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/n2/a$l;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/n2/a$l;

    invoke-direct {v0, p0, p4}, Le/a/l/n2/a$l;-><init>(Le/a/l/n2/a;Ls1/w/d;)V

    :goto_0
    iget-object p4, v0, Le/a/l/n2/a$l;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/n2/a$l;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p4}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    new-instance p4, Ljava/util/ArrayList;

    .line 5
    invoke-direct {p4, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    if-eqz p3, :cond_5

    .line 6
    new-instance p2, Le/d/a/a/s;

    invoke-direct {p2}, Le/d/a/a/s;-><init>()V

    .line 7
    iput-object p3, p2, Le/d/a/a/s;->a:Ljava/lang/String;

    .line 8
    iput-object p4, p2, Le/d/a/a/s;->b:Ljava/util/List;

    const-string p3, "SkuDetailsParams.newBuil\u2026ype)\n            .build()"

    .line 9
    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput v3, v0, Le/a/l/n2/a$l;->e:I

    const/4 p3, 0x0

    .line 11
    invoke-static {p3, v3}, Ls1/a/a/a/v0/f/d;->g(Lq3/a/p1;I)Lq3/a/w;

    move-result-object p3

    .line 12
    new-instance p4, Le/d/a/a/h;

    invoke-direct {p4, p3}, Le/d/a/a/h;-><init>(Lq3/a/w;)V

    invoke-virtual {p1, p2, p4}, Le/d/a/a/d;->i(Le/d/a/a/s;Le/d/a/a/t;)V

    .line 13
    check-cast p3, Lq3/a/x;

    .line 14
    invoke-virtual {p3, v0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p4

    if-ne p4, v1, :cond_3

    return-object v1

    .line 15
    :cond_3
    :goto_1
    check-cast p4, Le/d/a/a/u;

    .line 16
    iget-object p1, p4, Le/d/a/a/u;->b:Ljava/util/List;

    if-eqz p1, :cond_4

    goto :goto_2

    .line 17
    :cond_4
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    :goto_2
    return-object p1

    .line 18
    :cond_5
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "SKU type must be set"

    .line 19
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
