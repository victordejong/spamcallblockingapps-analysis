.class public final Le/a/c/a/d/d/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/c/a/d/d/c;


# instance fields
.field public final a:Le/a/c/a/d/d/f;

.field public final b:Ls1/w/f;

.field public final c:Le/a/c/a/d/d/a;


# direct methods
.method public constructor <init>(Le/a/c/a/d/d/f;Ls1/w/f;Le/a/c/a/d/d/a;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "financePageUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "financeBoundaryUseCase"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/c/a/d/d/d;->a:Le/a/c/a/d/d/f;

    iput-object p2, p0, Le/a/c/a/d/d/d;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/d/d/d;->c:Le/a/c/a/d/d/a;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/insights/ui/financepage/models/FinanceTab;Ljava/util/List;Ln3/v/k0;Ljava/lang/String;)Le/a/c/a/d/d/b;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/insights/ui/financepage/models/FinanceTab;",
            "Ljava/util/List<",
            "Le/a/c/a/l/a;",
            ">;",
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")",
            "Le/a/c/a/d/d/b;"
        }
    .end annotation

    const-string v0, "financeTab"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filters"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Le/a/c/a/d/d/b;

    .line 2
    iget-object v2, p0, Le/a/c/a/d/d/d;->a:Le/a/c/a/d/d/f;

    .line 3
    iget-object v3, p0, Le/a/c/a/d/d/d;->b:Ls1/w/f;

    .line 4
    iget-object v4, p0, Le/a/c/a/d/d/d;->c:Le/a/c/a/d/d/a;

    move-object v1, v0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    move-object v8, p4

    .line 5
    invoke-direct/range {v1 .. v8}, Le/a/c/a/d/d/b;-><init>(Le/a/c/a/d/d/f;Ls1/w/f;Le/a/c/a/d/d/a;Lcom/truecaller/insights/ui/financepage/models/FinanceTab;Ljava/util/List;Ln3/v/k0;Ljava/lang/String;)V

    return-object v0
.end method
