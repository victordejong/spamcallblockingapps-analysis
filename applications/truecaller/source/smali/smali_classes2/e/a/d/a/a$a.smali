.class public final Le/a/d/a/a$a;
.super Ljava/lang/Object;
.source "java-style lambda group"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
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

    iput p1, p0, Le/a/d/a/a$a;->a:I

    iput-object p2, p0, Le/a/d/a/a$a;->b:Ljava/lang/Object;

    iput-object p3, p0, Le/a/d/a/a$a;->c:Ljava/lang/Object;

    iput-object p4, p0, Le/a/d/a/a$a;->d:Ljava/lang/Object;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2

    iget p1, p0, Le/a/d/a/a$a;->a:I

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 1
    iget-object p1, p0, Le/a/d/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/a/a;

    invoke-static {p1}, Le/a/d/a/a;->QA(Le/a/d/a/a;)Ljava/util/Set;

    move-result-object p1

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/d/a/o;

    .line 3
    iget-object v0, v0, Le/a/d/a/o;->b:Lq3/a/x2/a1;

    .line 4
    sget-object v1, Le/a/d/v/l/c$c;->b:Le/a/d/v/l/c$c;

    invoke-interface {v0, v1}, Lq3/a/x2/a1;->setValue(Ljava/lang/Object;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, p0, Le/a/d/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/a/a;

    invoke-virtual {p1}, Le/m/a/g/e/e;->dismissAllowingStateLoss()V

    return-void

    :cond_1
    const/4 p1, 0x0

    .line 6
    throw p1

    .line 7
    :cond_2
    iget-object p1, p0, Le/a/d/a/a$a;->b:Ljava/lang/Object;

    check-cast p1, Le/a/d/a/a;

    invoke-virtual {p1}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/app/Activity;->recreate()V

    :cond_3
    return-void
.end method
