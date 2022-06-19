.class public interface abstract Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;,
        Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;,
        Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;
    }
.end annotation


# virtual methods
.method public abstract a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;ZZLs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;",
            "ZZ",
            "Ls1/w/d<",
            "-",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$a;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method

.method public abstract b(Ljava/util/Set;ZLs1/w/d;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;Z",
            "Ls1/w/d<",
            "-",
            "Ljava/util/List<",
            "+",
            "Lcom/truecaller/data/entity/Contact;",
            ">;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation
.end method
