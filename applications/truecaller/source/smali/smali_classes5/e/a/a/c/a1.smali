.class public final synthetic Le/a/a/c/a1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/a1;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 11

    iget-object v0, p0, Le/a/a/c/a1;->a:Le/a/a/c/y3;

    .line 1
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 2
    sget-object v1, Le/a/b0/a/e0/a;->a:Le/a/b0/a/e0/a;

    iget-object v2, v0, Le/a/a/c/y3;->q0:Landroid/view/ViewGroup;

    sget-object v3, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->BOTTOM_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const v4, 0x7f1201f4

    iget-object v5, v0, Le/a/a/c/y3;->h0:Lcom/truecaller/messaging/conversation/voice_notes/RecordFloatingActionButton;

    .line 3
    invoke-virtual {v7}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v6, 0x7f0704e0

    invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    const v0, 0x7f04068d

    .line 4
    invoke-static {v7, v0}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v8

    const/4 v9, 0x1

    sget-object v10, Le/a/a/c/k0;->a:Le/a/a/c/k0;

    .line 5
    invoke-virtual/range {v1 .. v10}, Le/a/b0/a/e0/a;->a(Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILandroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;)Z

    :cond_0
    return-void
.end method
