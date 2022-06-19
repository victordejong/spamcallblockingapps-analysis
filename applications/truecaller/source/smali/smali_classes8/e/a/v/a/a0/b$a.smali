.class public final Le/a/v/a/a0/b$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/v/a/a0/b;->Uh(Landroid/net/Uri;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Le/f/a/r/g<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/v/a/a0/b;


# direct methods
.method public constructor <init>(Le/a/v/a/a0/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/v/a/a0/b$a;->a:Le/a/v/a/a0/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLoadFailed(Le/f/a/n/o/r;Ljava/lang/Object;Le/f/a/r/k/k;Z)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/f/a/n/o/r;",
            "Ljava/lang/Object;",
            "Le/f/a/r/k/k<",
            "Landroid/graphics/drawable/Drawable;",
            ">;Z)Z"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/a/v/a/a0/b$a;->a:Le/a/v/a/a0/b;

    .line 2
    iget-object p1, p1, Le/a/v/a/a0/b;->a:Le/a/v/k/b;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p1, Le/a/v/k/b;->c:Landroid/widget/TextView;

    const-string p2, "binding.primaryBadge"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 4
    iget-object p1, p0, Le/a/v/a/a0/b$a;->a:Le/a/v/a/a0/b;

    .line 5
    iget-object p1, p1, Le/a/v/a/a0/b;->a:Le/a/v/k/b;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 6
    iget-object p1, p1, Le/a/v/k/b;->d:Landroid/widget/TextView;

    const-string p2, "binding.secondaryBadge"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method

.method public onResourceReady(Ljava/lang/Object;Ljava/lang/Object;Le/f/a/r/k/k;Le/f/a/n/a;Z)Z
    .locals 0

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    .line 2
    iget-object p1, p0, Le/a/v/a/a0/b$a;->a:Le/a/v/a/a0/b;

    .line 3
    iget-object p1, p1, Le/a/v/a/a0/b;->a:Le/a/v/k/b;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p1, Le/a/v/k/b;->c:Landroid/widget/TextView;

    const-string p2, "binding.primaryBadge"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 5
    iget-object p1, p0, Le/a/v/a/a0/b$a;->a:Le/a/v/a/a0/b;

    .line 6
    iget-object p1, p1, Le/a/v/a/a0/b;->a:Le/a/v/k/b;

    invoke-static {p1}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    .line 7
    iget-object p1, p1, Le/a/v/k/b;->d:Landroid/widget/TextView;

    const-string p2, "binding.secondaryBadge"

    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    const/4 p1, 0x0

    return p1
.end method
