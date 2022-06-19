.class public final Le/a/h/f/a0$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/h/f/a0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:[[Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "[[",
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    invoke-direct {p0, v0}, Le/a/h/f/a0$b;-><init>(Ljava/util/List;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/List;)V
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;)V"
        }
    .end annotation

    const-string v0, "allContacts"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 3
    invoke-static {}, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->values()[Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    const/4 v0, 0x2

    new-array v1, v0, [[Ljava/util/List;

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    if-ge v3, v0, :cond_1

    invoke-static {}, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->values()[Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    new-array v4, v0, [Ljava/util/List;

    move v5, v2

    :goto_1
    if-ge v5, v0, :cond_0

    sget-object v6, Ls1/u/s;->a:Ls1/u/s;

    aput-object v6, v4, v5

    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_0
    aput-object v4, v1, v3

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    iput-object v1, p0, Le/a/h/f/a0$b;->a:[[Ljava/util/List;

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    .line 5
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v3, 0x1

    if-eqz v1, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 6
    move-object v4, v1

    check-cast v4, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    .line 7
    iget-object v4, v4, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->a:Lcom/truecaller/data/entity/Contact;

    .line 8
    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->R()Ljava/lang/Long;

    move-result-object v5

    if-nez v5, :cond_2

    invoke-virtual {v4}, Lcom/truecaller/data/entity/Contact;->l0()Z

    move-result v4

    if-nez v4, :cond_2

    move v3, v2

    :cond_2
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    .line 9
    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    if-nez v4, :cond_3

    .line 10
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    :cond_3
    check-cast v4, Ljava/util/List;

    .line 13
    invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 14
    :cond_4
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_9

    .line 15
    sget-object v1, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->INCLUDE_NON_FAVORITES:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    sget-object v4, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->NON_PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    .line 16
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 17
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_5
    :goto_3
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_8

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    .line 18
    iget-object v8, v7, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->a:Lcom/truecaller/data/entity/Contact;

    .line 19
    invoke-virtual {v8}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v8

    if-nez v8, :cond_7

    .line 20
    iget-boolean v7, v7, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;->c:Z

    if-eqz v7, :cond_6

    goto :goto_4

    :cond_6
    move v7, v2

    goto :goto_5

    :cond_7
    :goto_4
    move v7, v3

    :goto_5
    if-nez v7, :cond_5

    .line 21
    invoke-interface {v5, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 22
    :cond_8
    invoke-virtual {p0, v1, v4, v5}, Le/a/h/f/a0$b;->d(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Ljava/util/List;)V

    .line 23
    :cond_9
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/util/List;

    if-eqz p1, :cond_a

    sget-object v0, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->INCLUDE_NON_FAVORITES:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    sget-object v1, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    invoke-virtual {p0, v0, v1, p1}, Le/a/h/f/a0$b;->d(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Ljava/util/List;)V

    .line 24
    :cond_a
    sget-object p1, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->FAVORITES_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    sget-object v0, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    sget-object v1, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->INCLUDE_NON_FAVORITES:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    invoke-virtual {p0, v1, v0}, Le/a/h/f/a0$b;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;

    move-result-object v1

    .line 25
    invoke-static {v1}, Ls1/u/i;->h(Ljava/lang/Iterable;)Ls1/e0/k;

    move-result-object v1

    .line 26
    sget-object v2, Le/a/h/f/a0$b$a;->b:Le/a/h/f/a0$b$a;

    invoke-static {v1, v2}, Ls1/e0/x;->f(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v1

    .line 27
    sget-object v2, Le/a/h/f/a0$b$b;->b:Le/a/h/f/a0$b$b;

    invoke-static {v1, v2}, Ls1/e0/x;->k(Ls1/e0/k;Ls1/z/b/l;)Ls1/e0/k;

    move-result-object v1

    .line 28
    invoke-static {v1}, Ls1/e0/x;->r(Ls1/e0/k;)Ljava/util/List;

    move-result-object v1

    .line 29
    invoke-virtual {p0, p1, v0, v1}, Le/a/h/f/a0$b;->d(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Ljava/util/List;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;"
        }
    .end annotation

    const-string v0, "favoritesFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phonebookFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/f/a0$b;->a:[[Ljava/util/List;

    invoke-virtual {p0, p1}, Le/a/h/f/a0$b;->b(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;)I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p2}, Le/a/h/f/a0$b;->c(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)I

    move-result p2

    aget-object p1, p1, p2

    return-object p1
.end method

.method public final b(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final c(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)I
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final d(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/h/f/a0$b;->a:[[Ljava/util/List;

    invoke-virtual {p0, p1}, Le/a/h/f/a0$b;->b(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;)I

    move-result p1

    aget-object p1, v0, p1

    invoke-virtual {p0, p2}, Le/a/h/f/a0$b;->c(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)I

    move-result p2

    aput-object p3, p1, p2

    return-void
.end method
