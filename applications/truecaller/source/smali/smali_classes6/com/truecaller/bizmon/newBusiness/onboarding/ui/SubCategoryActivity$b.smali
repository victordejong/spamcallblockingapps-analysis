.class public final Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;->J2(Ljava/util/List;)V
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
.field public final synthetic b:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;


# direct methods
.method public constructor <init>(Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;)V
    .locals 0

    iput-object p1, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity$b;->b:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity$b;->b:Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;

    .line 3
    iget-object v1, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;->c:Le/a/b/a/c/a/c0/e;

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 4
    iget-object v0, v0, Lcom/truecaller/bizmon/newBusiness/onboarding/ui/SubCategoryActivity;->a:Le/a/b/a/c/a/a0;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Le/a/b/a/c/a/a0;->ae(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    const-string v0, "filteredCategories"

    .line 6
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    new-instance v0, Le/a/g5/e0/u/a;

    iget-object v2, v1, Le/a/b/a/c/a/c0/e;->a:Ljava/util/List;

    invoke-direct {v0, v2, p1}, Le/a/g5/e0/u/a;-><init>(Ljava/util/List;Ljava/util/List;)V

    const/4 v2, 0x1

    .line 8
    invoke-static {v0, v2}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object v0

    const-string v2, "DiffUtil.calculateDiff(C\u2026ies, filteredCategories))"

    .line 9
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iput-object p1, v1, Le/a/b/a/c/a/c0/e;->a:Ljava/util/List;

    .line 11
    new-instance p1, Ln3/b0/a/b;

    invoke-direct {p1, v1}, Ln3/b0/a/b;-><init>(Landroidx/recyclerview/widget/RecyclerView$g;)V

    invoke-virtual {v0, p1}, Ln3/b0/a/h$d;->b(Ln3/b0/a/q;)V

    .line 12
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "presenter"

    .line 13
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2

    :cond_1
    const-string p1, "adapter"

    .line 14
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v2
.end method
