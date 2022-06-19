.class public final Le/a/y/a/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Le/a/y/a/c;


# direct methods
.method public constructor <init>(Le/a/y/a/c;)V
    .locals 0

    iput-object p1, p0, Le/a/y/a/b;->a:Le/a/y/a/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/y/a/b;->a:Le/a/y/a/c;

    .line 2
    iget-object v0, v0, Le/a/y/a/c;->c:Landroid/view/View;

    .line 3
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Le/a/y/a/b;->a:Le/a/y/a/c;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method
