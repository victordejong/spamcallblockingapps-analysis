.class public final Le/a/c/a/s/g/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# instance fields
.field public final synthetic a:Le/a/c/a/s/g/f;


# direct methods
.method public constructor <init>(Le/a/c/a/s/g/f;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/s/g/e;->a:Le/a/c/a/s/g/f;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 0

    const-string p2, "view"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p0}, Landroid/view/View;->removeOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 2
    iget-object p1, p0, Le/a/c/a/s/g/e;->a:Le/a/c/a/s/g/f;

    new-instance p2, Le/a/c/a/s/g/e$a;

    invoke-direct {p2, p0}, Le/a/c/a/s/g/e$a;-><init>(Le/a/c/a/s/g/e;)V

    invoke-virtual {p1, p2}, Landroid/widget/FrameLayout;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
