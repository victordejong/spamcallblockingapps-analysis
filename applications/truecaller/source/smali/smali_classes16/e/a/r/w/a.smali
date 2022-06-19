.class public final synthetic Le/a/r/w/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# instance fields
.field public final synthetic a:Le/a/r/w/e;


# direct methods
.method public synthetic constructor <init>(Le/a/r/w/e;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/r/w/a;->a:Le/a/r/w/e;

    return-void
.end method


# virtual methods
.method public final onLongClick(Landroid/view/View;)Z
    .locals 1

    iget-object p1, p0, Le/a/r/w/a;->a:Le/a/r/w/e;

    .line 1
    invoke-virtual {p1}, Le/a/r/w/k;->getContext()Landroid/content/Context;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p1}, Le/a/r/w/k;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    check-cast p1, Le/a/p4/a;

    invoke-interface {p1}, Le/a/p4/a;->z()Z

    :cond_0
    const/4 p1, 0x1

    return p1
.end method
