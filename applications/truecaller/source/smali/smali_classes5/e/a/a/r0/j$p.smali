.class public final Le/a/a/r0/j$p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/r0/j;->ln()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/r0/j;

.field public final synthetic b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

.field public final synthetic c:Landroidx/cardview/widget/CardView;


# direct methods
.method public constructor <init>(Le/a/a/r0/j;Landroidx/coordinatorlayout/widget/CoordinatorLayout;Landroidx/cardview/widget/CardView;)V
    .locals 0

    iput-object p1, p0, Le/a/a/r0/j$p;->a:Le/a/a/r0/j;

    iput-object p2, p0, Le/a/a/r0/j$p;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    iput-object p3, p0, Le/a/a/r0/j$p;->c:Landroidx/cardview/widget/CardView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 10

    .line 1
    sget-object v0, Le/a/b0/a/e0/a;->a:Le/a/b0/a/e0/a;

    .line 2
    iget-object v1, p0, Le/a/a/r0/j$p;->b:Landroidx/coordinatorlayout/widget/CoordinatorLayout;

    const-string v2, "parent"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    sget-object v2, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->TOP_FAR_END:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    .line 4
    iget-object v3, p0, Le/a/a/r0/j$p;->a:Le/a/a/r0/j;

    const v4, 0x7f120436

    invoke-virtual {v3, v4}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    const-string v4, "getString(R.string.OverflowMenuTooltip)"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v4, p0, Le/a/a/r0/j$p;->c:Landroidx/cardview/widget/CardView;

    .line 6
    sget-object v9, Le/a/a/r0/j$p$a;->b:Le/a/a/r0/j$p$a;

    .line 7
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v5, "parent.context"

    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v5, 0x0

    .line 8
    invoke-virtual/range {v0 .. v9}, Le/a/b0/a/e0/a;->b(Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;Ljava/lang/String;Landroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;)Z

    return-void
.end method
