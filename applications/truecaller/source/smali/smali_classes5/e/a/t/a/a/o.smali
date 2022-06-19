.class public final Le/a/t/a/a/o;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"


# instance fields
.field public a:Le/a/t/a/a/p;

.field public final b:Ls1/g;

.field public final c:Landroid/view/View;

.field public final d:Le/a/t/a/a/e;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/t/a/a/e;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/t/a/a/o;->c:Landroid/view/View;

    iput-object p2, p0, Le/a/t/a/a/o;->d:Le/a/t/a/a/e;

    .line 2
    sget p1, Lcom/truecaller/android/truemoji/R$id;->imgGif:I

    invoke-static {p0, p1}, Le/a/p5/s0/f;->u(Landroidx/recyclerview/widget/RecyclerView$c0;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/t/a/a/o;->b:Ls1/g;

    return-void
.end method
