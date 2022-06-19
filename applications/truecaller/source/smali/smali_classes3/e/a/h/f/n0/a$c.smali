.class public final Le/a/h/f/n0/a$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/q;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/n0/a;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/q<",
        "Lcom/truecaller/data/entity/Contact;",
        "Le/a/k3/l/b;",
        "Ljava/lang/Boolean;",
        "Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLe/a/h/f/n0/a;Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$ContactFullness;Ljava/lang/Integer;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)V
    .locals 0

    iput-object p7, p0, Le/a/h/f/n0/a$c;->b:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    const/4 p1, 0x3

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public h(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Lcom/truecaller/data/entity/Contact;

    check-cast p2, Le/a/k3/l/b;

    check-cast p3, Ljava/lang/Boolean;

    const-string v0, "contact"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p1}, Le/a/m0/a1$k;->u0(Lcom/truecaller/data/entity/Contact;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Le/a/h/f/n0/a$c;->b:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    sget-object v2, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->NON_PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    if-ne v0, v2, :cond_0

    invoke-virtual {p1}, Lcom/truecaller/data/entity/Contact;->A0()Z

    move-result v0

    if-nez v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v1

    :goto_0
    const/4 v2, 0x0

    if-eqz v0, :cond_2

    goto :goto_1

    :cond_2
    move-object p1, v2

    :goto_1
    if-eqz p1, :cond_5

    .line 4
    new-instance v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;

    if-eqz p2, :cond_3

    goto :goto_2

    :cond_3
    new-instance p2, Le/a/k3/l/b;

    const/4 v3, 0x7

    invoke-direct {p2, v2, v2, v2, v3}, Le/a/k3/l/b;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V

    :goto_2
    if-eqz p3, :cond_4

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    :cond_4
    invoke-direct {v0, p1, p2, v1}, Lcom/truecaller/calling/contacts_list/data/SortedContactsDao$a;-><init>(Lcom/truecaller/data/entity/Contact;Le/a/k3/l/b;Z)V

    move-object v2, v0

    :cond_5
    return-object v2
.end method
