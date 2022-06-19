.class public final Le/a/h/f/c0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field public final synthetic a:Le/a/h/f/b;


# direct methods
.method public constructor <init>(Le/a/h/f/b;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/c0;->a:Le/a/h/f/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/f/c0;->a:Le/a/h/f/b;

    invoke-static {}, Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;->values()[Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    move-result-object v1

    aget-object p2, v1, p2

    .line 2
    iget-object v1, v0, Le/a/h/f/b;->a:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    iget-object v0, v0, Le/a/h/f/b;->a:Ljava/util/ArrayList;

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/truecaller/calling/contacts_list/ContactTabFragment;

    .line 5
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "sortingMode"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v1}, Landroidx/fragment/app/Fragment;->isAdded()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, v1, Lcom/truecaller/calling/contacts_list/ContactTabFragment;->g:Le/a/h/f/x;

    if-eqz v1, :cond_2

    invoke-interface {v1, p2}, Le/a/h/f/x;->uq(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;)V

    goto :goto_0

    :cond_2
    const-string p1, "presenter"

    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    .line 8
    :cond_3
    :goto_1
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    return-void
.end method
