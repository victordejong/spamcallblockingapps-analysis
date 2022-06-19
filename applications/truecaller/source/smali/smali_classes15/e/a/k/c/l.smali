.class public final Le/a/k/c/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Ln3/k/i/e;

.field public final synthetic b:Landroid/view/ScaleGestureDetector;


# direct methods
.method public constructor <init>(Ln3/k/i/e;Landroid/view/ScaleGestureDetector;)V
    .locals 0

    iput-object p1, p0, Le/a/k/c/l;->a:Ln3/k/i/e;

    iput-object p2, p0, Le/a/k/c/l;->b:Landroid/view/ScaleGestureDetector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/k/c/l;->a:Ln3/k/i/e;

    .line 2
    iget-object p1, p1, Ln3/k/i/e;->a:Ln3/k/i/e$a;

    check-cast p1, Ln3/k/i/e$b;

    .line 3
    iget-object p1, p1, Ln3/k/i/e$b;->a:Landroid/view/GestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 4
    iget-object p1, p0, Le/a/k/c/l;->b:Landroid/view/ScaleGestureDetector;

    invoke-virtual {p1, p2}, Landroid/view/ScaleGestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z

    const/4 p1, 0x1

    return p1
.end method
