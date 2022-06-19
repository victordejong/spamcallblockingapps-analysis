.class public final synthetic Le/a/a/c/p0;
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

    iput-object p1, p0, Le/a/a/c/p0;->a:Le/a/a/c/y3;

    iput-object p2, p0, Le/a/a/c/p0;->b:[Lcom/truecaller/messaging/data/types/Message;

    return-void
.end method


# virtual methods
.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Le/a/a/c/p0;->a:Le/a/a/c/y3;

    iget-object v1, p0, Le/a/a/c/p0;->b:[Lcom/truecaller/messaging/data/types/Message;

    check-cast p1, Ljava/lang/Boolean;

    check-cast p2, Ljava/lang/String;

    .line 1
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    array-length v2, v1

    const/4 v3, 0x0

    if-lez v2, :cond_0

    aget-object v2, v1, v3

    .line 3
    iget-object v2, v2, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    .line 4
    iget-object v4, v2, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    iget v2, v2, Lcom/truecaller/data/entity/messaging/Participant;->b:I

    .line 5
    invoke-static {v4}, Le/a/b0/q/g0;->K(Ljava/lang/String;)I

    move-result v5

    .line 6
    invoke-static {v4, v2, v5}, Le/a/b0/q/g0;->c(Ljava/lang/String;II)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    .line 7
    :goto_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    iget-boolean p1, v0, Le/a/a/c/y3;->S:Z

    if-eqz p1, :cond_1

    .line 9
    new-instance p1, Le/a/c/a/b/a/q$d;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, p2}, Le/a/c/a/b/a/q$d;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    if-eqz v2, :cond_2

    .line 10
    new-instance p1, Le/a/c/a/b/a/q$c;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, p2}, Le/a/c/a/b/a/q$c;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_1

    .line 11
    :cond_2
    new-instance p1, Le/a/c/a/b/a/q$f;

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    invoke-direct {p1, v2, p2}, Le/a/c/a/b/a/q$f;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 12
    :goto_1
    invoke-static {p1}, Le/a/c/a/b/a/p;->PA(Le/a/c/a/b/a/q;)Le/a/c/a/b/a/p;

    move-result-object p1

    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getChildFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v2

    sget-object v3, Le/a/c/a/b/a/p;->c:Ljava/lang/String;

    invoke-virtual {p1, v2, v3}, Ln3/r/a/k;->show(Landroidx/fragment/app/FragmentManager;Ljava/lang/String;)V

    goto :goto_3

    .line 13
    :cond_3
    iget-object p1, v0, Le/a/a/c/y3;->C:Le/a/c/b/j;

    invoke-interface {p1}, Le/a/c/b/j;->x()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 14
    invoke-virtual {v0}, Landroidx/fragment/app/Fragment;->getActivity()Ln3/r/a/l;

    move-result-object p1

    const v4, 0x1020002

    invoke-virtual {p1, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    .line 15
    iget-boolean v5, v0, Le/a/a/c/y3;->S:Z

    if-eqz v5, :cond_4

    const v2, 0x7f120f8b

    .line 16
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_4
    if-eqz v2, :cond_5

    const v2, 0x7f120f87

    .line 17
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_2

    :cond_5
    const v2, 0x7f120f8c

    .line 18
    invoke-virtual {v0, v2}, Landroidx/fragment/app/Fragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    aput-object v2, v4, v3

    const v2, 0x7f120d3f

    .line 19
    invoke-virtual {v0, v2, v4}, Landroidx/fragment/app/Fragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    const/4 v3, -0x1

    .line 20
    invoke-static {p1, v2, v3}, Lcom/google/android/material/snackbar/Snackbar;->l(Landroid/view/View;Ljava/lang/CharSequence;I)Lcom/google/android/material/snackbar/Snackbar;

    move-result-object p1

    .line 21
    invoke-virtual {p1}, Lcom/google/android/material/snackbar/Snackbar;->n()V

    .line 22
    :cond_6
    :goto_3
    iget-object p1, v0, Le/a/a/c/y3;->d:Le/a/a/c/h3;

    invoke-interface {p1, v1, p2}, Le/a/a/c/h3;->w2([Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;)V

    const/4 p1, 0x0

    return-object p1
.end method
