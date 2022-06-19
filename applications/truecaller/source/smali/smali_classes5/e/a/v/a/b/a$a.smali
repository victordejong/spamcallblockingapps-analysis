.class public final Le/a/v/a/b/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/b/a;-><init>(Le/a/l4/c;Le/a/p5/h0;)V
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

    iput p1, p0, Le/a/v/a/b/a$a;->b:I

    iput-object p2, p0, Le/a/v/a/b/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/v/a/b/a$a;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/v/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/b/a;

    .line 2
    iget-object v0, v0, Le/a/v/a/b/a;->h:Le/a/p5/h0;

    .line 3
    sget v1, Lcom/truecaller/details_view/R$drawable;->ic_tcx_stat_silent_outline_24dp:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/v/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/b/a;

    .line 5
    iget-object v1, v1, Le/a/v/a/b/a;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 6
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/v/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/b/a;

    .line 9
    iget-object v0, v0, Le/a/v/a/b/a;->h:Le/a/p5/h0;

    .line 10
    sget v1, Lcom/truecaller/details_view/R$drawable;->ic_tcx_stat_on_call_outline_24dp:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 11
    iget-object v1, p0, Le/a/v/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/v/a/b/a;

    .line 12
    iget-object v1, v1, Le/a/v/a/b/a;->b:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Number;

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v1

    .line 13
    invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    return-object v0

    .line 14
    :cond_2
    iget-object v0, p0, Le/a/v/a/b/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/v/a/b/a;

    .line 15
    iget-object v0, v0, Le/a/v/a/b/a;->h:Le/a/p5/h0;

    .line 16
    sget v1, Lcom/truecaller/details_view/R$drawable;->ic_presence_status_available:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->c(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
