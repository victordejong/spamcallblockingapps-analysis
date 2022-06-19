.class public final Le/a/h/f/j0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/i0;


# instance fields
.field public final a:Le/a/h/f/o;


# direct methods
.method public constructor <init>(Le/a/h/f/o;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "contactsListComponentBuilder"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/f/j0;->a:Le/a/h/f/o;

    return-void
.end method


# virtual methods
.method public a(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Le/a/h/f/i0$a;
    .locals 4

    const-string v0, "phonebookFilter"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/h/f/j0;->a:Le/a/h/f/o;

    .line 2
    new-instance v1, Le/a/h/f/p;

    invoke-direct {v1, p1}, Le/a/h/f/p;-><init>(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)V

    check-cast v0, Le/a/t1$k;

    .line 3
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    new-instance p1, Le/a/t1$b;

    iget-object v2, v0, Le/a/t1$k;->a:Le/a/t1;

    iget-object v0, v0, Le/a/t1$k;->b:Le/a/t1$k;

    const/4 v3, 0x0

    invoke-direct {p1, v2, v0, v1, v3}, Le/a/t1$b;-><init>(Le/a/t1;Le/a/t1$k;Le/a/h/f/p;Le/a/t1$a;)V

    .line 5
    iget-object v0, p1, Le/a/t1$b;->e:Ljavax/inject/Provider;

    invoke-interface {v0}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/i/f0/c;

    const/4 v1, 0x1

    .line 6
    invoke-interface {v0, v1}, Le/a/i/f0/c;->b(Z)V

    .line 7
    iget-object p1, p1, Le/a/t1$b;->q:Ljavax/inject/Provider;

    invoke-interface {p1}, Ljavax/inject/Provider;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/i/d/x;

    .line 8
    new-instance v1, Le/a/h/f/i0$a;

    invoke-direct {v1, v0, p1}, Le/a/h/f/i0$a;-><init>(Le/a/i/f0/c;Le/a/i/d/x;)V

    return-object v1
.end method
