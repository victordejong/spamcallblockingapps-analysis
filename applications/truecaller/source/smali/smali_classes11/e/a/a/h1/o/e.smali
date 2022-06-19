.class public final Le/a/a/h1/o/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/a/h1/o/f;


# direct methods
.method public constructor <init>(Le/a/a/h1/o/f;)V
    .locals 0

    iput-object p1, p0, Le/a/a/h1/o/e;->a:Le/a/a/h1/o/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/h1/o/e;->a:Le/a/a/h1/o/f;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 2
    iget-object v1, p0, Le/a/a/h1/o/e;->a:Le/a/a/h1/o/f;

    invoke-static {v1}, Le/a/a/h1/o/f;->a(Le/a/a/h1/o/f;)F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->translationX(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 3
    new-instance v1, Le/a/a/h1/o/e$a;

    invoke-direct {v1, p0}, Le/a/a/h1/o/e$a;-><init>(Le/a/a/h1/o/e;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewPropertyAnimator;->withEndAction(Ljava/lang/Runnable;)Landroid/view/ViewPropertyAnimator;

    move-result-object v0

    .line 4
    invoke-virtual {v0}, Landroid/view/ViewPropertyAnimator;->start()V

    return-void
.end method
