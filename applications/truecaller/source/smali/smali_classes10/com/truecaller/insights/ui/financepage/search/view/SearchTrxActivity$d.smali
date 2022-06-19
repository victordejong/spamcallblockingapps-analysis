.class public final Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;-><init>()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/String;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$d;->b:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .line 1
    check-cast p1, Ljava/lang/String;

    const-string v0, "query"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$d;->b:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    .line 4
    sget v1, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->h:I

    .line 5
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->pa()Le/a/c/a/g/f;

    move-result-object v0

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x2

    const-string v3, "itemStateGroup"

    const-string v4, "emptyStateGroup"

    if-ge v1, v2, :cond_0

    .line 7
    iget-object p1, v0, Le/a/c/a/g/f;->b:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 8
    iget-object p1, v0, Le/a/c/a/g/f;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 9
    iget-object p1, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$d;->b:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    .line 10
    invoke-virtual {p1}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->qa()Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;

    move-result-object p1

    const-string v0, ""

    .line 11
    invoke-virtual {p1, v0}, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;->c(Ljava/lang/String;)V

    goto :goto_0

    .line 12
    :cond_0
    iget-object v1, v0, Le/a/c/a/g/f;->b:Landroidx/constraintlayout/widget/Group;

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 13
    iget-object v0, v0, Le/a/c/a/g/f;->c:Landroidx/constraintlayout/widget/Group;

    invoke-static {v0, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 14
    iget-object v0, p0, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity$d;->b:Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;

    .line 15
    invoke-virtual {v0}, Lcom/truecaller/insights/ui/financepage/search/view/SearchTrxActivity;->qa()Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;

    move-result-object v0

    .line 16
    invoke-virtual {v0, p1}, Lcom/truecaller/insights/ui/financepage/search/presentation/SearchTrxViewModel;->c(Ljava/lang/String;)V

    .line 17
    :goto_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
