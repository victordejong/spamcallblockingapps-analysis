.class public final Le/a/l/n2/a$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/a;->h(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
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
        "Ljava/lang/Boolean;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.billing.GooglePlayBilling$acknowledgePurchase$2"
    f = "GooglePlayBilling.kt"
    l = {
        0xf4
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:Ljava/lang/Object;

.field public f:I

.field public final synthetic g:Le/a/l/n2/a;

.field public final synthetic h:Lcom/truecaller/premium/billing/Receipt;


# direct methods
.method public constructor <init>(Le/a/l/n2/a;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/a$a;->g:Le/a/l/n2/a;

    iput-object p2, p0, Le/a/l/n2/a$a;->h:Lcom/truecaller/premium/billing/Receipt;

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

    new-instance v0, Le/a/l/n2/a$a;

    iget-object v1, p0, Le/a/l/n2/a$a;->g:Le/a/l/n2/a;

    iget-object v2, p0, Le/a/l/n2/a$a;->h:Lcom/truecaller/premium/billing/Receipt;

    invoke-direct {v0, v1, v2, p1}, Le/a/l/n2/a$a;-><init>(Le/a/l/n2/a;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V

    .line 2
    sget-object p1, Ls1/s;->a:Ls1/s;

    invoke-virtual {v0, p1}, Le/a/l/n2/a$a;->s(Ljava/lang/Object;)Ljava/lang/Object;

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

    new-instance v0, Le/a/l/n2/a$a;

    iget-object v1, p0, Le/a/l/n2/a$a;->g:Le/a/l/n2/a;

    iget-object v2, p0, Le/a/l/n2/a$a;->h:Lcom/truecaller/premium/billing/Receipt;

    invoke-direct {v0, v1, v2, p1}, Le/a/l/n2/a$a;-><init>(Le/a/l/n2/a;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/l/n2/a$a;->f:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v0, p0, Le/a/l/n2/a$a;->e:Ljava/lang/Object;

    check-cast v0, Le/a/l/n2/a;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

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
    iget-object p1, p0, Le/a/l/n2/a$a;->h:Lcom/truecaller/premium/billing/Receipt;

    .line 5
    iget-object p1, p1, Lcom/truecaller/premium/billing/Receipt;->e:Ljava/lang/String;

    if-eqz p1, :cond_3

    .line 6
    new-instance v1, Le/d/a/a/b;

    invoke-direct {v1}, Le/d/a/a/b;-><init>()V

    .line 7
    iput-object p1, v1, Le/d/a/a/b;->a:Ljava/lang/String;

    const-string p1, "AcknowledgePurchaseParam\u2026ken)\n            .build()"

    .line 8
    invoke-static {v1, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object p1, p0, Le/a/l/n2/a$a;->g:Le/a/l/n2/a;

    invoke-static {p1}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v3

    iput-object p1, p0, Le/a/l/n2/a$a;->e:Ljava/lang/Object;

    iput v2, p0, Le/a/l/n2/a$a;->f:I

    const/4 v4, 0x0

    .line 10
    invoke-static {v4, v2}, Ls1/a/a/a/v0/f/d;->g(Lq3/a/p1;I)Lq3/a/w;

    move-result-object v2

    .line 11
    new-instance v4, Le/d/a/a/f;

    invoke-direct {v4, v2}, Le/d/a/a/f;-><init>(Lq3/a/w;)V

    invoke-virtual {v3, v1, v4}, Le/d/a/a/d;->a(Le/d/a/a/b;Le/d/a/a/c;)V

    .line 12
    check-cast v2, Lq3/a/x;

    .line 13
    invoke-virtual {v2, p0}, Lq3/a/u1;->A(Ls1/w/d;)Ljava/lang/Object;

    move-result-object v1

    if-ne v1, v0, :cond_2

    return-object v0

    :cond_2
    move-object v0, p1

    move-object p1, v1

    .line 14
    :goto_0
    check-cast p1, Le/d/a/a/k;

    invoke-static {v0, p1}, Le/a/l/n2/a;->p(Le/a/l/n2/a;Le/d/a/a/k;)Z

    move-result p1

    .line 15
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1

    .line 16
    :cond_3
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Purchase token must be set"

    .line 17
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
