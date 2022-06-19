.class public final Le/a/l/p2/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/l;


# instance fields
.field public final a:Le/a/l/n2/e;

.field public final b:Le/a/o5/f0;

.field public final c:Le/a/o5/x1;

.field public final d:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l/p2/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Le/a/l/n2/e;Le/a/o5/f0;Le/a/o5/x1;Lo3/a;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/n2/e;",
            "Le/a/o5/f0;",
            "Le/a/o5/x1;",
            "Lo3/a<",
            "Le/a/l/p2/a;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "billing"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "deviceManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "usageChecker"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "acknowledgePurchaseHelper"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/m;->a:Le/a/l/n2/e;

    iput-object p2, p0, Le/a/l/p2/m;->b:Le/a/o5/f0;

    iput-object p3, p0, Le/a/l/p2/m;->c:Le/a/o5/x1;

    iput-object p4, p0, Le/a/l/p2/m;->d:Lo3/a;

    return-void
.end method


# virtual methods
.method public a(Le/a/l/n2/e$a;)V
    .locals 7

    const-string v0, "result"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/p2/m;->b:Le/a/o5/f0;

    invoke-interface {v0}, Le/a/o5/f0;->a()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Le/a/l/p2/m;->c:Le/a/o5/x1;

    invoke-interface {v0}, Le/a/o5/x1;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    instance-of v0, p1, Le/a/l/n2/e$a$d;

    if-eqz v0, :cond_1

    .line 3
    move-object v0, p1

    check-cast v0, Le/a/l/n2/e$a$d;

    .line 4
    iget-object v0, v0, Le/a/l/n2/e$a$d;->a:Lcom/truecaller/premium/billing/Receipt;

    .line 5
    iget-object v1, v0, Lcom/truecaller/premium/billing/Receipt;->g:Lcom/truecaller/premium/billing/Receipt$State;

    .line 6
    sget-object v2, Lcom/truecaller/premium/billing/Receipt$State;->PURCHASED:Lcom/truecaller/premium/billing/Receipt$State;

    if-ne v1, v2, :cond_2

    .line 7
    iget-boolean v0, v0, Lcom/truecaller/premium/billing/Receipt;->f:Z

    if-nez v0, :cond_2

    .line 8
    sget-object v1, Lq3/a/h1;->a:Lq3/a/h1;

    const/4 v2, 0x0

    const/4 v3, 0x0

    new-instance v4, Le/a/l/p2/m$a;

    const/4 v0, 0x0

    invoke-direct {v4, p0, p1, v0}, Le/a/l/p2/m$a;-><init>(Le/a/l/p2/m;Le/a/l/n2/e$a;Ls1/w/d;)V

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-static/range {v1 .. v6}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    goto :goto_0

    .line 9
    :cond_1
    instance-of v0, p1, Le/a/l/n2/e$a$b;

    if-eqz v0, :cond_2

    check-cast p1, Le/a/l/n2/e$a$b;

    :cond_2
    :goto_0
    return-void
.end method

.method public init()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/l/p2/m;->a:Le/a/l/n2/e;

    invoke-interface {v0, p0}, Le/a/l/n2/e;->c(Le/a/l/p2/l;)V

    return-void
.end method
