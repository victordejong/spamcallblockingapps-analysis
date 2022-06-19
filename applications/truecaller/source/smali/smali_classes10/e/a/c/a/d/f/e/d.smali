.class public final Le/a/c/a/d/f/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/g/f;

.field public final synthetic b:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;


# direct methods
.method public constructor <init>(Le/a/c/a/g/f;Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/d/f/e/d;->a:Le/a/c/a/g/f;

    iput-object p2, p0, Le/a/c/a/d/f/e/d;->b:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    .line 1
    iget-object p1, p0, Le/a/c/a/d/f/e/d;->a:Le/a/c/a/g/f;

    iget-object p1, p1, Le/a/c/a/g/f;->e:Le/a/c/a/g/b1;

    iget-object p1, p1, Le/a/c/a/g/b1;->b:Lcom/truecaller/insights/ui/widget/SearchEditText;

    const-string v0, "searchCon.searchBar"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const-wide/16 v1, 0x0

    invoke-static {p1, v0, v1, v2}, Le/a/p5/s0/f;->X(Landroid/view/View;ZJ)V

    .line 2
    iget-object p1, p0, Le/a/c/a/d/f/e/d;->b:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    invoke-virtual {p1}, Ln3/r/a/l;->supportFinishAfterTransition()V

    return-void
.end method
