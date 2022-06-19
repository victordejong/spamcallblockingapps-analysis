.class public final Le/a/l/b1;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/u2/a/e;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/l/c1;",
        ">;",
        "Le/a/l/b1;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/premium/data/PremiumType;

.field public final c:I

.field public final d:Le/a/l/i2;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/data/PremiumType;ILe/a/l/i2;)V
    .locals 1
    .param p2    # I
        .annotation runtime Ljavax/inject/Named;
            value = "page"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumThemePartModel"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/l/b1;->b:Lcom/truecaller/premium/data/PremiumType;

    iput p2, p0, Le/a/l/b1;->c:I

    iput-object p3, p0, Le/a/l/b1;->d:Le/a/l/i2;

    return-void
.end method


# virtual methods
.method public Y0(Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/l/c1;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    iget-object v0, p0, Le/a/l/b1;->d:Le/a/l/i2;

    iget-object v1, p0, Le/a/l/b1;->b:Lcom/truecaller/premium/data/PremiumType;

    invoke-interface {v0, v1}, Le/a/l/i2;->V9(Lcom/truecaller/premium/data/PremiumType;)Le/a/l/p2/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 5
    iget-object v0, v0, Le/a/l/p2/j1;->f:Ljava/util/List;

    .line 6
    iget v1, p0, Le/a/l/b1;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l/p2/g0;

    invoke-interface {p1, v0}, Le/a/l/c1;->W2(Le/a/l/p2/g0;)V

    :cond_0
    return-void
.end method
