.class public final Le/a/l/p2/w;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public a:Z

.field public final b:Le/a/l/n2/e;

.field public final c:Le/a/l/p2/a;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l/p2/q1;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/l/p2/q0$a;

.field public final f:Le/a/l/p2/s;

.field public final g:Le/a/l/g/t;

.field public final h:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/n2/e;Le/a/l/p2/a;Lo3/a;Le/a/l/p2/q0$a;Le/a/l/p2/s;Le/a/l/g/t;Ls1/w/f;)V
    .locals 1
    .param p7    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/n2/e;",
            "Le/a/l/p2/a;",
            "Lo3/a<",
            "Le/a/l/p2/q1;",
            ">;",
            "Le/a/l/p2/q0$a;",
            "Le/a/l/p2/s;",
            "Le/a/l/g/t;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    const-string v0, "billing"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acknowledgePurchaseHelper"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseSourceCache"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityProvider"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "newPurchasesObserver"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "goldGiftPromoUtils"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiContext"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/w;->b:Le/a/l/n2/e;

    iput-object p2, p0, Le/a/l/p2/w;->c:Le/a/l/p2/a;

    iput-object p3, p0, Le/a/l/p2/w;->d:Lo3/a;

    iput-object p4, p0, Le/a/l/p2/w;->e:Le/a/l/p2/q0$a;

    iput-object p5, p0, Le/a/l/p2/w;->f:Le/a/l/p2/s;

    iput-object p6, p0, Le/a/l/p2/w;->g:Le/a/l/g/t;

    iput-object p7, p0, Le/a/l/p2/w;->h:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/premium/billing/Receipt;Ljava/lang/String;Ls1/w/d;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/premium/billing/Receipt;",
            "Ljava/lang/String;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/p1;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Le/a/l/p2/w$a;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Le/a/l/p2/w$a;

    iget v1, v0, Le/a/l/p2/w$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/l/p2/w$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/l/p2/w$a;

    invoke-direct {v0, p0, p3}, Le/a/l/p2/w$a;-><init>(Le/a/l/p2/w;Ls1/w/d;)V

    :goto_0
    iget-object p3, v0, Le/a/l/p2/w$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/l/p2/w$a;->e:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p1, v0, Le/a/l/p2/w$a;->i:Ljava/lang/Object;

    move-object p2, p1

    check-cast p2, Ljava/lang/String;

    iget-object p1, v0, Le/a/l/p2/w$a;->h:Ljava/lang/Object;

    check-cast p1, Lcom/truecaller/premium/billing/Receipt;

    iget-object v0, v0, Le/a/l/p2/w$a;->g:Ljava/lang/Object;

    check-cast v0, Le/a/l/p2/w;

    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_1

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p3}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Le/a/l/p2/w;->c:Le/a/l/p2/a;

    iput-object p0, v0, Le/a/l/p2/w$a;->g:Ljava/lang/Object;

    iput-object p1, v0, Le/a/l/p2/w$a;->h:Ljava/lang/Object;

    iput-object p2, v0, Le/a/l/p2/w$a;->i:Ljava/lang/Object;

    iput v3, v0, Le/a/l/p2/w$a;->e:I

    invoke-interface {p3, p1, v0}, Le/a/l/p2/a;->a(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_3

    return-object v1

    :cond_3
    move-object v0, p0

    :goto_1
    check-cast p3, Le/a/l/p2/r0$a;

    .line 5
    iget v1, p3, Le/a/l/p2/r0$a;->a:I

    .line 6
    iget-object v2, p3, Le/a/l/p2/r0$a;->b:Ljava/lang/String;

    .line 7
    iget-object p3, p3, Le/a/l/p2/r0$a;->c:Le/a/l/p2/x;

    if-eqz v1, :cond_7

    const/4 v4, 0x2

    if-eq v1, v4, :cond_6

    const/4 v4, 0x3

    if-eq v1, v4, :cond_7

    const/4 p2, 0x4

    if-eq v1, p2, :cond_6

    .line 8
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p1, -0x2

    if-eq v1, p1, :cond_5

    const/4 p1, -0x1

    if-eq v1, p1, :cond_4

    .line 9
    new-instance p1, Le/a/l/p2/p1$f;

    invoke-direct {p1, v1, v2}, Le/a/l/p2/p1$f;-><init>(ILjava/lang/String;)V

    goto :goto_2

    .line 10
    :cond_4
    sget-object p1, Le/a/l/p2/p1$c;->a:Le/a/l/p2/p1$c;

    goto :goto_2

    .line 11
    :cond_5
    sget-object p1, Le/a/l/p2/p1$h;->a:Le/a/l/p2/p1$h;

    goto :goto_2

    .line 12
    :cond_6
    new-instance p2, Le/a/l/p2/p1$b;

    invoke-direct {p2, p1}, Le/a/l/p2/p1$b;-><init>(Lcom/truecaller/premium/billing/Receipt;)V

    move-object p1, p2

    goto :goto_2

    .line 13
    :cond_7
    iget-boolean p1, p3, Le/a/l/p2/x;->j:Z

    xor-int/2addr p1, v3

    if-eqz p1, :cond_8

    .line 14
    new-instance p1, Le/a/l/p2/p1$g;

    invoke-direct {p1, p2}, Le/a/l/p2/p1$g;-><init>(Ljava/lang/String;)V

    goto :goto_2

    .line 15
    :cond_8
    new-instance p1, Le/a/l/p2/p1$f;

    invoke-direct {p1, v1, v2}, Le/a/l/p2/p1$f;-><init>(ILjava/lang/String;)V

    :goto_2
    return-object p1
.end method
