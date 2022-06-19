.class public final Le/a/l/p2/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/l/p2/a;


# instance fields
.field public final a:Lq3/a/b3/c;

.field public final b:Le/a/l/n2/e;

.field public final c:Le/a/l/p2/r0;

.field public final d:Le/a/l/n0;

.field public final e:Lo3/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lo3/a<",
            "Le/a/l/p2/q1;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Le/a/l/p2/v0;

.field public final g:Ls1/w/f;


# direct methods
.method public constructor <init>(Le/a/l/n2/e;Le/a/l/p2/r0;Le/a/l/n0;Lo3/a;Le/a/l/p2/v0;Ls1/w/f;)V
    .locals 1
    .param p6    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/l/n2/e;",
            "Le/a/l/p2/r0;",
            "Le/a/l/n0;",
            "Lo3/a<",
            "Le/a/l/p2/q1;",
            ">;",
            "Le/a/l/p2/v0;",
            "Ls1/w/f;",
            ")V"
        }
    .end annotation

    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "billing"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumRepository"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumEventsLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "purchaseSourceCache"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumStateSettings"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncContext"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/l/p2/b;->b:Le/a/l/n2/e;

    iput-object p2, p0, Le/a/l/p2/b;->c:Le/a/l/p2/r0;

    iput-object p3, p0, Le/a/l/p2/b;->d:Le/a/l/n0;

    iput-object p4, p0, Le/a/l/p2/b;->e:Lo3/a;

    iput-object p5, p0, Le/a/l/p2/b;->f:Le/a/l/p2/v0;

    iput-object p6, p0, Le/a/l/p2/b;->g:Ls1/w/f;

    const/4 p1, 0x0

    const/4 p2, 0x1

    .line 2
    invoke-static {p1, p2}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/l/p2/b;->a:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/premium/billing/Receipt;",
            "Ls1/w/d<",
            "-",
            "Le/a/l/p2/r0$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/l/p2/b;->g:Ls1/w/f;

    new-instance v1, Le/a/l/p2/b$a;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, v2}, Le/a/l/p2/b$a;-><init>(Le/a/l/p2/b;Lcom/truecaller/premium/billing/Receipt;Ls1/w/d;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
