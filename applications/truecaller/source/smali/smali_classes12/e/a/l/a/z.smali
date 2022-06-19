.class public final Le/a/l/a/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Le/a/l/p2/v0;

.field public final b:Le/a/l/p2/b1;

.field public final c:Le/a/l/n2/e;

.field public final d:Le/a/b0/o/a;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l/p2/q1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/p5/g;

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/p2/v0;Le/a/l/p2/b1;Le/a/l/n2/e;Le/a/b0/o/a;Lo3/a;Le/a/p5/g;Ls1/w/f;)V
    .locals 1
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/p2/v0;",
            "Le/a/l/p2/b1;",
            "Le/a/l/n2/e;",
            "Le/a/b0/o/a;",
            "Lo3/a<",
            "Le/a/l/p2/q1;",
            ">;",
            "Le/a/p5/g;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumStateSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumSubscriptionStatusRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "billing"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "coreSettings"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseSourceCache"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceInfoUtil"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/a/z;->a:Le/a/l/p2/v0;

    iput-object p2, p0, Le/a/l/a/z;->b:Le/a/l/p2/b1;

    iput-object p3, p0, Le/a/l/a/z;->c:Le/a/l/n2/e;

    iput-object p4, p0, Le/a/l/a/z;->d:Le/a/b0/o/a;

    iput-object p5, p0, Le/a/l/a/z;->e:Lo3/a;

    iput-object p6, p0, Le/a/l/a/z;->f:Le/a/p5/g;

    iput-object p7, p0, Le/a/l/a/z;->g:Ls1/w/f;

    return-void
.end method

.method public static final a(Le/a/l/a/z;Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "append(value)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method


# virtual methods
.method public final b(Ljava/lang/StringBuilder;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/StringBuilder;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/l/a/z$a;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/l/a/z$a;

    iget v1, v0, Le/a/l/a/z$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/a/z$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/a/z$a;

    invoke-direct {v0, p0, p2}, Le/a/l/a/z$a;-><init>(Le/a/l/a/z;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/l/a/z$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/a/z$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/l/a/z$a;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Le/a/l/a/z$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/a/z;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-string p2, "=== API Calls"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "append(value)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    const-string v2, "Status:"

    .line 5
    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 6
    sget-object p2, Lcom/truecaller/common/network/util/KnownEndpoints;->PREMIUM:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v2, Le/a/l/p2/t0;

    invoke-static {p2, v2}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l/p2/t0;

    invoke-interface {p2}, Le/a/l/p2/t0;->e()Lx3/b;

    move-result-object p2

    .line 7
    :try_start_0
    invoke-interface {p2}, Lx3/b;->execute()Lx3/a0;

    move-result-object p2

    const-string v2, "call.execute()"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p2}, Le/a/l/a/z;->f(Ljava/lang/StringBuilder;Lx3/a0;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception p2

    const-string v2, "Error while fetching status: "

    .line 8
    invoke-static {v2}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p0, p1, p2}, Le/a/l/a/z;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    :goto_1
    invoke-virtual {p0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 10
    iput-object p0, v0, Le/a/l/a/z$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/l/a/z$a;->h:Ljava/lang/Object;

    iput v3, v0, Le/a/l/a/z$a;->e:I

    invoke-virtual {p0, p1, v0}, Le/a/l/a/z;->g(Ljava/lang/StringBuilder;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 11
    :goto_2
    invoke-virtual {v0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final c(Ljava/lang/StringBuilder;Ls1/w/d;)Ljava/lang/Object;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/StringBuilder;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/l/a/z$b;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/l/a/z$b;

    iget v1, v0, Le/a/l/a/z$b;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/a/z$b;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/a/z$b;

    invoke-direct {v0, p0, p2}, Le/a/l/a/z$b;-><init>(Le/a/l/a/z;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/l/a/z$b;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/a/z$b;->e:I

    const-string v3, "append(value)"

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/l/a/z$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Le/a/l/a/z$b;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/a/z;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    iget-object p1, v0, Le/a/l/a/z$b;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object v2, v0, Le/a/l/a/z$b;->g:Ljava/lang/Object;

    check-cast v2, Le/a/l/a/z;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    :cond_3
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-string p2, "=== Billing Status"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p2, p0, Le/a/l/a/z;->c:Le/a/l/n2/e;

    iput-object p0, v0, Le/a/l/a/z$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/l/a/z$b;->h:Ljava/lang/Object;

    iput v5, v0, Le/a/l/a/z$b;->e:I

    invoke-interface {p2, v0}, Le/a/l/n2/e;->l(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v2, p0

    :goto_1
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_5

    .line 6
    invoke-static {v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "Google Play Billing is not available"

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_4

    .line 8
    :cond_5
    iget-object p2, v2, Le/a/l/a/z;->c:Le/a/l/n2/e;

    iput-object v2, v0, Le/a/l/a/z$b;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/l/a/z$b;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/l/a/z$b;->e:I

    invoke-interface {p2, v0}, Le/a/l/n2/e;->m(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_6

    return-object v1

    :cond_6
    move-object v0, v2

    .line 9
    :goto_2
    check-cast p2, Ljava/util/List;

    const-string v1, "Subscriptions/in-app products purchased: "

    .line 10
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/a/l/a/z;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v1, 0x0

    .line 11
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_3
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_8

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_7

    .line 12
    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, v1}, Ljava/lang/Integer;-><init>(I)V

    .line 13
    check-cast v2, Lcom/truecaller/premium/billing/Receipt;

    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v1

    const-string v4, "Receipt "

    .line 14
    invoke-static {v4}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    add-int/2addr v1, v5

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x3a

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/a/l/a/z;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    iget-object v1, v2, Lcom/truecaller/premium/billing/Receipt;->b:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, p1, v1}, Le/a/l/a/z;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v1, v3

    goto :goto_3

    .line 17
    :cond_7
    invoke-static {}, Ls1/u/i;->N0()V

    const/4 p1, 0x0

    throw p1

    :cond_8
    move-object v2, v0

    .line 18
    :goto_4
    invoke-virtual {v2, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    .locals 1

    const-string v0, "\r\n"

    .line 1
    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v0, "append(\"\\r\\n\")"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method public final e(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;
    .locals 0

    .line 1
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p2, "append(value)"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    return-object p1
.end method

.method public final f(Ljava/lang/StringBuilder;Lx3/a0;)Ljava/lang/StringBuilder;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Lx3/a0<",
            "Lu3/l0;",
            ">;)",
            "Ljava/lang/StringBuilder;"
        }
    .end annotation

    .line 1
    invoke-virtual {p2}, Lx3/a0;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_4

    .line 2
    iget-object p2, p2, Lx3/a0;->b:Ljava/lang/Object;

    .line 3
    check-cast p2, Lu3/l0;

    if-eqz p2, :cond_0

    invoke-virtual {p2}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object v1

    :cond_0
    const/4 p2, 0x0

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    goto :goto_0

    :cond_1
    move v0, p2

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    :goto_1
    const-string v2, "append(value)"

    if-eqz v0, :cond_3

    const-string p2, "Response is empty"

    .line 5
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 6
    :cond_3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0, v1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 v3, 0x4

    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->toString(I)Ljava/lang/String;

    move-result-object v0

    const-string v4, "JSONObject(body).toString(4)"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "\n"

    const-string v5, "\r\n"

    invoke-static {v0, v4, v5, p2, v3}, Ls1/f0/r;->t(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZI)Ljava/lang/String;

    move-result-object p2

    .line 7
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 8
    :catch_0
    invoke-virtual {p0, p1, v1}, Le/a/l/a/z;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 9
    :cond_4
    iget-object p2, p2, Lx3/a0;->c:Lu3/l0;

    if-eqz p2, :cond_5

    .line 10
    invoke-virtual {p2}, Lu3/l0;->s()Ljava/lang/String;

    move-result-object v1

    :cond_5
    invoke-virtual {p0, p1, v1}, Le/a/l/a/z;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2
    return-object p1
.end method

.method public final g(Ljava/lang/StringBuilder;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/StringBuilder;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Le/a/l/a/z$c;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Le/a/l/a/z$c;

    iget v1, v0, Le/a/l/a/z$c;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/a/z$c;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/a/z$c;

    invoke-direct {v0, p0, p2}, Le/a/l/a/z$c;-><init>(Le/a/l/a/z;Ls1/w/d;)V

    :goto_0
    iget-object p2, v0, Le/a/l/a/z$c;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/a/z$c;->e:I

    const-string v3, "append(value)"

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p1, v0, Le/a/l/a/z$c;->h:Ljava/lang/Object;

    check-cast p1, Ljava/lang/StringBuilder;

    iget-object v0, v0, Le/a/l/a/z$c;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/a/z;

    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    const-string p2, "Purchase:"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    .line 5
    iget-object p2, p0, Le/a/l/a/z;->c:Le/a/l/n2/e;

    iput-object p0, v0, Le/a/l/a/z$c;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/l/a/z$c;->h:Ljava/lang/Object;

    iput v4, v0, Le/a/l/a/z$c;->e:I

    invoke-interface {p2, v0}, Le/a/l/n2/e;->m(Ls1/w/d;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    .line 6
    :goto_1
    check-cast p2, Ljava/util/List;

    .line 7
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v4, :cond_4

    const-string v1, "User has more than 1 receipt ("

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string p2, "), will not verify them"

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/a/l/a/z;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 8
    :cond_4
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p2, "No receipts, nothing to verify"

    .line 10
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1}, Le/a/l/a/z;->d(Ljava/lang/StringBuilder;)Ljava/lang/StringBuilder;

    goto :goto_2

    .line 11
    :cond_5
    invoke-static {p2}, Ls1/u/i;->B(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/premium/billing/Receipt;

    .line 12
    sget-object v1, Lu3/j0;->a:Lu3/j0$a;

    sget-object v2, Lu3/c0;->f:Lu3/c0$a;

    const-string v2, "text/plain"

    invoke-static {v2}, Lu3/c0$a;->b(Ljava/lang/String;)Lu3/c0;

    move-result-object v2

    .line 13
    iget-object v3, p2, Lcom/truecaller/premium/billing/Receipt;->b:Ljava/lang/String;

    .line 14
    invoke-virtual {v1, v2, v3}, Lu3/j0$a;->c(Lu3/c0;Ljava/lang/String;)Lu3/j0;

    move-result-object v1

    .line 15
    sget-object v2, Lcom/truecaller/common/network/util/KnownEndpoints;->PREMIUM:Lcom/truecaller/common/network/util/KnownEndpoints;

    const-class v3, Le/a/l/p2/t0;

    invoke-static {v2, v3}, Le/a/b0/b/a/d;->a(Lcom/truecaller/common/network/util/KnownEndpoints;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/a/l/p2/t0;

    .line 16
    iget-object p2, p2, Lcom/truecaller/premium/billing/Receipt;->c:Ljava/lang/String;

    .line 17
    invoke-interface {v2, v1, p2}, Le/a/l/p2/t0;->i(Lu3/j0;Ljava/lang/String;)Lx3/b;

    move-result-object p2

    .line 18
    :try_start_0
    invoke-interface {p2}, Lx3/b;->execute()Lx3/a0;

    move-result-object p2

    const-string v1, "call.execute()"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Le/a/l/a/z;->f(Ljava/lang/StringBuilder;Lx3/a0;)Ljava/lang/StringBuilder;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception p2

    const-string v1, "Error while verifying purchase: "

    .line 19
    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p2}, Ljava/io/IOException;->getMessage()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p1, p2}, Le/a/l/a/z;->e(Ljava/lang/StringBuilder;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method

.method public final h()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/a/z;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "gold"

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "(GOLD_USER)"

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Le/a/l/a/z;->a:Le/a/l/p2/v0;

    invoke-interface {v0}, Le/a/l/p2/v0;->D2()Ljava/lang/String;

    move-result-object v0

    const-string v1, "regular"

    invoke-static {v1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "(PREMIUM_USER)"

    goto :goto_0

    :cond_1
    const-string v0, ""

    :goto_0
    return-object v0
.end method

.method public final i(Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/l/a/z$d;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/l/a/z$d;

    iget v1, v0, Le/a/l/a/z$d;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/a/z$d;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/a/z$d;

    invoke-direct {v0, p0, p1}, Le/a/l/a/z$d;-><init>(Le/a/l/a/z;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/l/a/z$d;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/a/z$d;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/l/a/z;->g:Ls1/w/f;

    new-instance v2, Le/a/l/a/z$e;

    const/4 v4, 0x0

    invoke-direct {v2, p0, v4}, Le/a/l/a/z$e;-><init>(Le/a/l/a/z;Ls1/w/d;)V

    iput v3, v0, Le/a/l/a/z$d;->e:I

    invoke-static {p1, v2, v0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    const-string v0, "withContext(asyncContext\u2026        .toString()\n    }"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method
