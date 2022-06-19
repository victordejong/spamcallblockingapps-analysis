.class public final Le/a/c/a/d/d/b;
.super Ln3/z/v$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ln3/z/v$b<",
        "Ljava/lang/Long;",
        "Lcom/truecaller/insights/ui/models/AdapterItem;",
        ">;"
    }
.end annotation


# instance fields
.field public final a:Le/a/c/a/d/d/f;

.field public final b:Ls1/w/f;

.field public final c:Le/a/c/a/d/d/a;

.field public final d:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

.field public final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/c/a/l/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ln3/v/k0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/c/a/d/d/f;Ls1/w/f;Le/a/c/a/d/d/a;Lcom/truecaller/insights/ui/financepage/models/FinanceTab;Ljava/util/List;Ln3/v/k0;Ljava/lang/String;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "IO"
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/c/a/d/d/f;",
            "Ls1/w/f;",
            "Le/a/c/a/d/d/a;",
            "Lcom/truecaller/insights/ui/financepage/models/FinanceTab;",
            "Ljava/util/List<",
            "Le/a/c/a/l/a;",
            ">;",
            "Ln3/v/k0<",
            "Ljava/lang/Boolean;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "financePageUseCase"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "ioContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "financeBoundaryUseCase"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "financeTab"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "filters"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ln3/z/v$b;-><init>()V

    iput-object p1, p0, Le/a/c/a/d/d/b;->a:Le/a/c/a/d/d/f;

    iput-object p2, p0, Le/a/c/a/d/d/b;->b:Ls1/w/f;

    iput-object p3, p0, Le/a/c/a/d/d/b;->c:Le/a/c/a/d/d/a;

    iput-object p4, p0, Le/a/c/a/d/d/b;->d:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    iput-object p5, p0, Le/a/c/a/d/d/b;->e:Ljava/util/List;

    iput-object p6, p0, Le/a/c/a/d/d/b;->f:Ln3/v/k0;

    iput-object p7, p0, Le/a/c/a/d/d/b;->g:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public a()Ln3/z/v;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ln3/z/v<",
            "Ljava/lang/Long;",
            "Lcom/truecaller/insights/ui/models/AdapterItem;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v8, Le/a/c/a/d/d/e;

    iget-object v1, p0, Le/a/c/a/d/d/b;->a:Le/a/c/a/d/d/f;

    iget-object v2, p0, Le/a/c/a/d/d/b;->b:Ls1/w/f;

    iget-object v3, p0, Le/a/c/a/d/d/b;->c:Le/a/c/a/d/d/a;

    iget-object v4, p0, Le/a/c/a/d/d/b;->d:Lcom/truecaller/insights/ui/financepage/models/FinanceTab;

    iget-object v5, p0, Le/a/c/a/d/d/b;->e:Ljava/util/List;

    iget-object v6, p0, Le/a/c/a/d/d/b;->f:Ln3/v/k0;

    iget-object v7, p0, Le/a/c/a/d/d/b;->g:Ljava/lang/String;

    move-object v0, v8

    invoke-direct/range {v0 .. v7}, Le/a/c/a/d/d/e;-><init>(Le/a/c/a/d/d/f;Ls1/w/f;Le/a/c/a/d/d/a;Lcom/truecaller/insights/ui/financepage/models/FinanceTab;Ljava/util/List;Ln3/v/k0;Ljava/lang/String;)V

    return-object v8
.end method
