.class public final Le/a/h/f/a0;
.super Le/a/u2/a/c;
.source "SourceFile"

# interfaces
.implements Le/a/h/f/x;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/h/f/a0$a;,
        Le/a/h/f/a0$b;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/u2/a/c<",
        "Le/a/h/f/y;",
        "Le/a/h/f/z;",
        ">;",
        "Le/a/h/f/x;"
    }
.end annotation


# instance fields
.field public e:Z

.field public f:Z

.field public final g:Le/a/h/f/a0$c;

.field public final h:Le/a/h/f/a0$d;

.field public i:Le/a/h/f/a0$a;

.field public final j:Le/a/h/f/a0$b;

.field public k:Le/a/h/b/r;

.field public l:Le/a/h/b/r;

.field public final m:Le/a/p5/s0/v;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/p5/s0/v<",
            "Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;",
            ">;"
        }
    .end annotation
.end field

.field public final n:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;

.field public final o:Lcom/truecaller/settings/CallingSettings;

.field public final p:Ls1/w/f;

.field public final q:Ls1/w/f;

.field public final r:Le/a/l4/c;

.field public final s:Le/a/q2/a;

.field public final t:Le/a/p5/c;

.field public final u:Le/a/b0/e/l;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;Lcom/truecaller/settings/CallingSettings;Ls1/w/f;Ls1/w/f;Le/a/l4/c;Le/a/q2/a;Le/a/p5/c;Le/a/b0/e/l;)V
    .locals 1
    .param p3    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "UI"
        .end annotation
    .end param
    .param p4    # Ls1/w/f;
        .annotation runtime Ljavax/inject/Named;
            value = "CPU"
        .end annotation
    .end param
    .param p5    # Le/a/l4/c;
        .annotation runtime Ljavax/inject/Named;
            value = "ContactsAvailabilityManager"
        .end annotation
    .end param
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "sortedContactsRepository"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callingSettings"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiCoroutineContext"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "asyncCoroutineContext"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "availabilityManager"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analytics"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "accountManager"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/u2/a/c;-><init>(Ls1/w/f;)V

    iput-object p1, p0, Le/a/h/f/a0;->n:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository;

    iput-object p2, p0, Le/a/h/f/a0;->o:Lcom/truecaller/settings/CallingSettings;

    iput-object p3, p0, Le/a/h/f/a0;->p:Ls1/w/f;

    iput-object p4, p0, Le/a/h/f/a0;->q:Ls1/w/f;

    iput-object p5, p0, Le/a/h/f/a0;->r:Le/a/l4/c;

    iput-object p6, p0, Le/a/h/f/a0;->s:Le/a/q2/a;

    iput-object p7, p0, Le/a/h/f/a0;->t:Le/a/p5/c;

    iput-object p8, p0, Le/a/h/f/a0;->u:Le/a/b0/e/l;

    .line 2
    new-instance p1, Le/a/h/f/a0$c;

    invoke-direct {p1, p0}, Le/a/h/f/a0$c;-><init>(Le/a/h/f/a0;)V

    iput-object p1, p0, Le/a/h/f/a0;->g:Le/a/h/f/a0$c;

    .line 3
    new-instance p1, Le/a/h/f/a0$d;

    invoke-direct {p1, p0}, Le/a/h/f/a0$d;-><init>(Le/a/h/f/a0;)V

    iput-object p1, p0, Le/a/h/f/a0;->h:Le/a/h/f/a0$d;

    .line 4
    new-instance p1, Le/a/h/f/a0$a;

    const/4 p2, 0x0

    const/4 p3, 0x3

    invoke-direct {p1, p2, p2, p3}, Le/a/h/f/a0$a;-><init>(Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;I)V

    iput-object p1, p0, Le/a/h/f/a0;->i:Le/a/h/f/a0$a;

    .line 5
    new-instance p1, Le/a/h/f/a0$b;

    .line 6
    sget-object p3, Ls1/u/s;->a:Ls1/u/s;

    invoke-direct {p1, p3}, Le/a/h/f/a0$b;-><init>(Ljava/util/List;)V

    .line 7
    iput-object p1, p0, Le/a/h/f/a0;->j:Le/a/h/f/a0$b;

    .line 8
    new-instance p1, Le/a/h/f/a0$e;

    invoke-direct {p1, p0, p2}, Le/a/h/f/a0$e;-><init>(Le/a/h/f/a0;Ls1/w/d;)V

    const-string p2, "$this$throttle"

    .line 9
    invoke-static {p0, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "block"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    new-instance p2, Le/a/p5/s0/v;

    invoke-direct {p2, p0, p1}, Le/a/p5/s0/v;-><init>(Lq3/a/i0;Ls1/z/b/q;)V

    .line 11
    iput-object p2, p0, Le/a/h/f/a0;->m:Le/a/p5/s0/v;

    return-void
.end method

.method public static final Ij(Le/a/h/f/a0;)Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;
    .locals 0

    .line 1
    iget-object p0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p0, Le/a/h/f/z;

    if-eqz p0, :cond_0

    invoke-interface {p0}, Le/a/h/f/z;->Zh()Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    move-result-object p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Ljava/lang/Enum;->ordinal()I

    move-result p0

    if-eqz p0, :cond_2

    .line 2
    :goto_1
    sget-object p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->FULL_WITH_ENTITIES:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    goto :goto_2

    .line 3
    :cond_2
    sget-object p0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->NON_PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    :goto_2
    return-object p0
.end method


# virtual methods
.method public F2(Lcom/truecaller/data/entity/Contact;)V
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/h/f/y;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/h/f/k0;->F2(Lcom/truecaller/data/entity/Contact;)V

    :cond_0
    return-void
.end method

.method public H2()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/h/f/z;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/f/e$b;->H2()V

    :cond_0
    return-void
.end method

.method public I1()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/f/a0;->u:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/f/a0;->r:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->I1()V

    :cond_0
    return-void
.end method

.method public Ii(Lcom/truecaller/data/entity/Contact;)V
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/h/f/y;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/h/f/k0;->Ii(Lcom/truecaller/data/entity/Contact;)V

    :cond_0
    return-void
.end method

.method public Jf(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;I)V
    .locals 0

    const-string p2, "phonebookFilter"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public Ob()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/a/h/f/a0;->m:Le/a/p5/s0/v;

    .line 2
    iget-object v1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/h/f/z;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-interface {v1}, Le/a/h/f/z;->Zh()Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v2

    .line 3
    :goto_0
    sget-object v3, Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;->PHONEBOOK_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    if-ne v1, v3, :cond_1

    .line 4
    sget-object v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    goto :goto_1

    .line 5
    :cond_1
    sget-object v1, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->NON_PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    .line 6
    :goto_1
    invoke-virtual {v0, v1}, Le/a/p5/s0/v;->a(Ljava/lang/Object;)V

    .line 7
    iget-object v0, p0, Le/a/h/f/a0;->k:Le/a/h/b/r;

    if-eqz v0, :cond_2

    iget-object v1, p0, Le/a/h/f/a0;->g:Le/a/h/f/a0$c;

    invoke-interface {v0, v1}, Le/a/h/b/r;->b(Le/a/h/b/r$a;)V

    .line 8
    :cond_2
    iget-object v0, p0, Le/a/h/f/a0;->l:Le/a/h/b/r;

    if-eqz v0, :cond_3

    iget-object v1, p0, Le/a/h/f/a0;->h:Le/a/h/f/a0$d;

    invoke-interface {v0, v1}, Le/a/h/b/r;->b(Le/a/h/b/r$a;)V

    :cond_3
    const-string v0, "contacts"

    const-string v1, "viewId"

    .line 9
    invoke-static {v0, v1, v0, v2, v2}, Le/d/c/a/a;->q1(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)Le/a/q2/y0/a/a;

    move-result-object v0

    .line 10
    iget-object v1, p0, Le/a/h/f/a0;->s:Le/a/q2/a;

    invoke-static {v0, v1}, Le/m/d/y/n;->B0(Le/a/q2/v;Le/a/q2/a;)V

    return-void
.end method

.method public Y()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/h/f/a0;->u:Le/a/b0/e/l;

    invoke-interface {v0}, Le/a/b0/e/l;->d()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Le/a/h/f/a0;->r:Le/a/l4/c;

    invoke-interface {v0}, Le/a/l4/c;->Y()V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/a/u2/a/c;->c()V

    .line 2
    iget-object v0, p0, Le/a/h/f/a0;->k:Le/a/h/b/r;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-interface {v0, v1}, Le/a/h/b/r;->b(Le/a/h/b/r$a;)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/h/f/a0;->l:Le/a/h/b/r;

    if-eqz v0, :cond_1

    invoke-interface {v0, v1}, Le/a/h/b/r;->b(Le/a/h/b/r$a;)V

    :cond_1
    return-void
.end method

.method public fq(Z)V
    .locals 0

    return-void
.end method

.method public hw(Lcom/truecaller/data/entity/Contact;)V
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/h/f/y;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/h/f/k0;->hw(Lcom/truecaller/data/entity/Contact;)V

    :cond_0
    return-void
.end method

.method public l8(Le/a/h/b/r;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/h/f/a0;->k:Le/a/h/b/r;

    return-void
.end method

.method public of(Le/a/h/b/r;)V
    .locals 1

    const-string v0, "observer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/h/f/a0;->l:Le/a/h/b/r;

    return-void
.end method

.method public sb(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;
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
    iget-object v0, p0, Le/a/h/f/a0;->j:Le/a/h/f/a0$b;

    invoke-virtual {v0, p1, p2}, Le/a/h/f/a0$b;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method public uq(Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;)V
    .locals 9

    const-string v0, "sortingMode"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "value"

    .line 1
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Le/a/h/f/a0;->o:Lcom/truecaller/settings/CallingSettings;

    .line 3
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    const/4 v1, 0x1

    if-eqz p1, :cond_1

    if-ne p1, v1, :cond_0

    move p1, v1

    goto :goto_0

    .line 4
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const/4 p1, 0x0

    :goto_0
    const-string v2, "sorting_mode"

    .line 5
    invoke-interface {v0, v2, p1}, Lcom/truecaller/settings/CallingSettings;->putInt(Ljava/lang/String;I)V

    .line 6
    iget-object p1, p0, Le/a/h/f/a0;->m:Le/a/p5/s0/v;

    .line 7
    iget-object v0, p1, Le/a/p5/s0/v;->c:Lq3/a/p1;

    const/4 v2, 0x0

    invoke-static {v0, v2, v1, v2}, Ls1/a/a/a/v0/f/d;->T(Lq3/a/p1;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    .line 8
    iget-object v3, p1, Le/a/p5/s0/v;->d:Lq3/a/i0;

    new-instance v6, Le/a/p5/s0/u;

    invoke-direct {v6, p1, v2}, Le/a/p5/s0/u;-><init>(Le/a/p5/s0/v;Ls1/w/d;)V

    const/4 v5, 0x0

    const/4 v7, 0x3

    const/4 v8, 0x0

    const/4 v4, 0x0

    invoke-static/range {v3 .. v8}, Ls1/a/a/a/v0/f/d;->w2(Lq3/a/i0;Ls1/w/f;Lq3/a/j0;Ls1/z/b/p;ILjava/lang/Object;)Lq3/a/p1;

    move-result-object v0

    .line 9
    iput-object v0, p1, Le/a/p5/s0/v;->c:Lq3/a/p1;

    .line 10
    sget-object v0, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;->PHONEBOOK_LIMITED:Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$ContactsLoadingMode;

    invoke-virtual {p1, v0}, Le/a/p5/s0/v;->a(Ljava/lang/Object;)V

    return-void
.end method

.method public v5(ILcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;)Ljava/lang/String;
    .locals 2

    const-string v0, "phonebookFilter"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v1, p0, Le/a/h/f/a0;->i:Le/a/h/f/a0$a;

    .line 2
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, v1, Le/a/h/f/a0$a;->a:[Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;

    .line 4
    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    if-ne p2, v1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Ls1/i;

    invoke-direct {p1}, Ls1/i;-><init>()V

    throw p1

    :cond_1
    const/4 v1, 0x0

    .line 6
    :goto_0
    aget-object p2, v0, v1

    if-eqz p2, :cond_3

    .line 7
    invoke-interface {p2, p1}, Lcom/truecaller/calling/contacts_list/data/SortedContactsRepository$b;->a(I)Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_2

    goto :goto_1

    :cond_2
    const-string p1, "?"

    goto :goto_1

    :cond_3
    const/4 p1, 0x0

    :goto_1
    return-object p1
.end method

.method public x2(Lcom/truecaller/data/entity/Contact;)V
    .locals 1

    const-string v0, "contact"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/h/f/y;

    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Le/a/h/f/k0;->x2(Lcom/truecaller/data/entity/Contact;)V

    :cond_0
    return-void
.end method

.method public y()Lcom/truecaller/calling/contacts_list/ContactsHolder$SortingMode;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/h/f/a0;->o:Lcom/truecaller/settings/CallingSettings;

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

.method public zf()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/u2/a/d;->b:Ljava/lang/Object;

    .line 2
    check-cast v0, Le/a/h/f/y;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Le/a/h/f/c;->zf()V

    :cond_0
    return-void
.end method
