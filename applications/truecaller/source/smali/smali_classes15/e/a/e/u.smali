.class public final synthetic Le/a/e/u;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/TruecallerInit;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/u;->a:Lcom/truecaller/ui/TruecallerInit;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Le/a/e/u;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 1
    sget-object v1, Le/a/b0/a/e0/a;->a:Le/a/b0/a/e0/a;

    iget-object v2, v0, Lcom/truecaller/ui/TruecallerInit;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 2
    invoke-virtual {v2}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    sget-object v3, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const v5, 0x7f1210cb

    .line 3
    invoke-virtual {v0, v5}, Landroid/app/Activity;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x0

    aput-object v5, v4, v6

    const v5, 0x7f121092

    invoke-virtual {v0, v5, v4}, Landroid/app/Activity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    iget-object v5, v0, Lcom/truecaller/ui/TruecallerInit;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 4
    invoke-virtual {v0}, Ln3/b/a/h;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f070160

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    iget-object v0, v0, Lcom/truecaller/ui/TruecallerInit;->x:Lcom/google/android/material/floatingactionbutton/FloatingActionButton;

    .line 5
    invoke-virtual {v0}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v7

    sget-object v10, Le/a/e/j0;->a:Le/a/e/j0;

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 6
    invoke-virtual/range {v1 .. v10}, Le/a/b0/a/e0/a;->b(Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;Ljava/lang/String;Landroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;)Z

    return-void
.end method
