.class public final synthetic Le/a/e/c/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# instance fields
.field public final synthetic a:Le/a/e/c/s1;


# direct methods
.method public synthetic constructor <init>(Le/a/e/c/s1;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/e/c/c0;->a:Le/a/e/c/s1;

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1

    iget-object p1, p0, Le/a/e/c/c0;->a:Le/a/e/c/s1;

    .line 1
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    .line 3
    iget-object p2, p1, Le/a/e/c/s1;->l0:Landroid/widget/RelativeLayout;

    invoke-virtual {p1, p2}, Le/a/e/c/s1;->AB(Landroid/view/View;)V

    :cond_0
    return v0
.end method
