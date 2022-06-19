.class public final Le/a/t/a/b$a;
.super Landroid/widget/Filter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/t/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "a"
.end annotation


# instance fields
.field public final synthetic a:Le/a/t/a/b;


# direct methods
.method public constructor <init>(Le/a/t/a/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/t/a/b$a;->a:Le/a/t/a/b;

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ls1/w/d;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "Le/a/t/a/t;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Le/a/t/a/b$a$a;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Le/a/t/a/b$a$a;

    iget v1, v0, Le/a/t/a/b$a$a;->e:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Le/a/t/a/b$a$a;->e:I

    goto :goto_0

    :cond_0
    new-instance v0, Le/a/t/a/b$a$a;

    invoke-direct {v0, p0, p1}, Le/a/t/a/b$a$a;-><init>(Le/a/t/a/b$a;Ls1/w/d;)V

    :goto_0
    iget-object p1, v0, Le/a/t/a/b$a$a;->d:Ljava/lang/Object;

    sget-object v1, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v2, v0, Le/a/t/a/b$a$a;->e:I

    const/16 v3, 0xa

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object v0, v0, Le/a/t/a/b$a$a;->g:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/t/a/b$a;->a:Le/a/t/a/b;

    .line 5
    iget-object p1, p1, Le/a/t/a/b;->e:Lo3/a;

    .line 6
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/p;

    .line 7
    invoke-interface {p1}, Le/a/t/a/p;->b()Ljava/util/Collection;

    move-result-object p1

    const/16 v2, 0x14

    .line 8
    invoke-static {p1, v2}, Ls1/u/i;->K0(Ljava/lang/Iterable;I)Ljava/util/List;

    move-result-object p1

    .line 9
    new-instance v2, Ljava/util/ArrayList;

    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v2, v5}, Ljava/util/ArrayList;-><init>(I)V

    .line 10
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    .line 11
    check-cast v5, Le/a/t/a/u/d;

    const-string v6, "$this$emojiString"

    .line 12
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "emoji"

    .line 13
    invoke-static {v5, v6}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v5, v5, Le/a/t/a/u/d;->a:[I

    const/4 v6, 0x0

    .line 15
    array-length v7, v5

    new-instance v8, Ljava/lang/String;

    invoke-direct {v8, v5, v6, v7}, Ljava/lang/String;-><init>([III)V

    .line 16
    invoke-virtual {v2, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 17
    :cond_3
    iget-object p1, p0, Le/a/t/a/b$a;->a:Le/a/t/a/b;

    .line 18
    iget-object p1, p1, Le/a/t/a/b;->d:Lo3/a;

    .line 19
    invoke-interface {p1}, Lo3/a;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/t/a/e;

    .line 20
    iput-object v2, v0, Le/a/t/a/b$a$a;->g:Ljava/lang/Object;

    iput v4, v0, Le/a/t/a/b$a$a;->e:I

    invoke-interface {p1, v2, v0}, Le/a/t/a/e;->a(Ljava/util/List;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_4

    return-object v1

    :cond_4
    move-object v0, v2

    .line 21
    :goto_2
    check-cast p1, Ljava/lang/Iterable;

    .line 22
    invoke-static {p1, v3}, Le/q/f/a/d/a;->J(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-static {v1}, Le/q/f/a/d/a;->Y1(I)I

    move-result v1

    const/16 v2, 0x10

    if-ge v1, v2, :cond_5

    move v1, v2

    .line 23
    :cond_5
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2, v1}, Ljava/util/LinkedHashMap;-><init>(I)V

    .line 24
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_6

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 25
    move-object v3, v1

    check-cast v3, Le/a/t/a/t;

    .line 26
    iget-object v3, v3, Le/a/t/a/t;->c:Ljava/lang/String;

    .line 27
    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 28
    :cond_6
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    .line 29
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_7
    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_8

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 30
    check-cast v1, Ljava/lang/String;

    .line 31
    invoke-virtual {v2, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/t/a/t;

    if-eqz v1, :cond_7

    .line 32
    invoke-virtual {p1, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_4

    :cond_8
    return-object p1
.end method

.method public performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .locals 4

    if-eqz p1, :cond_2

    const/16 v0, 0x3a

    const/4 v1, 0x0

    const/4 v2, 0x2

    .line 1
    invoke-static {p1, v0, v1, v2}, Ls1/f0/v;->W(Ljava/lang/CharSequence;CZI)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ls1/z/c/c0;

    invoke-direct {v0}, Ls1/z/c/c0;-><init>()V

    const-string v1, "$this$drop"

    .line 3
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    const/4 v2, 0x1

    if-le v2, v1, :cond_1

    goto :goto_0

    :cond_1
    move v1, v2

    :goto_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    invoke-interface {p1, v1, v3}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object p1

    .line 5
    iput-object p1, v0, Ls1/z/c/c0;->a:Ljava/lang/Object;

    .line 6
    new-instance p1, Le/a/t/a/b$a$b;

    const/4 v1, 0x0

    invoke-direct {p1, p0, v0, v1}, Le/a/t/a/b$a$b;-><init>(Le/a/t/a/b$a;Ls1/z/c/c0;Ls1/w/d;)V

    invoke-static {v1, p1, v2, v1}, Ls1/a/a/a/v0/f/d;->c3(Ls1/w/f;Ls1/z/b/p;ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    .line 7
    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    .line 8
    iput-object p1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    .line 9
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    iput p1, v0, Landroid/widget/Filter$FilterResults;->count:I

    return-object v0

    .line 10
    :cond_2
    :goto_1
    new-instance p1, Landroid/widget/Filter$FilterResults;

    invoke-direct {p1}, Landroid/widget/Filter$FilterResults;-><init>()V

    return-object p1
.end method

.method public publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/t/a/b$a;->a:Le/a/t/a/b;

    const/4 v1, 0x0

    if-eqz p2, :cond_0

    iget-object p2, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    goto :goto_0

    :cond_0
    move-object p2, v1

    :goto_0
    instance-of v2, p2, Ljava/util/List;

    if-nez v2, :cond_1

    goto :goto_1

    :cond_1
    move-object v1, p2

    :goto_1
    check-cast v1, Ljava/util/List;

    if-eqz v1, :cond_3

    .line 2
    iput-object v1, v0, Le/a/t/a/b;->a:Ljava/util/List;

    if-eqz p1, :cond_2

    .line 3
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    goto :goto_2

    :cond_2
    const/4 p1, 0x0

    .line 4
    :goto_2
    iput p1, v0, Le/a/t/a/b;->c:I

    .line 5
    iget-object p1, p0, Le/a/t/a/b$a;->a:Le/a/t/a/b;

    invoke-virtual {p1}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    :cond_3
    return-void
.end method
