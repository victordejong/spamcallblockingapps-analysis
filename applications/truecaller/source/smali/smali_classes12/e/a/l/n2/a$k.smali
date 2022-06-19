.class public final Le/a/l/n2/a$k;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/a;->f(Le/a/l/p2/k1;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/l<",
        "Ls1/w/d<",
        "-",
        "Le/a/l/n2/f;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.billing.GooglePlayBilling$querySkuDetails$4"
    f = "GooglePlayBilling.kt"
    l = {
        0xb4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/l/n2/a;

.field public final synthetic g:Le/a/l/p2/k1;


# direct methods
.method public constructor <init>(Le/a/l/n2/a;Le/a/l/p2/k1;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/a$k;->f:Le/a/l/n2/a;

    iput-object p2, p0, Le/a/l/n2/a$k;->g:Le/a/l/p2/k1;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p1, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/n2/a$k;

    iget-object v1, p0, Le/a/l/n2/a$k;->f:Le/a/l/n2/a;

    iget-object v2, p0, Le/a/l/n2/a$k;->g:Le/a/l/p2/k1;

    invoke-direct {v0, v1, v2, p1}, Le/a/l/n2/a$k;-><init>(Le/a/l/n2/a;Le/a/l/p2/k1;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/l/n2/a$k;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final l(Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string v0, "completion"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v0, Le/a/l/n2/a$k;

    iget-object v1, p0, Le/a/l/n2/a$k;->f:Le/a/l/n2/a;

    iget-object v2, p0, Le/a/l/n2/a$k;->g:Le/a/l/p2/k1;

    invoke-direct {v0, v1, v2, p1}, Le/a/l/n2/a$k;-><init>(Le/a/l/n2/a;Le/a/l/p2/k1;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/n2/a$k;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

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
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    sget-object p1, Lcom/truecaller/premium/data/PremiumProductType;->Companion:Lcom/truecaller/premium/data/PremiumProductType$a;

    iget-object v1, p0, Le/a/l/n2/a$k;->g:Le/a/l/p2/k1;

    invoke-virtual {v1}, Le/a/l/p2/k1;->g()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/truecaller/premium/data/PremiumProductType$a;->a(Ljava/lang/String;)Lcom/truecaller/premium/data/PremiumProductType;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    if-eqz p1, :cond_3

    if-ne p1, v2, :cond_2

    const-string p1, "subs"

    goto :goto_0

    .line 5
    :cond_2
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_3
    const-string p1, "inapp"

    .line 6
    :goto_0
    iget-object v1, p0, Le/a/l/n2/a$k;->f:Le/a/l/n2/a;

    invoke-static {v1}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v3

    iget-object v4, p0, Le/a/l/n2/a$k;->g:Le/a/l/p2/k1;

    invoke-virtual {v4}, Le/a/l/p2/k1;->e()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ls1/u/i;->U(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    iput v2, p0, Le/a/l/n2/a$k;->e:I

    invoke-virtual {v1, v3, v4, p1, p0}, Le/a/l/n2/a;->s(Le/d/a/a/d;Ljava/util/List;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast p1, Ljava/util/List;

    invoke-static {p1}, Ls1/u/i;->D(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/d/a/a/r;

    if-eqz p1, :cond_5

    iget-object v0, p0, Le/a/l/n2/a$k;->f:Le/a/l/n2/a;

    invoke-static {v0, p1}, Le/a/l/n2/a;->o(Le/a/l/n2/a;Le/d/a/a/r;)Le/a/l/n2/f;

    move-result-object p1

    goto :goto_2

    :cond_5
    const/4 p1, 0x0

    :goto_2
    return-object p1
.end method
