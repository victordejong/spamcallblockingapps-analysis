.class public final Le/a/j/a/c/a$e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/j/a/c/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Boolean;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Le/a/j/d/d;

.field public final synthetic c:Le/a/j/a/c/a;


# direct methods
.method public constructor <init>(Le/a/j/d/d;Le/a/j/a/c/a;)V
    .locals 0

    iput-object p1, p0, Le/a/j/a/c/a$e;->b:Le/a/j/d/d;

    iput-object p2, p0, Le/a/j/a/c/a$e;->c:Le/a/j/a/c/a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 2
    iget-object v0, p0, Le/a/j/a/c/a$e;->b:Le/a/j/d/d;

    iget-object v0, v0, Le/a/j/d/d;->f:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v1, "questionContainer"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.graphics.drawable.GradientDrawable"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/graphics/drawable/GradientDrawable;

    const/4 v1, 0x1

    .line 3
    invoke-static {v1}, Le/a/p5/s0/g;->O(I)I

    move-result v1

    if-eqz p1, :cond_0

    iget-object p1, p0, Le/a/j/a/c/a$e;->c:Le/a/j/a/c/a;

    .line 4
    iget-object p1, p1, Le/a/j/a/c/a;->h:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/j/a/c/a$e;->c:Le/a/j/a/c/a;

    .line 6
    iget-object p1, p1, Le/a/j/a/c/a;->i:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 7
    :goto_0
    invoke-virtual {v0, v1, p1}, Landroid/graphics/drawable/GradientDrawable;->setStroke(II)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
