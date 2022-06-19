.class public final Le/a/b/a/c/a/a/g;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
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
.field public final synthetic b:Le/a/b/m/d0;

.field public final synthetic c:Le/a/b/a/c/a/a/e;


# direct methods
.method public constructor <init>(Le/a/b/m/d0;Le/a/b/a/c/a/a/e;Landroidx/appcompat/widget/SearchView;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/a/g;->b:Le/a/b/m/d0;

    iput-object p2, p0, Le/a/b/a/c/a/a/g;->c:Le/a/b/a/c/a/a/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/String;

    .line 2
    iget-object v0, p0, Le/a/b/a/c/a/a/g;->b:Le/a/b/m/d0;

    iget-object v0, v0, Le/a/b/m/d0;->c:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Le/a/b/a/c/a/a/f;

    invoke-direct {v1, p0}, Le/a/b/a/c/a/a/f;-><init>(Le/a/b/a/c/a/a/g;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 3
    iget-object v0, p0, Le/a/b/a/c/a/a/g;->c:Le/a/b/a/c/a/a/e;

    .line 4
    iget-object v0, v0, Le/a/b/a/c/a/a/e;->b:Le/a/b/a/c/a/b;

    if-eqz v0, :cond_0

    .line 5
    invoke-interface {v0, p1}, Le/a/b/a/c/a/b;->Dj(Ljava/lang/String;)V

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1

    :cond_0
    const-string p1, "categoryPresenter"

    .line 7
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
