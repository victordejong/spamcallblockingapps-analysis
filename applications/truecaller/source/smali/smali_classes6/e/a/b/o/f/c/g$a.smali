.class public final Le/a/b/o/f/c/g$a;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/o/f/c/g;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/o/f/c/g;


# direct methods
.method public constructor <init>(Le/a/b/o/f/c/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/b/o/f/c/g$a;->a:Le/a/b/o/f/c/g;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 9

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    iget-object v0, p0, Le/a/b/o/f/c/g$a;->a:Le/a/b/o/f/c/g;

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    iget-object p1, p0, Le/a/b/o/f/c/g$a;->a:Le/a/b/o/f/c/g;

    .line 4
    iget-object p1, p1, Le/a/b/o/f/c/g;->a:Ljava/util/ArrayList;

    goto :goto_2

    .line 5
    :cond_1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 6
    iget-object v3, p0, Le/a/b/o/f/c/g$a;->a:Le/a/b/o/f/c/g;

    .line 7
    iget-object v3, v3, Le/a/b/o/f/c/g;->a:Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_2
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/b/o/f/c/a;

    .line 9
    invoke-virtual {v4}, Le/a/b/o/f/c/a;->a()Le/a/b/o/c/b/a;

    move-result-object v5

    .line 10
    iget-object v5, v5, Le/a/b/o/c/b/a;->b:Ljava/lang/String;

    .line 11
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v7, "Locale.ROOT"

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v5, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    const-string v8, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v6}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v7, 0x2

    invoke-static {v5, v6, v2, v7}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 12
    iget-object v5, v4, Le/a/b/o/f/c/a;->a:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    if-eqz v5, :cond_3

    .line 13
    sget-object v6, Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;->TYPE_DISTRICT:Lcom/truecaller/bizmon/governmentServices/ui/adapters/ViewType;

    if-ne v5, v6, :cond_2

    const-string v5, "row"

    .line 14
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    const-string p1, "type"

    .line 15
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1

    :cond_4
    move-object p1, v1

    .line 16
    :goto_2
    iput-object p1, v0, Le/a/b/o/f/c/g;->b:Ljava/util/ArrayList;

    .line 17
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 18
    iget-object v0, p0, Le/a/b/o/f/c/g$a;->a:Le/a/b/o/f/c/g;

    .line 19
    iget-object v0, v0, Le/a/b/o/f/c/g;->b:Ljava/util/ArrayList;

    .line 20
    iput-object v0, p1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    return-object p1
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 1

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "filterResults"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/b/o/f/c/g$a;->a:Le/a/b/o/f/c/g;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.bizmon.governmentServices.ui.adapters.CityListObject> /* = java.util.ArrayList<com.truecaller.bizmon.governmentServices.ui.adapters.CityListObject> */"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    .line 2
    iput-object p2, p1, Le/a/b/o/f/c/g;->b:Ljava/util/ArrayList;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 4
    iget-object p1, p0, Le/a/b/o/f/c/g$a;->a:Le/a/b/o/f/c/g;

    .line 5
    iget-object p2, p1, Le/a/b/o/f/c/g;->e:Le/a/b/o/f/c/c;

    .line 6
    iget-object p1, p1, Le/a/b/o/f/c/g;->b:Ljava/util/ArrayList;

    .line 7
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p1

    invoke-interface {p2, p1}, Le/a/b/o/f/c/c;->F(I)V

    return-void
.end method
