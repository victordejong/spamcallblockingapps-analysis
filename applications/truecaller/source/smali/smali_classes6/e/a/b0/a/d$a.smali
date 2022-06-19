.class public final Le/a/b0/a/d$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b0/a/d;-><init>(Le/a/p5/h0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/b0/a/d$a;->b:I

    iput-object p2, p0, Le/a/b0/a/d$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/b0/a/d$a;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/b0/a/d$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/p5/h0;

    sget v1, Lcom/truecaller/common/ui/R$color;->tcx_textPrimary_dark:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v0

    .line 2
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 3
    throw v0

    .line 4
    :cond_1
    iget-object v0, p0, Le/a/b0/a/d$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/p5/h0;

    sget v1, Lcom/truecaller/common/ui/R$color;->tcx_brandBackgroundBlue_light:I

    invoke-interface {v0, v1}, Le/a/p5/c0;->a(I)I

    move-result v0

    .line 5
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
