.class public final Lcom/truecaller/common/ui/listitem/ListItemX$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/common/ui/listitem/ListItemX;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Lcom/truecaller/common/ui/listitem/ListItemX$a;->b:I

    iput-object p2, p0, Lcom/truecaller/common/ui/listitem/ListItemX$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lcom/truecaller/common/ui/listitem/ListItemX$a;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/truecaller/common/ui/listitem/ListItemX$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_tcx_verified_16dp:I

    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {v0, v1, v2}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/truecaller/common/ui/listitem/ListItemX$a;->c:Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/common/ui/listitem/ListItemX;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/common/ui/R$drawable;->ic_true_badge:I

    sget v2, Lcom/truecaller/common/ui/R$attr;->tcx_brandBackgroundBlue:I

    invoke-static {v0, v1, v2}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
