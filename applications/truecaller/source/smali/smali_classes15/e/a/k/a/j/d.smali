.class public final Le/a/k/a/j/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/widget/PopupWindow$OnDismissListener;


# instance fields
.field public final synthetic a:Le/a/k/a/j/f;


# direct methods
.method public constructor <init>(Le/a/k/a/j/f;Landroid/transition/Slide;)V
    .locals 0

    iput-object p1, p0, Le/a/k/a/j/d;->a:Le/a/k/a/j/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onDismiss()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/k/a/j/d;->a:Le/a/k/a/j/f;

    iget-object v0, v0, Le/a/k/a/j/f;->c:Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;

    .line 2
    invoke-virtual {v0}, Lcom/truecaller/videocallerid/ui/utils/ToastWithActionView;->i()V

    .line 3
    iget-object v0, p0, Le/a/k/a/j/d;->a:Le/a/k/a/j/f;

    iget-object v0, v0, Le/a/k/a/j/f;->e:Ls1/z/b/a;

    invoke-interface {v0}, Ls1/z/b/a;->invoke()Ljava/lang/Object;

    return-void
.end method
