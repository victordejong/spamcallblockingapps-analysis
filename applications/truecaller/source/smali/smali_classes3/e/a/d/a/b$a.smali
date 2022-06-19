.class public final Le/a/d/a/b$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/b;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:I

.field public final synthetic b:Ljava/lang/Object;

.field public final synthetic c:Ljava/lang/Object;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d/a/b$a;->a:I

    iput-object p2, p0, Le/a/d/a/b$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/d/a/b$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Le/a/d/a/b$a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 3

    iget p1, p0, Le/a/d/a/b$a;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/d/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/a/b;

    .line 2
    iget-object v0, p1, Le/a/d/a/b;->g:Le/a/d/c0/j1;

    if-eqz v0, :cond_0

    const/16 v1, 0x7b

    .line 3
    sget-object v2, Ls1/u/u;->a:Ls1/u/u;

    invoke-interface {v0, p1, v1, v2}, Le/a/d/c0/j1;->f(Landroidx/fragment/app/Fragment;ILjava/util/Set;)V

    return-void

    :cond_0
    const-string p1, "support"

    .line 4
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    throw v1

    .line 5
    :cond_1
    throw v1

    .line 6
    :cond_2
    iget-object p1, p0, Le/a/d/a/b$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/a/b;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_3
    return-void
.end method
