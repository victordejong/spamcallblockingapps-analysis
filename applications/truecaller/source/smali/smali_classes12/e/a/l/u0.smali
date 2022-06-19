.class public final Le/a/l/u0;
.super Le/a/o2/c;
.source "SourceFile"

# interfaces
.implements Le/a/o2/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/o2/c<",
        "Le/a/l/v0;",
        ">;",
        "Le/a/l/u0;"
    }
.end annotation


# instance fields
.field public final b:Lcom/truecaller/premium/data/PremiumType;

.field public final c:Le/a/l/i2;


# direct methods
.method public constructor <init>(Lcom/truecaller/premium/data/PremiumType;Le/a/l/i2;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "premiumType"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "premiumThemePartModel"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/o2/c;-><init>()V

    iput-object p1, p0, Le/a/l/u0;->b:Lcom/truecaller/premium/data/PremiumType;

    iput-object p2, p0, Le/a/l/u0;->c:Le/a/l/i2;

    return-void
.end method


# virtual methods
.method public G(Ljava/lang/Object;I)V
    .locals 1

    .line 1
    check-cast p1, Le/a/l/v0;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/l/u0;->c:Le/a/l/i2;

    iget-object v0, p0, Le/a/l/u0;->b:Lcom/truecaller/premium/data/PremiumType;

    invoke-interface {p2, v0}, Le/a/l/i2;->V9(Lcom/truecaller/premium/data/PremiumType;)Le/a/l/p2/j1;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 4
    iget-object p2, p2, Le/a/l/p2/j1;->a:Le/a/l/p2/h0;

    .line 5
    invoke-interface {p1, p2}, Le/a/l/v0;->f4(Le/a/l/p2/h0;)V

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, -0x1

    return-wide v0
.end method
