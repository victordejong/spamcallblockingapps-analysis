.class public final Le/a/d/c/a/a/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/c/a/a/b;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "[I>;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d/c/a/a/b$a;->b:I

    iput-object p2, p0, Le/a/d/c/a/a/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 7

    iget v0, p0, Le/a/d/c/a/a/b$a;->b:I

    const/4 v1, 0x3

    const/4 v2, 0x2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x1

    if-eqz v0, :cond_1

    if-ne v0, v5, :cond_0

    new-array v0, v4, [I

    .line 1
    iget-object v4, p0, Le/a/d/c/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v4, Le/a/d/c/a/a/b;

    invoke-static {v4}, Le/a/d/c/a/a/b;->a(Le/a/d/c/a/a/b;)Le/a/p5/i0;

    move-result-object v4

    sget v6, Lcom/truecaller/common/ui/R$attr;->tcx_goldGradientStep1:I

    invoke-virtual {v4, v6}, Le/a/p5/i0;->l(I)I

    move-result v4

    aput v4, v0, v3

    .line 2
    iget-object v3, p0, Le/a/d/c/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v3, Le/a/d/c/a/a/b;

    invoke-static {v3}, Le/a/d/c/a/a/b;->a(Le/a/d/c/a/a/b;)Le/a/p5/i0;

    move-result-object v3

    sget v4, Lcom/truecaller/common/ui/R$attr;->tcx_goldGradientStep2:I

    invoke-virtual {v3, v4}, Le/a/p5/i0;->l(I)I

    move-result v3

    aput v3, v0, v5

    .line 3
    iget-object v3, p0, Le/a/d/c/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v3, Le/a/d/c/a/a/b;

    invoke-static {v3}, Le/a/d/c/a/a/b;->a(Le/a/d/c/a/a/b;)Le/a/p5/i0;

    move-result-object v3

    sget v4, Lcom/truecaller/common/ui/R$attr;->tcx_goldGradientStep4:I

    invoke-virtual {v3, v4}, Le/a/p5/i0;->l(I)I

    move-result v3

    aput v3, v0, v2

    .line 4
    iget-object v2, p0, Le/a/d/c/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/a/b;

    invoke-static {v2}, Le/a/d/c/a/a/b;->a(Le/a/d/c/a/a/b;)Le/a/p5/i0;

    move-result-object v2

    sget v3, Lcom/truecaller/common/ui/R$attr;->tcx_goldGradientStep5:I

    invoke-virtual {v2, v3}, Le/a/p5/i0;->l(I)I

    move-result v2

    aput v2, v0, v1

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    :cond_1
    new-array v0, v4, [I

    .line 6
    iget-object v4, p0, Le/a/d/c/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v4, Le/a/d/c/a/a/b;

    invoke-static {v4}, Le/a/d/c/a/a/b;->a(Le/a/d/c/a/a/b;)Le/a/p5/i0;

    move-result-object v4

    sget v6, Lcom/truecaller/voip/R$color;->credVoipHeaderGradient1:I

    invoke-virtual {v4, v6}, Le/a/p5/i0;->a(I)I

    move-result v4

    aput v4, v0, v3

    .line 7
    iget-object v3, p0, Le/a/d/c/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v3, Le/a/d/c/a/a/b;

    invoke-static {v3}, Le/a/d/c/a/a/b;->a(Le/a/d/c/a/a/b;)Le/a/p5/i0;

    move-result-object v3

    sget v4, Lcom/truecaller/voip/R$color;->credVoipHeaderGradient2:I

    invoke-virtual {v3, v4}, Le/a/p5/i0;->a(I)I

    move-result v3

    aput v3, v0, v5

    .line 8
    iget-object v3, p0, Le/a/d/c/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v3, Le/a/d/c/a/a/b;

    invoke-static {v3}, Le/a/d/c/a/a/b;->a(Le/a/d/c/a/a/b;)Le/a/p5/i0;

    move-result-object v3

    sget v4, Lcom/truecaller/voip/R$color;->credVoipHeaderGradient3:I

    invoke-virtual {v3, v4}, Le/a/p5/i0;->a(I)I

    move-result v3

    aput v3, v0, v2

    .line 9
    iget-object v2, p0, Le/a/d/c/a/a/b$a;->c:Ljava/lang/Object;

    check-cast v2, Le/a/d/c/a/a/b;

    invoke-static {v2}, Le/a/d/c/a/a/b;->a(Le/a/d/c/a/a/b;)Le/a/p5/i0;

    move-result-object v2

    sget v3, Lcom/truecaller/voip/R$color;->credVoipHeaderGradient4:I

    invoke-virtual {v2, v3}, Le/a/p5/i0;->a(I)I

    move-result v2

    aput v2, v0, v1

    return-object v0
.end method
