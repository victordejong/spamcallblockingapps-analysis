.class public final synthetic Le/a/e/z;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/ui/TruecallerInit;

.field public final synthetic b:Lcom/truecaller/bottombar/BottomBarButtonType;

.field public final synthetic c:Landroid/view/View;


# direct methods
.method public synthetic constructor <init>(Lcom/truecaller/ui/TruecallerInit;Lcom/truecaller/bottombar/BottomBarButtonType;Landroid/view/View;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/z;->a:Lcom/truecaller/ui/TruecallerInit;

    iput-object p2, p0, Le/a/e/z;->b:Lcom/truecaller/bottombar/BottomBarButtonType;

    iput-object p3, p0, Le/a/e/z;->c:Landroid/view/View;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    iget-object v0, p0, Le/a/e/z;->a:Lcom/truecaller/ui/TruecallerInit;

    iget-object v1, p0, Le/a/e/z;->b:Lcom/truecaller/bottombar/BottomBarButtonType;

    iget-object v6, p0, Le/a/e/z;->c:Landroid/view/View;

    .line 1
    sget-object v2, Le/a/b0/a/e0/a;->a:Le/a/b0/a/e0/a;

    iget-object v3, v0, Lcom/truecaller/ui/TruecallerInit;->q:Lcom/truecaller/bottombar/BottomBarView;

    .line 2
    sget-object v0, Lcom/truecaller/bottombar/BottomBarButtonType;->CALLS:Lcom/truecaller/bottombar/BottomBarButtonType;

    if-ne v1, v0, :cond_0

    sget-object v0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_START:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    :goto_0
    move-object v4, v0

    const v5, 0x7f12023f

    const/4 v7, 0x0

    .line 3
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    sget-object v11, Le/a/e/a0;->a:Le/a/e/a0;

    .line 4
    invoke-virtual/range {v2 .. v11}, Le/a/b0/a/e0/a;->a(Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILandroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;)Z

    return-void
.end method
