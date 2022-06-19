.class public final Le/a/h/f/n0/b$a$g;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/f/n0/b$a;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.calling.contacts_list.data.SortedContactsRepositoryImpl$getContacts$2$phonebookContactsIndexes$1"
    f = "SortedContactsRepository.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/h/f/n0/b$a;


# direct methods
.method public constructor <init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/h/f/n0/b$a$g;->e:Le/a/h/f/n0/b$a;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p2}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/h/f/n0/b$a$g;

    iget-object v0, p0, Le/a/h/f/n0/b$a$g;->e:Le/a/h/f/n0/b$a;

    invoke-direct {p1, v0, p2}, Le/a/h/f/n0/b$a$g;-><init>(Le/a/h/f/n0/b$a;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object p1, p0, Le/a/h/f/n0/b$a$g;->e:Le/a/h/f/n0/b$a;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    sget-object p2, Ls1/s;->a:Ls1/s;

    .line 4
    invoke-static {p2}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p2, p1, Le/a/h/f/n0/b$a;->h:Le/a/h/f/n0/b;

    .line 5
    iget-object v0, p2, Le/a/h/f/n0/b;->a:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;

    .line 6
    iget-object v1, p1, Le/a/h/f/n0/b$a;->j:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    sget-object v2, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/16 v5, 0xc

    const/4 v6, 0x0

    invoke-static/range {v0 .. v6}, Le/a/n/g0;->I(Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;ZZILjava/lang/Object;)Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 8

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    iget-object p1, p0, Le/a/h/f/n0/b$a$g;->e:Le/a/h/f/n0/b$a;

    iget-object v0, p1, Le/a/h/f/n0/b$a;->h:Le/a/h/f/n0/b;

    .line 2
    iget-object v1, v0, Le/a/h/f/n0/b;->a:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;

    .line 3
    iget-object v2, p1, Le/a/h/f/n0/b$a;->j:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    sget-object v3, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0xc

    const/4 v7, 0x0

    invoke-static/range {v1 .. v7}, Le/a/n/g0;->I(Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;ZZILjava/lang/Object;)Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    move-result-object p1

    return-object p1
.end method
