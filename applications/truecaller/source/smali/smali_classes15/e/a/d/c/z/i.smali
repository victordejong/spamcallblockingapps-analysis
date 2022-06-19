.class public final Le/a/d/c/z/i;
.super Le/a/d/c/z/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/d/c/z/j<",
        "Le/a/d/c/z/p$b;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Le/a/b0/a/b/a;

.field public final c:Ls1/g;

.field public final d:Le/a/d/c/z/d;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/d/c/z/d;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/d/c/z/j;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/d/c/z/i;->d:Le/a/d/c/z/d;

    .line 2
    new-instance p2, Le/a/b0/a/b/a;

    invoke-virtual {p0}, Le/a/d/c/z/j;->N4()Le/a/p5/i0;

    move-result-object v0

    invoke-direct {p2, v0}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object p2, p0, Le/a/d/c/z/i;->b:Le/a/b0/a/b/a;

    .line 3
    new-instance p2, Le/a/d/c/z/i$a;

    invoke-direct {p2, p1}, Le/a/d/c/z/i$a;-><init>(Landroid/view/View;)V

    invoke-static {p2}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/z/i;->c:Ls1/g;

    return-void
.end method
