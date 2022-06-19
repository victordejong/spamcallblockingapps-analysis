.class public final synthetic Le/a/a/c/v;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# instance fields
.field public final synthetic a:Le/a/a/c/y3;

.field public final synthetic b:[Lcom/truecaller/messaging/data/types/Message;


# direct methods
.method public synthetic constructor <init>(Le/a/a/c/y3;[Lcom/truecaller/messaging/data/types/Message;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/a/c/v;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/v;->b:[Lcom/truecaller/messaging/data/types/Message;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    iget-object v0, p0, Le/a/a/c/v;->a:Le/a/a/c/y3;

    iget-object v1, p0, Le/a/a/c/v;->b:[Lcom/truecaller/messaging/data/types/Message;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Le/a/c/a/b/a/q$h;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    iget-boolean v3, v0, Le/a/a/c/y3;->S:Z

    invoke-direct {p1, v2, p2, v3}, Le/a/c/a/b/a/q$h;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    .line 4
    invoke-static {p1}, Le/a/c/a/b/a/p;->PA(Le/a/c/a/b/a/q;)Le/a/c/a/b/a/p;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Le/a/c/a/b/a/p;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Le/a/a/c/y3;->C:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->x()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const v2, 0x1020002

    invoke-virtual {p1, v2}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const v2, 0x7f120d40

    const/4 v3, -0x1

    invoke-static {p1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->k(Landroid/view/View;II)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->n()V

    .line 8
    :cond_1
    :goto_0
    iget-object p1, v0, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    invoke-interface {p1, v1, p2}, Le/a/a/c/h3;->vg([Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
