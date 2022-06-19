.class public final Le/a/j/a/d/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/d/a;-><init>()V
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

    iput p1, p0, Le/a/j/a/d/a$a;->b:I

    iput-object p2, p0, Le/a/j/a/d/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3

    iget v0, p0, Le/a/j/a/d/a$a;->b:I

    if-eqz v0, :cond_2

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/j/a/d/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/j/a/d/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/surveys/R$color;->ratingYellow:I

    .line 2
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 4
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 5
    throw v0

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/j/a/d/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/j/a/d/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/surveys/R$color;->ratingRed:I

    .line 7
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 8
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 9
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0

    .line 10
    :cond_2
    iget-object v0, p0, Le/a/j/a/d/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/j/a/d/a;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/surveys/R$color;->ratingGreen:I

    .line 11
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 13
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method
