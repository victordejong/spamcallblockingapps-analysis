.class public final Le/a/c/a/k/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/e/d;->a:Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;

    iput-object p2, p0, Le/a/c/a/k/e/d;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/k/e/d;->a:Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;

    .line 2
    sget v0, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->e:I

    .line 3
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/markedimportantpage/view/MarkedImportantPageActivity;->qa()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/c/a/k/e/d;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->i(Ljava/util/List;)V

    return-void
.end method
