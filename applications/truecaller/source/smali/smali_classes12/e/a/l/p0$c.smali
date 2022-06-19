.class public final Le/a/l/p0$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/l/p0;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/l/p0;


# direct methods
.method public constructor <init>(Le/a/l/p0;)V
    .locals 0

    iput-object p1, p0, Le/a/l/p0$c;->a:Le/a/l/p0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 1

    .line 1
    iget-object p1, p0, Le/a/l/p0$c;->a:Le/a/l/p0;

    .line 2
    iget-object p1, p1, Le/a/l/p0;->c:Le/a/l/l;

    if-eqz p1, :cond_0

    .line 3
    invoke-interface {p1}, Le/a/l/l;->Oh()Le/a/l/b$e;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 4
    iget-boolean p1, p1, Le/a/l/b$e;->c:Z

    const/4 v0, 0x1

    if-ne p1, v0, :cond_0

    .line 5
    iget-object p1, p0, Le/a/l/p0$c;->a:Le/a/l/p0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->requireActivity()Ln3/r/a/l;

    move-result-object p1

    invoke-virtual {p1}, Landroid/app/Activity;->finish()V

    goto :goto_0

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/l/p0$c;->a:Le/a/l/p0;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentManager;->c0()V

    :goto_0
    return-void
.end method
