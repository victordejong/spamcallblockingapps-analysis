.class public final Le/a/h/f/q;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/g;

.field public b:Landroid/view/View;

.field public final c:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/f/g;",
            "Le/a/h/f/g;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/f/g;",
            "Le/a/h/f/g;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Le/a/o2/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/o2/r<",
            "Le/a/h/f/a;",
            "Le/a/h/f/a;",
            ">;"
        }
    .end annotation
.end field

.field public final f:Ls1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/g<",
            "Landroidx/recyclerview/widget/RecyclerView;",
            ">;"
        }
    .end annotation
.end field

.field public final g:Ls1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/g<",
            "Lcom/truecaller/calling/contacts_list/FastScroller;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Ls1/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/g<",
            "Landroid/widget/ProgressBar;",
            ">;"
        }
    .end annotation
.end field

.field public final i:Le/a/i/d/e;

.field public final j:Le/a/o2/o;

.field public final k:Le/a/o2/f;

.field public final l:Le/a/l4/c;

.field public final m:Le/a/p5/c;

.field public final n:Le/a/h/f/l0;

.field public final o:Landroid/view/View;

.field public final p:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

.field public final q:Le/a/i/d/x;

.field public final r:Le/a/u3/g;

.field public final s:Le/a/i/d/b;


# direct methods
.method public constructor <init>(Le/a/l4/c;Le/a/p5/c;Le/a/h/f/l0;Landroid/view/View;Le/a/h/f/d;Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder;Le/a/h/f/g0;Le/a/i/d/x;Le/a/u3/g;Le/a/i/d/b;)V
    .locals 3

    const-string v0, "availabilityManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "view"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "backupPromoPresenter"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "phonebookFilter"

    invoke-static {p6, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "contactsHolder"

    invoke-static {p7, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "itemsPresenterFactory"

    invoke-static {p8, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "multiAdsPresenter"

    invoke-static {p9, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "featuresRegistry"

    invoke-static {p10, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adCounter"

    invoke-static {p11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/h/f/q;->l:Le/a/l4/c;

    iput-object p2, p0, Le/a/h/f/q;->m:Le/a/p5/c;

    iput-object p3, p0, Le/a/h/f/q;->n:Le/a/h/f/l0;

    iput-object p4, p0, Le/a/h/f/q;->o:Landroid/view/View;

    iput-object p6, p0, Le/a/h/f/q;->p:Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;

    iput-object p9, p0, Le/a/h/f/q;->q:Le/a/i/d/x;

    iput-object p10, p0, Le/a/h/f/q;->r:Le/a/u3/g;

    iput-object p11, p0, Le/a/h/f/q;->s:Le/a/i/d/b;

    const p1, 0x7f0a06b3

    .line 2
    invoke-static {p4, p1}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/h/f/q;->a:Ls1/g;

    .line 3
    new-instance p2, Le/a/o2/r;

    .line 4
    sget-object p3, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->INCLUDE_NON_FAVORITES:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    invoke-interface {p8, p6, p3}, Le/a/h/f/g0;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;)Le/a/h/f/i;

    move-result-object p3

    .line 5
    new-instance p11, Le/a/h/f/r;

    invoke-direct {p11, p0}, Le/a/h/f/r;-><init>(Le/a/h/f/q;)V

    .line 6
    sget-object v0, Le/a/h/f/s;->b:Le/a/h/f/s;

    const v1, 0x7f0d0408

    .line 7
    invoke-direct {p2, p3, v1, p11, v0}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    .line 8
    iput-object p2, p0, Le/a/h/f/q;->c:Le/a/o2/r;

    .line 9
    new-instance p3, Le/a/o2/r;

    .line 10
    sget-object p11, Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;->FAVORITES_ONLY:Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;

    invoke-interface {p8, p6, p11}, Le/a/h/f/g0;->a(Lcom/truecaller/calling/contacts_list/ContactsHolder$PhonebookFilter;Lcom/truecaller/calling/contacts_list/ContactsHolder$FavoritesFilter;)Le/a/h/f/i;

    move-result-object p6

    .line 11
    new-instance p8, Le/a/h/f/t;

    invoke-direct {p8, p0}, Le/a/h/f/t;-><init>(Le/a/h/f/q;)V

    .line 12
    sget-object p11, Le/a/h/f/u;->b:Le/a/h/f/u;

    const v0, 0x7f0d0160

    .line 13
    invoke-direct {p3, p6, v0, p8, p11}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    .line 14
    iput-object p3, p0, Le/a/h/f/q;->d:Le/a/o2/r;

    .line 15
    new-instance p6, Le/a/o2/r;

    .line 16
    new-instance p8, Le/a/h/f/v;

    invoke-direct {p8, p5}, Le/a/h/f/v;-><init>(Le/a/h/f/d;)V

    .line 17
    sget-object p11, Le/a/h/f/w;->b:Le/a/h/f/w;

    const v0, 0x7f0d0389

    .line 18
    invoke-direct {p6, p5, v0, p8, p11}, Le/a/o2/r;-><init>(Le/a/o2/b;ILs1/z/b/l;Ls1/z/b/l;)V

    .line 19
    iput-object p6, p0, Le/a/h/f/q;->e:Le/a/o2/r;

    const p5, 0x7f0a046b

    .line 20
    invoke-static {p4, p5}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p5

    iput-object p5, p0, Le/a/h/f/q;->f:Ls1/g;

    const p8, 0x7f0a072c

    .line 21
    invoke-static {p4, p8}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p8

    iput-object p8, p0, Le/a/h/f/q;->g:Ls1/g;

    const p11, 0x7f0a0b41

    .line 22
    invoke-static {p4, p11}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p11

    iput-object p11, p0, Le/a/h/f/q;->h:Ls1/g;

    .line 23
    new-instance p11, Le/a/h/f/q$c;

    invoke-direct {p11, p0}, Le/a/h/f/q$c;-><init>(Le/a/h/f/q;)V

    iput-object p11, p0, Le/a/h/f/q;->i:Le/a/i/d/e;

    .line 24
    invoke-static {p9, p10, p11}, Le/a/i/d/a;->a(Le/a/i/d/x;Le/a/u3/g;Le/a/i/d/e;)Le/a/o2/o;

    move-result-object p9

    iput-object p9, p0, Le/a/h/f/q;->j:Le/a/o2/o;

    .line 25
    new-instance p10, Le/a/o2/f;

    .line 26
    new-instance p11, Le/a/o2/g;

    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p11, v0, v1}, Le/a/o2/g;-><init>(II)V

    invoke-virtual {p2, p3, p11}, Le/a/o2/r;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p2

    .line 27
    new-instance p3, Le/a/o2/g;

    invoke-direct {p3, v0, v1}, Le/a/o2/g;-><init>(II)V

    invoke-virtual {p2, p6, p3}, Le/a/o2/u;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p2

    .line 28
    new-instance p3, Le/a/o2/q;

    const/4 p6, 0x2

    const/4 p11, 0x7

    const/4 v2, 0x4

    invoke-direct {p3, p6, p11, v0, v2}, Le/a/o2/q;-><init>(IIZI)V

    invoke-virtual {p2, p9, p3}, Le/a/o2/u;->f(Le/a/o2/a;Le/a/o2/t;)Le/a/o2/u;

    move-result-object p2

    .line 29
    invoke-direct {p10, p2}, Le/a/o2/f;-><init>(Le/a/o2/a;)V

    iput-object p10, p0, Le/a/h/f/q;->k:Le/a/o2/f;

    .line 30
    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/view/ViewStub;

    .line 31
    invoke-virtual {p1}, Landroid/view/ViewStub;->inflate()Landroid/view/View;

    move-result-object p2

    iput-object p2, p0, Le/a/h/f/q;->b:Landroid/view/View;

    const/16 p2, 0x8

    .line 32
    invoke-virtual {p1, p2}, Landroid/view/ViewStub;->setVisibility(I)V

    .line 33
    invoke-interface {p5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroidx/recyclerview/widget/RecyclerView;

    .line 34
    iget-object p2, p10, Le/a/o2/f;->a:Le/a/o2/a;

    invoke-interface {p2, v1}, Le/a/o2/a;->u(Z)V

    .line 35
    invoke-virtual {p1, p10}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    const/4 p2, 0x0

    .line 36
    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->setItemAnimator(Landroidx/recyclerview/widget/RecyclerView$l;)V

    .line 37
    new-instance p2, Le/a/e/z0;

    invoke-virtual {p4}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p3

    const p4, 0x7f0d04dd

    invoke-direct {p2, p3, p4, v0}, Le/a/e/z0;-><init>(Landroid/content/Context;II)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 38
    new-instance p2, Le/a/h/f/q$a;

    invoke-direct {p2, p0, p7}, Le/a/h/f/q$a;-><init>(Le/a/h/f/q;Lcom/truecaller/calling/contacts_list/ContactsHolder;)V

    invoke-virtual {p1, p2}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 39
    invoke-interface {p8}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/calling/contacts_list/FastScroller;

    const-string p3, "this"

    invoke-static {p1, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p3, Le/a/h/f/q$b;

    invoke-direct {p3, p0, p7}, Le/a/h/f/q$b;-><init>(Le/a/h/f/q;Lcom/truecaller/calling/contacts_list/ContactsHolder;)V

    .line 40
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string p4, "recyclerView"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "indexByPosition"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 41
    iput-object p1, p2, Lcom/truecaller/calling/contacts_list/FastScroller;->b:Landroidx/recyclerview/widget/RecyclerView;

    .line 42
    iput-object p3, p2, Lcom/truecaller/calling/contacts_list/FastScroller;->d:Ls1/z/b/l;

    .line 43
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p3

    const-string p4, "null cannot be cast to non-null type androidx.recyclerview.widget.LinearLayoutManager"

    invoke-static {p3, p4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast p3, Landroidx/recyclerview/widget/LinearLayoutManager;

    iput-object p3, p2, Lcom/truecaller/calling/contacts_list/FastScroller;->c:Landroidx/recyclerview/widget/LinearLayoutManager;

    .line 44
    new-instance p3, Le/a/h/f/f0;

    invoke-direct {p3, p2}, Le/a/h/f/f0;-><init>(Lcom/truecaller/calling/contacts_list/FastScroller;)V

    invoke-virtual {p1, p3}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 45
    invoke-virtual {p2}, Lcom/truecaller/calling/contacts_list/FastScroller;->a()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/util/Set;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    const-string v0, "adsPositions"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    move-result v0

    .line 2
    iget-object v1, p0, Le/a/h/f/q;->j:Le/a/o2/o;

    invoke-virtual {v1, v0}, Le/a/o2/o;->j(I)I

    move-result v0

    .line 3
    iget-object v1, p0, Le/a/h/f/q;->k:Le/a/o2/f;

    invoke-virtual {v1}, Le/a/o2/f;->getItemCount()I

    move-result v2

    sub-int/2addr v2, v0

    invoke-virtual {v1, v0, v2}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyItemRangeChanged(II)V

    goto :goto_0

    :cond_0
    return-void
.end method
