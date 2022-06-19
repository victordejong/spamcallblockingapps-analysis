.class public final Le/a/c/a/k/e/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/k/e/e;

.field public final synthetic b:Ljava/util/List;


# direct methods
.method public constructor <init>(Le/a/c/a/k/e/e;Ljava/util/List;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/k/e/l;->a:Le/a/c/a/k/e/e;

    iput-object p2, p0, Le/a/c/a/k/e/l;->b:Ljava/util/List;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/c/a/k/e/l;->a:Le/a/c/a/k/e/e;

    .line 2
    sget-object v0, Le/a/c/a/k/e/e;->e:[Ls1/a/l;

    .line 3
    invoke-virtual {p1}, Le/a/c/a/k/e/e;->OA()Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/a/c/a/k/e/l;->b:Ljava/util/List;

    invoke-virtual {p1, v0}, Lcom/truecaller/insights/ui/markedimportantpage/presentation/MarkedImportantViewModel;->i(Ljava/util/List;)V

    return-void
.end method
