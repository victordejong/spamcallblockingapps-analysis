.class public final Le/a/c/a/p/e/o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/c/a/p/e/f;


# direct methods
.method public constructor <init>(Le/a/c/a/p/e/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/p/e/o;->a:Le/a/c/a/p/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    .line 1
    sget-object p1, Le/a/c/a/j/e/a;->l:Le/a/c/a/j/e/a$d;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    new-instance v0, Le/a/c/a/j/e/a;

    invoke-direct {v0}, Le/a/c/a/j/e/a;-><init>()V

    .line 4
    iget-object v1, p0, Le/a/c/a/p/e/o;->a:Le/a/c/a/p/e/f;

    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Le/a/c/a/j/e/a;->k:Ljava/lang/String;

    .line 7
    invoke-virtual {v0, v1, p1}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Le/a/c/a/p/e/o;->a:Le/a/c/a/p/e/f;

    .line 9
    sget-object v0, Le/a/c/a/p/e/f;->m:[Ls1/a/l;

    .line 10
    invoke-virtual {p1}, Le/a/c/a/p/e/f;->RA()Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;

    move-result-object p1

    .line 11
    iget-object p1, p1, Lcom/truecaller/insights/ui/smartfeed/presentation/InsightsSmartFeedViewModel;->w:Le/a/c/a/i/h;

    sget-object v0, Le/a/c/a/j/b/g;->b:Le/a/c/a/j/b/g;

    .line 12
    sget-object v0, Le/a/c/a/j/b/g;->a:Le/a/c/r/d/b;

    .line 13
    invoke-interface {p1, v0}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    return-void
.end method
