.class public final Le/a/k/a/e/l/a;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/k/a/e/l/a$a;
    }
.end annotation


# instance fields
.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Landroid/view/View;

.field public final d:Le/a/k/a/e/l/a$a;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/k/a/e/l/a$a;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/k/a/e/l/a;->c:Landroid/view/View;

    iput-object p2, p0, Le/a/k/a/e/l/a;->d:Le/a/k/a/e/l/a$a;

    .line 2
    new-instance p1, Le/a/k/a/e/l/a$b;

    invoke-direct {p1, p0}, Le/a/k/a/e/l/a$b;-><init>(Le/a/k/a/e/l/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k/a/e/l/a;->a:Ls1/g;

    .line 3
    new-instance p1, Le/a/k/a/e/l/a$c;

    invoke-direct {p1, p0}, Le/a/k/a/e/l/a$c;-><init>(Le/a/k/a/e/l/a;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/k/a/e/l/a;->b:Ls1/g;

    return-void
.end method
