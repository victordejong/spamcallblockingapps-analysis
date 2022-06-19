.class public final Le/a/f/a/b/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/f/a/b/c;

.field public final synthetic b:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Le/a/f/a/b/c;Landroid/view/ViewGroup;)V
    .locals 0

    iput-object p1, p0, Le/a/f/a/b/e;->a:Le/a/f/a/b/c;

    iput-object p2, p0, Le/a/f/a/b/e;->b:Landroid/view/ViewGroup;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 13

    .line 1
    iget-object v0, p0, Le/a/f/a/b/e;->a:Le/a/f/a/b/c;

    invoke-virtual {v0}, Le/a/f/a/b/d;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    const-string v1, "context ?: return@Runnable"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    sget-object v2, Le/a/b0/a/e0/a;->a:Le/a/b0/a/e0/a;

    .line 3
    iget-object v3, p0, Le/a/f/a/b/e;->b:Landroid/view/ViewGroup;

    .line 4
    sget-object v4, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    .line 5
    sget v5, Lcom/truecaller/incallui/R$string;->incallui_voip_tooltip:I

    .line 6
    iget-object v1, p0, Le/a/f/a/b/e;->a:Le/a/f/a/b/c;

    .line 7
    invoke-virtual {v1}, Le/a/f/a/b/c;->iB()Le/a/f/x/e;

    move-result-object v1

    .line 8
    iget-object v6, v1, Le/a/f/x/e;->e:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/truecaller/incallui/R$dimen;->space:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    .line 10
    sget-object v11, Lz1;->c:Lz1;

    const/16 v12, 0xe0

    .line 11
    invoke-static/range {v2 .. v12}, Le/a/b0/a/e0/a;->c(Le/a/b0/a/e0/a;Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILandroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;I)Z

    :cond_0
    return-void
.end method
