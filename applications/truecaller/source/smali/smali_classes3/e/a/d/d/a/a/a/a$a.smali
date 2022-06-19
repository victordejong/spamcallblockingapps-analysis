.class public final Le/a/d/d/a/a/a/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/d/a/a/a/a;-><init>(Le/a/o2/m;Le/a/l4/c;Le/a/p5/c;Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/content/res/ColorStateList;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d/d/a/a/a/a$a;->b:I

    iput-object p2, p0, Le/a/d/d/a/a/a/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/d/d/a/a/a/a$a;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/d/d/a/a/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/a/a/a;

    .line 2
    iget-object v0, v0, Le/a/d/d/a/a/a/a;->h:Le/a/p5/i0;

    const v1, 0x7f0405a1

    .line 3
    invoke-virtual {v0, v1}, Le/a/p5/i0;->l(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/d/d/a/a/a/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d/d/a/a/a/a;

    .line 6
    iget-object v0, v0, Le/a/d/d/a/a/a/a;->h:Le/a/p5/i0;

    const v1, 0x7f04068f

    .line 7
    invoke-virtual {v0, v1}, Le/a/p5/i0;->l(I)I

    move-result v0

    invoke-static {v0}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v0

    return-object v0
.end method
