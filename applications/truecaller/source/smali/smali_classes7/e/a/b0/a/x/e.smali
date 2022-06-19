.class public final Le/a/b0/a/x/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "[I>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;


# direct methods
.method public constructor <init>(Lcom/truecaller/common/ui/imageview/GoldShineImageView;)V
    .locals 0

    iput-object p1, p0, Le/a/b0/a/x/e;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 4

    const/4 v0, 0x3

    new-array v0, v0, [I

    .line 1
    iget-object v1, p0, Le/a/b0/a/x/e;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-static {v1}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->d(Lcom/truecaller/common/ui/imageview/GoldShineImageView;)Le/a/p5/i0;

    move-result-object v1

    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_lightGldGradientStep1:I

    invoke-virtual {v1, v2}, Le/a/p5/i0;->l(I)I

    move-result v1

    const/4 v3, 0x0

    aput v1, v0, v3

    .line 2
    iget-object v1, p0, Le/a/b0/a/x/e;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-static {v1}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->d(Lcom/truecaller/common/ui/imageview/GoldShineImageView;)Le/a/p5/i0;

    move-result-object v1

    sget v3, Lcom/truecaller/common/ui/R$attr;->tcx_lightGldGradientStep2:I

    invoke-virtual {v1, v3}, Le/a/p5/i0;->l(I)I

    move-result v1

    const/4 v3, 0x1

    aput v1, v0, v3

    .line 3
    iget-object v1, p0, Le/a/b0/a/x/e;->b:Lcom/truecaller/common/ui/imageview/GoldShineImageView;

    invoke-static {v1}, Lcom/truecaller/common/ui/imageview/GoldShineImageView;->d(Lcom/truecaller/common/ui/imageview/GoldShineImageView;)Le/a/p5/i0;

    move-result-object v1

    invoke-virtual {v1, v2}, Le/a/p5/i0;->l(I)I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    return-object v0
.end method
