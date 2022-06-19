.class public interface abstract Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;,
        Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;",
            "Ljava/lang/Integer;",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;",
            ")",
            "Ljava/util/List<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
            ">;"
        }
    .end annotation
.end method

.method public abstract b(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;ZZ)Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;
.end method

.method public abstract c(Ljava/util/Set;Z)Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z)",
            "Ljava/util/List<",
            "Lcom/truecaller/data/entity/Contact;",
            ">;"
        }
    .end annotation
.end method
