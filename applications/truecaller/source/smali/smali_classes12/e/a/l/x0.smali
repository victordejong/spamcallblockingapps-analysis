.class public final Le/a/l/x0;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;
.implements Le/a/o2/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/l/y0;",
        ">;",
        "Le/a/l/x0;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/premium/data/PremiumType;

.field public final c:Le/a/l/i2;

.field public final d:Le/a/l/q0;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/data/PremiumType;Le/a/l/i2;Le/a/l/q0;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumThemePartModel"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "detailsNavigator"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/l/x0;->b:Lcom/truecaller/premium/data/PremiumType;

    iput-object p2, p0, Le/a/l/x0;->c:Le/a/l/i2;

    iput-object p3, p0, Le/a/l/x0;->d:Le/a/l/q0;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/l/y0;

    const-string v0, "itemView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Le/a/l/x0;->c:Le/a/l/i2;

    iget-object v1, p0, Le/a/l/x0;->b:Lcom/truecaller/premium/data/PremiumType;

    invoke-interface {v0, v1}, Le/a/l/i2;->V9(Lcom/truecaller/premium/data/PremiumType;)Le/a/l/p2/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, v0, Le/a/l/p2/j1;->f:Ljava/util/List;

    .line 5
    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/l/p2/g0;

    invoke-interface {p1, p2}, Le/a/l/y0;->W2(Le/a/l/p2/g0;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/l/x0;->c:Le/a/l/i2;

    iget-object v1, p0, Le/a/l/x0;->b:Lcom/truecaller/premium/data/PremiumType;

    invoke-interface {v0, v1}, Le/a/l/i2;->V9(Lcom/truecaller/premium/data/PremiumType;)Le/a/l/p2/j1;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, v0, Le/a/l/p2/j1;->f:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/l/x0;->d:Le/a/l/q0;

    iget-object v1, p0, Le/a/l/x0;->b:Lcom/truecaller/premium/data/PremiumType;

    .line 2
    iget p1, p1, Le/a/o2/h;->b:I

    .line 3
    invoke-interface {v0, v1, p1}, Le/a/l/q0;->Te(Lcom/truecaller/premium/data/PremiumType;I)V

    const/4 p1, 0x1

    return p1
.end method
