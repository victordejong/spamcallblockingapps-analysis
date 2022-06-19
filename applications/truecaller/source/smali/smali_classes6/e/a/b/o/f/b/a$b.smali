.class public final Le/a/b/o/f/b/a$b;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/b/o/f/b/a;->getFilter()Landroid/widget/Filter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/b/o/f/b/a;


# direct methods
.method public constructor <init>(Le/a/b/o/f/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/b/o/f/b/a$b;->a:Le/a/b/o/f/b/a;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 8

    const-string v0, "charSequence"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    move v0, v1

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    iget-object p1, p0, Le/a/b/o/f/b/a$b;->a:Le/a/b/o/f/b/a;

    .line 4
    iget-object v0, p1, Le/a/b/o/f/b/a;->c:Ljava/util/List;

    .line 5
    iput-object v0, p1, Le/a/b/o/f/b/a;->b:Ljava/util/List;

    goto :goto_2

    .line 6
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 7
    iget-object v2, p0, Le/a/b/o/f/b/a$b;->a:Le/a/b/o/f/b/a;

    .line 8
    iget-object v2, v2, Le/a/b/o/f/b/a;->c:Ljava/util/List;

    .line 9
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_2
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/b/o/c/b/b;

    .line 10
    invoke-static {v3}, Le/a/n/g0;->O(Le/a/b/o/c/b/b;)Ljava/lang/String;

    move-result-object v4

    .line 11
    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    const-string v6, "Locale.ROOT"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v7, "null cannot be cast to non-null type java.lang.String"

    invoke-static {v4, v7}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    const-string v7, "(this as java.lang.String).toLowerCase(locale)"

    invoke-static {v4, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v6, 0x2

    invoke-static {v4, v5, v1, v6}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 12
    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    iget-object p1, p0, Le/a/b/o/f/b/a$b;->a:Le/a/b/o/f/b/a;

    .line 14
    iput-object v0, p1, Le/a/b/o/f/b/a;->b:Ljava/util/List;

    .line 15
    :goto_2
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 16
    iget-object v0, p0, Le/a/b/o/f/b/a$b;->a:Le/a/b/o/f/b/a;

    .line 17
    iget-object v0, v0, Le/a/b/o/f/b/a;->b:Ljava/util/List;

    .line 18
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
    iget-object p1, p0, Le/a/b/o/f/b/a$b;->a:Le/a/b/o/f/b/a;

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    const-string v0, "null cannot be cast to non-null type kotlin.collections.ArrayList<com.truecaller.bizmon.governmentServices.db.entities.GovServicesContact> /* = java.util.ArrayList<com.truecaller.bizmon.governmentServices.db.entities.GovServicesContact> */"

    invoke-static {p2, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p2, Ljava/util/ArrayList;

    .line 2
    iput-object p2, p1, Le/a/b/o/f/b/a;->b:Ljava/util/List;

    .line 3
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    .line 4
    iget-object p1, p0, Le/a/b/o/f/b/a$b;->a:Le/a/b/o/f/b/a;

    .line 5
    iget-object p2, p1, Le/a/b/o/f/b/a;->e:Le/a/b/o/f/b/a$a;

    if-eqz p2, :cond_0

    .line 6
    iget-object p1, p1, Le/a/b/o/f/b/a;->b:Ljava/util/List;

    .line 7
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    invoke-interface {p2, p1}, Le/a/b/o/f/b/a$a;->F(I)V

    :cond_0
    return-void
.end method
