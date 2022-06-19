.class public final Le/a/b/a/c/a/a/i$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/a/c/a/a/i;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/a/c/a/a/i;


# direct methods
.method public constructor <init>(Le/a/b/a/c/a/a/i;)V
    .locals 0

    iput-object p1, p0, Le/a/b/a/c/a/a/i$b;->a:Le/a/b/a/c/a/a/i;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/b/a/c/a/a/i$b;->a:Le/a/b/a/c/a/a/i;

    .line 2
    iget-object p1, p1, Le/a/b/a/c/a/a/i;->b:Le/a/b/a/c/a/f;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/b/a/c/a/f;->O0()V

    return-void

    :cond_0
    const-string p1, "presenter"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
