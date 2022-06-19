.class public final Le/a/h/f/n0/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;


# instance fields
.field public final a:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;

.field public final b:Ls1/w/f;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;Ls1/w/f;)V
    .locals 1
    .param p2    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "Async"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "sortedContactsDao"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/f/n0/b;->a:Lcom/truecaller/calling/contacts_list/data/SortedContactsDao;

    iput-object p2, p0, Le/a/h/f/n0/b;->b:Ls1/w/f;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;ZZLs1/w/d;)Ljava/lang/Object;
    .locals 9
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

    .line 1
    iget-object v0, p0, Le/a/h/f/n0/b;->b:Ls1/w/f;

    new-instance v8, Le/a/h/f/n0/b$a;

    const/4 v7, 0x0

    move-object v1, v8

    move-object v2, p0

    move-object v3, p2

    move-object v4, p1

    move v5, p3

    move v6, p4

    invoke-direct/range {v1 .. v7}, Le/a/h/f/n0/b$a;-><init>(Le/a/h/f/n0/b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;ZZLs1/w/d;)V

    invoke-static {v0, v8, p5}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public b(Ljava/util/Set;ZLs1/w/d;)Ljava/lang/Object;
    .locals 3
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

    .line 1
    iget-object v0, p0, Le/a/h/f/n0/b;->b:Ls1/w/f;

    new-instance v1, Le/a/h/f/n0/b$b;

    const/4 v2, 0x0

    invoke-direct {v1, p0, p1, p2, v2}, Le/a/h/f/n0/b$b;-><init>(Le/a/h/f/n0/b;Ljava/util/Set;ZLs1/w/d;)V

    invoke-static {v0, v1, p3}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
