.class public final Le/a/c/a/d/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/g/e;->a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/c/a/d/g/e;->a:Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;

    .line 2
    sget v1, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->g:I

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/view/FinanceActivity;->pa()Le/a/c/a/g/a;

    move-result-object v0

    .line 4
    iget-object v0, v0, Le/a/c/a/g/a;->d:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "binding.emptyState"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/high16 v1, 0x3f800000    # 1.0f

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setAlpha(F)V

    return-void
.end method
