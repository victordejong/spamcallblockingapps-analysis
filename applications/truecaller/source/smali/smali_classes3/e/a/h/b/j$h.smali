.class public final Le/a/h/b/j$h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/j;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/j;


# direct methods
.method public constructor <init>(Le/a/h/b/j;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/j$h;->a:Le/a/h/b/j;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/h/b/j$h;->a:Le/a/h/b/j;

    invoke-virtual {p1}, Le/a/h/b/j;->OA()Le/a/h/b/t;

    move-result-object p1

    invoke-interface {p1}, Le/a/h/b/t;->Sv()V

    const/4 p1, 0x0

    return p1
.end method
