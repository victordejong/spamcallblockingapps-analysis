.class public final Lp2;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
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

    iput p1, p0, Lp2;->b:I

    iput-object p2, p0, Lp2;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Lp2;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Lp2;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/truecaller/timezone/R$drawable;->ic_tcx_sun_24dp:I

    .line 2
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Lp2;->c:Ljava/lang/Object;

    check-cast v0, Landroid/content/Context;

    sget v1, Lcom/truecaller/timezone/R$drawable;->ic_tcx_moon_with_star_24dp:I

    .line 6
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 7
    invoke-static {v0, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
