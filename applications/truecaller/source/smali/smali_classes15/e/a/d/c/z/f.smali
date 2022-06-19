.class public final Le/a/d/c/z/f;
.super Le/a/d/c/z/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/d/c/z/j<",
        "Le/a/d/c/z/p$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final b:Ls1/g;

.field public final c:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/d/c/z/j;-><init>(Landroid/view/View;)V

    iput-object p1, p0, Le/a/d/c/z/f;->c:Landroid/view/View;

    .line 2
    new-instance p1, Le/a/d/c/z/f$a;

    invoke-direct {p1, p0}, Le/a/d/c/z/f$a;-><init>(Le/a/d/c/z/f;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c/z/f;->b:Ls1/g;

    return-void
.end method
