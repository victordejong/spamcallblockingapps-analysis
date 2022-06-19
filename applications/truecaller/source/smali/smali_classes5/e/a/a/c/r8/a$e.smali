.class public Le/a/a/c/r8/a$e;
.super Le/a/a/c/r8/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/c/r8/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/c/r8/a<",
        "Le/a/a/c/a/t;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(IILandroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Le/a/a/c/r8/a;-><init>(IILandroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public d(Le/a/a/c/r8/c;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/a/c/a/t;

    .line 2
    invoke-virtual {p1}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public e()Le/a/a/c/r8/c;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/c/r8/a;->e:Landroid/view/LayoutInflater;

    iget v1, p0, Le/a/a/c/r8/a;->d:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 2
    new-instance v1, Le/a/a/c/a/t;

    invoke-direct {v1, v0}, Le/a/a/c/a/t;-><init>(Landroid/view/View;)V

    .line 3
    invoke-virtual {v0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    return-object v1
.end method
