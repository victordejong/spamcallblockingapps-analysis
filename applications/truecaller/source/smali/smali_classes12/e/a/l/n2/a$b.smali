.class public final Le/a/l/n2/a$b;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/n2/a;->d(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
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
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.premium.billing.GooglePlayBilling$consume$2"
    f = "GooglePlayBilling.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/l/n2/a;

.field public final synthetic f:Lcom/truecaller/premium/billing/Receipt;


# direct methods
.method public constructor <init>(Le/a/l/n2/a;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/l/n2/a$b;->e:Le/a/l/n2/a;

    iput-object p2, p0, Le/a/l/n2/a$b;->f:Lcom/truecaller/premium/billing/Receipt;

    const/4 p1, 0x1

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object v0, Ls1/s;->a:Ls1/s;

    check-cast p1, Ls1/w/d;

    const-string v1, "completion"

    .line 1
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/l/n2/a$b;->e:Le/a/l/n2/a;

    iget-object v2, p0, Le/a/l/n2/a$b;->f:Lcom/truecaller/premium/billing/Receipt;

    .line 2
    invoke-interface {p1}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {v0}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    invoke-static {v1}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object p1

    .line 5
    iget-object v2, v2, Lcom/truecaller/premium/billing/Receipt;->e:Ljava/lang/String;

    if-eqz v2, :cond_0

    .line 6
    new-instance v3, Le/d/a/a/l;

    invoke-direct {v3}, Le/d/a/a/l;-><init>()V

    .line 7
    iput-object v2, v3, Le/d/a/a/l;->a:Ljava/lang/String;

    const-string v2, "ConsumeParams.newBuilder\u2026pt.purchaseToken).build()"

    .line 8
    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    sget-object v1, Le/a/l/n2/c;->a:Le/a/l/n2/c;

    invoke-virtual {p1, v3, v1}, Le/d/a/a/d;->b(Le/d/a/a/l;Le/d/a/a/m;)V

    return-object v0

    .line 11
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Purchase token must be set"

    .line 12
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
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

    new-instance v0, Le/a/l/n2/a$b;

    iget-object v1, p0, Le/a/l/n2/a$b;->e:Le/a/l/n2/a;

    iget-object v2, p0, Le/a/l/n2/a$b;->f:Lcom/truecaller/premium/billing/Receipt;

    invoke-direct {v0, v1, v2, p1}, Le/a/l/n2/a$b;-><init>(Le/a/l/n2/a;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V

    return-object v0
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/l/n2/a$b;->e:Le/a/l/n2/a;

    invoke-static {p1}, Le/a/l/n2/a;->n(Le/a/l/n2/a;)Le/d/a/a/d;

    move-result-object v0

    iget-object v1, p0, Le/a/l/n2/a$b;->f:Lcom/truecaller/premium/billing/Receipt;

    .line 3
    iget-object v1, v1, Lcom/truecaller/premium/billing/Receipt;->e:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 4
    new-instance v2, Le/d/a/a/l;

    invoke-direct {v2}, Le/d/a/a/l;-><init>()V

    .line 5
    iput-object v1, v2, Le/d/a/a/l;->a:Ljava/lang/String;

    const-string v1, "ConsumeParams.newBuilder\u2026pt.purchaseToken).build()"

    .line 6
    invoke-static {v2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 8
    sget-object p1, Le/a/l/n2/c;->a:Le/a/l/n2/c;

    invoke-virtual {v0, v2, p1}, Le/d/a/a/d;->b(Le/d/a/a/l;Le/d/a/a/m;)V

    .line 9
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    .line 10
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Purchase token must be set"

    .line 11
    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
