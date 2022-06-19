.class public final Le/a/h/f/n;
.super Le/a/u2/a/b;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/d0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/b<",
        "Le/a/h/f/e0;",
        ">;",
        "Le/a/h/f/d0;"
    }
.end annotation


# instance fields
.field public b:Z

.field public c:I

.field public final d:Lcom/truecaller/settings/CallingSettings;

.field public final e:Le/a/b0/e/l;

.field public final f:Z


# direct methods
.method public constructor <init>(Lcom/truecaller/settings/CallingSettings;Le/a/b0/e/l;Z)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "callingSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/u2/a/b;-><init>()V

    iput-object p1, p0, Le/a/h/f/n;->d:Lcom/truecaller/settings/CallingSettings;

    iput-object p2, p0, Le/a/h/f/n;->e:Le/a/b0/e/l;

    iput-boolean p3, p0, Le/a/h/f/n;->f:Z

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Le/a/h/f/n;->b:Z

    const/4 p1, -0x1

    .line 3
    iput p1, p0, Le/a/h/f/n;->c:I

    return-void
.end method


# virtual methods
.method public E9()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/h/f/n;->f:Z

    return v0
.end method

.method public F4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/h/f/n;->b:Z

    return v0
.end method

.method public Ie(ILcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)V
    .locals 2

    const-string v0, "phonebookFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/f/e0;

    if-eqz v0, :cond_0

    iget v1, p0, Le/a/h/f/n;->c:I

    invoke-interface {v0, p1, v1}, Le/a/h/f/e0;->tc(II)V

    .line 2
    :cond_0
    iput p1, p0, Le/a/h/f/n;->c:I

    const-string p1, "phoneBookFilter"

    .line 3
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    sget-object p1, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    if-ne p2, p1, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 5
    :goto_0
    iput-boolean p1, p0, Le/a/h/f/n;->b:Z

    .line 6
    iget-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/h/f/e0;

    if-eqz p1, :cond_2

    invoke-interface {p1}, Le/a/h/f/e0;->ed()V

    :cond_2
    return-void
.end method

.method public hc()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/f/e0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/f/e0;->ra()V

    :cond_0
    return-void
.end method

.method public r7()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/f/n;->e:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/f/e0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/h/f/e0;->wn()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/f/e0;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Le/a/h/f/e0;->gy()V

    :cond_1
    :goto_0
    return-void
.end method

.method public v0()Z
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/f/e0;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Le/a/h/f/e0;->h6()V

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public y()Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/f/n;->d:Lcom/truecaller/settings/CallingSettings;

    const-string v1, "sorting_mode"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/truecaller/settings/CallingSettings;->getInt(Ljava/lang/String;I)I

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    sget-object v0, Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;->BY_LAST_NAME:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    goto :goto_0

    .line 3
    :cond_0
    sget-object v0, Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;->BY_FIRST_NAME:Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;

    :goto_0
    return-object v0
.end method
