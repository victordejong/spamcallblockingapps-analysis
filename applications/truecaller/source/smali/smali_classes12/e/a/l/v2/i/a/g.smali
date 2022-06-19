.class public final Le/a/l/v2/i/a/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Le/a/b0/a/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    iput-object p1, p0, Le/a/l/v2/i/a/g;->b:Landroid/content/Context;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Le/a/b0/a/g;

    new-instance v1, Le/a/p5/i0;

    iget-object v2, p0, Le/a/l/v2/i/a/g;->b:Landroid/content/Context;

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/g;-><init>(Le/a/p5/h0;)V

    .line 2
    iget-object v1, v0, Le/a/b0/a/g;->a:Le/a/p5/h0;

    .line 3
    sget v2, Lcom/truecaller/premium/R$dimen;->caller_id_tcx_corner_radius:I

    invoke-interface {v1, v2}, Le/a/p5/c0;->H(I)I

    move-result v1

    int-to-float v1, v1

    invoke-virtual {v0, v1}, Landroid/graphics/drawable/GradientDrawable;->setCornerRadius(F)V

    return-object v0
.end method
