.class public abstract Le/a/d/c/z/j;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Le/a/d/c/z/p;",
        ">",
        "Landroidx/recyclerview/widget/RecyclerView$c0;"
    }
.end annotation


# instance fields
.field public final a:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    .line 2
    new-instance v0, Le/a/d/c/z/j$a;

    invoke-direct {v0, p1}, Le/a/d/c/z/j$a;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/z/j;->a:Ls1/g;

    return-void
.end method


# virtual methods
.method public final N4()Le/a/p5/i0;
    .locals 1

    iget-object v0, p0, Le/a/d/c/z/j;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/p5/i0;

    return-object v0
.end method
