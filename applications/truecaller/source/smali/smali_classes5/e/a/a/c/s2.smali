.class public final synthetic Le/a/a/c/s2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/s2;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Le/a/a/c/s2;->a:Le/a/a/c/y3;

    .line 1
    iget-object p1, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1}, Le/a/a/c/f4;->lh()V

    const/4 p1, 0x1

    return p1
.end method
