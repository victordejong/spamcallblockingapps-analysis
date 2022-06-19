.class public final synthetic Le/a/x3/h/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Le/a/x3/h/e;


# direct methods
.method public synthetic constructor <init>(Le/a/x3/h/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/x3/h/a;->a:Le/a/x3/h/e;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 0

    iget-object p1, p0, Le/a/x3/h/a;->a:Le/a/x3/h/e;

    .line 1
    invoke-virtual {p1}, Le/a/x3/h/j;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/p4/a;

    invoke-interface {p1}, Le/a/p4/a;->z()Z

    const/4 p1, 0x1

    return p1
.end method
