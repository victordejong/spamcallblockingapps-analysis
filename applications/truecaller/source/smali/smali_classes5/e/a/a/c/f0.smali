.class public final synthetic Le/a/a/c/f0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/f0;->a:Le/a/a/c/y3;

    return-void
.end method


# virtual methods
.method public final onFocusChange(Landroid/view/View;Z)V
    .locals 1

    iget-object p1, p0, Le/a/a/c/f0;->a:Le/a/a/c/y3;

    if-eqz p2, :cond_0

    .line 1
    iget-object v0, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {v0}, Le/a/a/c/f4;->R4()V

    .line 2
    :cond_0
    iget-object p1, p1, Le/a/a/c/y3;->b:Le/a/a/c/f4;

    invoke-interface {p1, p2}, Le/a/a/c/f4;->Qa(Z)V

    return-void
.end method
