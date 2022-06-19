.class public interface abstract Lcom/truecaller/calling/contacts_list/ContactsHolder;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;,
        Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;,
        Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;
    }
.end annotation


# virtual methods
.method public abstract sb(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;
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
.end method

.method public abstract v5(ILcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/lang/String;
.end method

.method public abstract y()Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;
.end method
