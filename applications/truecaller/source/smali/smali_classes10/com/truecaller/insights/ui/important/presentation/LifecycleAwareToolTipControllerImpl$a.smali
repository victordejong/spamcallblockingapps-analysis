.class public final Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->bj(Le/a/c/a/c/g/d;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;

.field public final synthetic b:Landroid/view/ViewGroup;

.field public final synthetic c:Le/a/c/a/c/g/d;

.field public final synthetic d:Landroid/view/View;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;Landroid/view/ViewGroup;Le/a/c/a/c/g/d;Landroid/view/View;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->a:Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;

    iput-object p2, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->b:Landroid/view/ViewGroup;

    iput-object p3, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->c:Le/a/c/a/c/g/d;

    iput-object p4, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 12

    .line 1
    sget-object v0, Le/a/b0/a/e0/a;->a:Le/a/b0/a/e0/a;

    .line 2
    iget-object v1, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->b:Landroid/view/ViewGroup;

    .line 3
    iget-object v2, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->c:Le/a/c/a/c/g/d;

    .line 4
    iget-object v3, v2, Le/a/c/a/c/g/d;->b:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    .line 5
    iget-object v4, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->d:Landroid/view/View;

    .line 6
    iget v5, v2, Le/a/c/a/c/g/d;->e:F

    .line 7
    iget v6, v2, Le/a/c/a/c/g/d;->c:I

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    .line 8
    iget-object v10, v2, Le/a/c/a/c/g/d;->g:Ls1/z/b/a;

    const/16 v11, 0xe0

    move-object v2, v3

    move v3, v6

    move-object v6, v7

    move v7, v8

    move v8, v9

    move-object v9, v10

    move v10, v11

    .line 9
    invoke-static/range {v0 .. v10}, Le/a/b0/a/e0/a;->c(Le/a/b0/a/e0/a;Landroid/view/ViewGroup;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILandroid/view/View;FLandroid/content/Context;IZLs1/z/b/a;I)Z

    .line 10
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->a:Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;

    .line 11
    iget-object v0, v0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl;->b:Ljava/util/List;

    .line 12
    iget-object v1, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->c:Le/a/c/a/c/g/d;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    iget-object v0, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->c:Le/a/c/a/c/g/d;

    .line 14
    iget-object v0, v0, Le/a/c/a/c/g/d;->f:Ljava/lang/Long;

    if-eqz v0, :cond_2

    .line 15
    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-lez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/lang/Number;->longValue()J

    move-result-wide v0

    .line 16
    iget-object v2, p0, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;->b:Landroid/view/ViewGroup;

    new-instance v3, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a$a;

    invoke-direct {v3, p0}, Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a$a;-><init>(Lcom/truecaller/insights/ui/important/presentation/LifecycleAwareToolTipControllerImpl$a;)V

    invoke-virtual {v2, v3, v0, v1}, Landroid/view/ViewGroup;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_2
    return-void
.end method
