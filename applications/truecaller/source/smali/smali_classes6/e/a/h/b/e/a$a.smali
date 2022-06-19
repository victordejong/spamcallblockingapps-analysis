.class public final Le/a/h/b/e/a$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/e/a;-><init>(Landroid/view/View;Le/a/q2/a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/view/animation/Animation;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/h/b/e/a$a;->b:I

    iput-object p2, p0, Le/a/h/b/e/a$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/h/b/e/a$a;->b:I

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/h/b/e/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/e/a;

    .line 2
    iget-object v0, v0, Le/a/h/b/e/a;->g:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001d

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 4
    iget-object v1, p0, Le/a/h/b/e/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/e/a;

    .line 5
    iget-object v1, v1, Le/a/h/b/e/a;->f:Le/a/h/b/e/a$b;

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 7
    throw v0

    .line 8
    :cond_1
    iget-object v0, p0, Le/a/h/b/e/a$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/h/b/e/a;

    .line 9
    iget-object v0, v0, Le/a/h/b/e/a;->g:Landroid/view/View;

    .line 10
    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f01001c

    invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    .line 11
    iget-object v1, p0, Le/a/h/b/e/a$a;->c:Ljava/lang/Object;

    check-cast v1, Le/a/h/b/e/a;

    .line 12
    iget-object v1, v1, Le/a/h/b/e/a;->e:Le/a/h/b/e/a$c;

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    return-object v0
.end method
