.class public final Le/a/i/d/a$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/i/d/a;->a(Le/a/i/d/x;Le/a/u3/g;Le/a/i/d/e;)Le/a/o2/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Landroid/view/ViewGroup;",
        "Landroidx/recyclerview/widget/RecyclerView$c0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/u3/g;

.field public final synthetic c:Le/a/i/d/e;


# direct methods
.method public constructor <init>(Le/a/u3/g;Le/a/i/d/e;)V
    .locals 0

    iput-object p1, p0, Le/a/i/d/a$c;->b:Le/a/u3/g;

    iput-object p2, p0, Le/a/i/d/a$c;->c:Le/a/i/d/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    check-cast p1, Landroid/view/ViewGroup;

    const-string v0, "parent"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/i/d/a$c;->b:Le/a/u3/g;

    .line 3
    iget-object v1, v0, Le/a/u3/g;->u5:Le/a/u3/g$a;

    sget-object v2, Le/a/u3/g;->p6:[Ls1/a/l;

    const/16 v3, 0x152

    aget-object v2, v2, v3

    invoke-virtual {v1, v0, v2}, Le/a/u3/g$a;->a(Le/a/u3/g;Ls1/a/l;)Le/a/u3/b;

    move-result-object v0

    .line 4
    invoke-interface {v0}, Le/a/u3/b;->isEnabled()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    const v3, 0x7f0d0070

    if-eqz v0, :cond_0

    .line 5
    new-instance v0, Le/a/i/d/o;

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    .line 6
    sget-object v1, Le/a/i/d/a;->a:Le/a/i/g;

    .line 7
    iget-object v2, p0, Le/a/i/d/a$c;->c:Le/a/i/d/e;

    invoke-direct {v0, p1, v1, v2}, Le/a/i/d/o;-><init>(Landroid/view/View;Le/a/i/g;Le/a/i/d/e;)V

    goto :goto_0

    .line 8
    :cond_0
    new-instance v0, Le/a/i/d/p;

    invoke-static {p1, v3, v2, v1}, Le/a/p5/s0/f;->l(Landroid/view/ViewGroup;IZI)Landroid/view/View;

    move-result-object p1

    .line 9
    sget-object v1, Le/a/i/d/a;->a:Le/a/i/g;

    .line 10
    iget-object v2, p0, Le/a/i/d/a$c;->c:Le/a/i/d/e;

    invoke-direct {v0, p1, v1, v2}, Le/a/i/d/p;-><init>(Landroid/view/View;Le/a/i/g;Le/a/i/d/e;)V

    :goto_0
    return-object v0
.end method
