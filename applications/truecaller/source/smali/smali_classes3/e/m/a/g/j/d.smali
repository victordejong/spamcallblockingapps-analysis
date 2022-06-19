.class public final Le/m/a/g/j/d;
.super Le/m/a/g/j/t;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/m/a/g/j/d$f;,
        Le/m/a/g/j/d$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        ">",
        "Le/m/a/g/j/t<",
        "TS;>;"
    }
.end annotation


# static fields
.field public static final synthetic l:I


# instance fields
.field public b:I

.field public c:Lcom/google/android/material/datepicker/DateSelector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/material/datepicker/DateSelector<",
            "TS;>;"
        }
    .end annotation
.end field

.field public d:Lcom/google/android/material/datepicker/CalendarConstraints;

.field public e:Lcom/google/android/material/datepicker/Month;

.field public f:Le/m/a/g/j/d$e;

.field public g:Le/m/a/g/j/b;

.field public h:Landroidx/recyclerview/widget/RecyclerView;

.field public i:Landroidx/recyclerview/widget/RecyclerView;

.field public j:Landroid/view/View;

.field public k:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/m/a/g/j/t;-><init>()V

    return-void
.end method


# virtual methods
.method public OA(Le/m/a/g/j/s;)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/a/g/j/s<",
            "TS;>;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/a/g/j/t;->a:Ljava/util/LinkedHashSet;

    invoke-virtual {v0, p1}, Ljava/util/LinkedHashSet;->add(Ljava/lang/Object;)Z

    move-result p1

    return p1
.end method

.method public PA()Landroidx/recyclerview/widget/LinearLayoutManager;
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object v0

    check-cast v0, Landroidx/recyclerview/widget/LinearLayoutManager;

    return-object v0
.end method

.method public final QA(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v1, Le/m/a/g/j/d$a;

    invoke-direct {v1, p0, p1}, Le/m/a/g/j/d$a;-><init>(Le/m/a/g/j/d;I)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public RA(Lcom/google/android/material/datepicker/Month;)V
    .locals 6

    .line 1
    iget-object v0, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Le/m/a/g/j/r;

    .line 2
    iget-object v1, v0, Le/m/a/g/j/r;->b:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 3
    iget-object v1, v1, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 4
    invoke-virtual {v1, p1}, Lcom/google/android/material/datepicker/Month;->h(Lcom/google/android/material/datepicker/Month;)I

    move-result v1

    .line 5
    iget-object v2, p0, Le/m/a/g/j/d;->e:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {v0, v2}, Le/m/a/g/j/r;->g(Lcom/google/android/material/datepicker/Month;)I

    move-result v0

    sub-int v0, v1, v0

    .line 6
    invoke-static {v0}, Ljava/lang/Math;->abs(I)I

    move-result v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    const/4 v5, 0x3

    if-le v2, v5, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v4

    :goto_0
    if-lez v0, :cond_1

    goto :goto_1

    :cond_1
    move v3, v4

    .line 7
    :goto_1
    iput-object p1, p0, Le/m/a/g/j/d;->e:Lcom/google/android/material/datepicker/Month;

    if-eqz v2, :cond_2

    if-eqz v3, :cond_2

    .line 8
    iget-object p1, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, -0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 9
    invoke-virtual {p0, v1}, Le/m/a/g/j/d;->QA(I)V

    goto :goto_2

    :cond_2
    if-eqz v2, :cond_3

    .line 10
    iget-object p1, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    add-int/lit8 v0, v1, 0x3

    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    .line 11
    invoke-virtual {p0, v1}, Le/m/a/g/j/d;->QA(I)V

    goto :goto_2

    .line 12
    :cond_3
    invoke-virtual {p0, v1}, Le/m/a/g/j/d;->QA(I)V

    :goto_2
    return-void
.end method

.method public SA(Le/m/a/g/j/d$e;)V
    .locals 4

    .line 1
    iput-object p1, p0, Le/m/a/g/j/d;->f:Le/m/a/g/j/d$e;

    .line 2
    sget-object v0, Le/m/a/g/j/d$e;->b:Le/m/a/g/j/d$e;

    const/16 v1, 0x8

    const/4 v2, 0x0

    if-ne p1, v0, :cond_0

    .line 3
    iget-object p1, p0, Le/m/a/g/j/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 4
    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView;->getLayoutManager()Landroidx/recyclerview/widget/RecyclerView$o;

    move-result-object p1

    iget-object v0, p0, Le/m/a/g/j/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 5
    invoke-virtual {v0}, Landroidx/recyclerview/widget/RecyclerView;->getAdapter()Landroidx/recyclerview/widget/RecyclerView$g;

    move-result-object v0

    check-cast v0, Le/m/a/g/j/y;

    iget-object v3, p0, Le/m/a/g/j/d;->e:Lcom/google/android/material/datepicker/Month;

    iget v3, v3, Lcom/google/android/material/datepicker/Month;->c:I

    invoke-virtual {v0, v3}, Le/m/a/g/j/y;->e(I)I

    move-result v0

    .line 6
    invoke-virtual {p1, v0}, Landroidx/recyclerview/widget/RecyclerView$o;->scrollToPosition(I)V

    .line 7
    iget-object p1, p0, Le/m/a/g/j/d;->j:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 8
    iget-object p1, p0, Le/m/a/g/j/d;->k:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    .line 9
    :cond_0
    sget-object v0, Le/m/a/g/j/d$e;->a:Le/m/a/g/j/d$e;

    if-ne p1, v0, :cond_1

    .line 10
    iget-object p1, p0, Le/m/a/g/j/d;->j:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->setVisibility(I)V

    .line 11
    iget-object p1, p0, Le/m/a/g/j/d;->k:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 12
    iget-object p1, p0, Le/m/a/g/j/d;->e:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p0, p1}, Le/m/a/g/j/d;->RA(Lcom/google/android/material/datepicker/Month;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    if-nez p1, :cond_0

    .line 2
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getArguments()Landroid/os/Bundle;

    move-result-object p1

    :cond_0
    const-string v0, "THEME_RES_ID_KEY"

    .line 3
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Le/m/a/g/j/d;->b:I

    const-string v0, "GRID_SELECTOR_KEY"

    .line 4
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/DateSelector;

    iput-object v0, p0, Le/m/a/g/j/d;->c:Lcom/google/android/material/datepicker/DateSelector;

    const-string v0, "CALENDAR_CONSTRAINTS_KEY"

    .line 5
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/datepicker/CalendarConstraints;

    iput-object v0, p0, Le/m/a/g/j/d;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v0, "CURRENT_MONTH_KEY"

    .line 6
    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object p1

    check-cast p1, Lcom/google/android/material/datepicker/Month;

    iput-object p1, p0, Le/m/a/g/j/d;->e:Lcom/google/android/material/datepicker/Month;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 10

    .line 1
    new-instance p3, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p0, Le/m/a/g/j/d;->b:I

    invoke-direct {p3, v0, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    .line 2
    new-instance v0, Le/m/a/g/j/b;

    invoke-direct {v0, p3}, Le/m/a/g/j/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/m/a/g/j/d;->g:Le/m/a/g/j/b;

    .line 3
    invoke-virtual {p1, p3}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    .line 4
    iget-object v0, p0, Le/m/a/g/j/d;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    .line 5
    iget-object v0, v0, Lcom/google/android/material/datepicker/CalendarConstraints;->a:Lcom/google/android/material/datepicker/Month;

    .line 6
    invoke-static {p3}, Le/m/a/g/j/l;->PA(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    .line 7
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_vertical:I

    move v9, v2

    goto :goto_0

    .line 8
    :cond_0
    sget v1, Lcom/google/android/material/R$layout;->mtrl_calendar_horizontal:I

    move v9, v3

    .line 9
    :goto_0
    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    .line 10
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_days_of_week:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/GridView;

    .line 11
    new-instance v1, Le/m/a/g/j/d$b;

    invoke-direct {v1, p0}, Le/m/a/g/j/d$b;-><init>(Le/m/a/g/j/d;)V

    invoke-static {p2, v1}, Ln3/k/i/s;->q(Landroid/view/View;Ln3/k/i/a;)V

    .line 12
    new-instance v1, Le/m/a/g/j/c;

    invoke-direct {v1}, Le/m/a/g/j/c;-><init>()V

    invoke-virtual {p2, v1}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 13
    iget v0, v0, Lcom/google/android/material/datepicker/Month;->d:I

    invoke-virtual {p2, v0}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 14
    invoke-virtual {p2, v3}, Landroid/widget/GridView;->setEnabled(Z)V

    .line 15
    sget p2, Lcom/google/android/material/R$id;->mtrl_calendar_months:I

    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroidx/recyclerview/widget/RecyclerView;

    iput-object p2, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    .line 16
    new-instance p2, Le/m/a/g/j/d$c;

    .line 17
    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->getContext()Landroid/content/Context;

    move-result-object v6

    const/4 v8, 0x0

    move-object v4, p2

    move-object v5, p0

    move v7, v9

    invoke-direct/range {v4 .. v9}, Le/m/a/g/j/d$c;-><init>(Le/m/a/g/j/d;Landroid/content/Context;IZI)V

    .line 18
    iget-object v0, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 19
    iget-object p2, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    const-string v0, "MONTHS_VIEW_GROUP_TAG"

    invoke-virtual {p2, v0}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 20
    new-instance p2, Le/m/a/g/j/r;

    iget-object v0, p0, Le/m/a/g/j/d;->c:Lcom/google/android/material/datepicker/DateSelector;

    iget-object v1, p0, Le/m/a/g/j/d;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    new-instance v4, Le/m/a/g/j/d$d;

    invoke-direct {v4, p0}, Le/m/a/g/j/d$d;-><init>(Le/m/a/g/j/d;)V

    invoke-direct {p2, p3, v0, v1, v4}, Le/m/a/g/j/r;-><init>(Landroid/content/Context;Lcom/google/android/material/datepicker/DateSelector;Lcom/google/android/material/datepicker/CalendarConstraints;Le/m/a/g/j/d$f;)V

    .line 21
    iget-object v0, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {v0, p2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 22
    invoke-virtual {p3}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/google/android/material/R$integer;->mtrl_calendar_year_selector_span:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 23
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_year_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroidx/recyclerview/widget/RecyclerView;

    iput-object v4, p0, Le/m/a/g/j/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    if-eqz v4, :cond_1

    .line 24
    invoke-virtual {v4, v2}, Landroidx/recyclerview/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 25
    iget-object v4, p0, Le/m/a/g/j/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v5, Landroidx/recyclerview/widget/GridLayoutManager;

    invoke-direct {v5, p3, v0, v2, v3}, Landroidx/recyclerview/widget/GridLayoutManager;-><init>(Landroid/content/Context;IIZ)V

    invoke-virtual {v4, v5}, Landroidx/recyclerview/widget/RecyclerView;->setLayoutManager(Landroidx/recyclerview/widget/RecyclerView$o;)V

    .line 26
    iget-object v0, p0, Le/m/a/g/j/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v2, Le/m/a/g/j/y;

    invoke-direct {v2, p0}, Le/m/a/g/j/y;-><init>(Le/m/a/g/j/d;)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 27
    iget-object v0, p0, Le/m/a/g/j/d;->h:Landroidx/recyclerview/widget/RecyclerView;

    .line 28
    new-instance v2, Le/m/a/g/j/e;

    invoke-direct {v2, p0}, Le/m/a/g/j/e;-><init>(Le/m/a/g/j/d;)V

    .line 29
    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->addItemDecoration(Landroidx/recyclerview/widget/RecyclerView$n;)V

    .line 30
    :cond_1
    sget v0, Lcom/google/android/material/R$id;->month_navigation_fragment_toggle:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 31
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/google/android/material/button/MaterialButton;

    const-string v2, "SELECTOR_TOGGLE_TAG"

    .line 32
    invoke-virtual {v0, v2}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 33
    new-instance v2, Le/m/a/g/j/f;

    invoke-direct {v2, p0}, Le/m/a/g/j/f;-><init>(Le/m/a/g/j/d;)V

    invoke-static {v0, v2}, Ln3/k/i/s;->q(Landroid/view/View;Ln3/k/i/a;)V

    .line 34
    sget v2, Lcom/google/android/material/R$id;->month_navigation_previous:I

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/button/MaterialButton;

    const-string v3, "NAVIGATION_PREV_TAG"

    .line 35
    invoke-virtual {v2, v3}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 36
    sget v3, Lcom/google/android/material/R$id;->month_navigation_next:I

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/google/android/material/button/MaterialButton;

    const-string v4, "NAVIGATION_NEXT_TAG"

    .line 37
    invoke-virtual {v3, v4}, Landroid/widget/Button;->setTag(Ljava/lang/Object;)V

    .line 38
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Le/m/a/g/j/d;->j:Landroid/view/View;

    .line 39
    sget v1, Lcom/google/android/material/R$id;->mtrl_calendar_day_selector_frame:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Le/m/a/g/j/d;->k:Landroid/view/View;

    .line 40
    sget-object v1, Le/m/a/g/j/d$e;->a:Le/m/a/g/j/d$e;

    invoke-virtual {p0, v1}, Le/m/a/g/j/d;->SA(Le/m/a/g/j/d$e;)V

    .line 41
    iget-object v1, p0, Le/m/a/g/j/d;->e:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v1, v4}, Lcom/google/android/material/datepicker/Month;->f(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 42
    iget-object v1, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    new-instance v4, Le/m/a/g/j/g;

    invoke-direct {v4, p0, p2, v0}, Le/m/a/g/j/g;-><init>(Le/m/a/g/j/d;Le/m/a/g/j/r;Lcom/google/android/material/button/MaterialButton;)V

    invoke-virtual {v1, v4}, Landroidx/recyclerview/widget/RecyclerView;->addOnScrollListener(Landroidx/recyclerview/widget/RecyclerView$t;)V

    .line 43
    new-instance v1, Le/m/a/g/j/h;

    invoke-direct {v1, p0}, Le/m/a/g/j/h;-><init>(Le/m/a/g/j/d;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 44
    new-instance v0, Le/m/a/g/j/i;

    invoke-direct {v0, p0, p2}, Le/m/a/g/j/i;-><init>(Le/m/a/g/j/d;Le/m/a/g/j/r;)V

    invoke-virtual {v3, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 45
    new-instance v0, Le/m/a/g/j/j;

    invoke-direct {v0, p0, p2}, Le/m/a/g/j/j;-><init>(Le/m/a/g/j/d;Le/m/a/g/j/r;)V

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 46
    :cond_2
    invoke-static {p3}, Le/m/a/g/j/l;->PA(Landroid/content/Context;)Z

    move-result p3

    if-nez p3, :cond_3

    .line 47
    new-instance p3, Ln3/b0/a/v;

    invoke-direct {p3}, Ln3/b0/a/v;-><init>()V

    iget-object v0, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    invoke-virtual {p3, v0}, Ln3/b0/a/y;->a(Landroidx/recyclerview/widget/RecyclerView;)V

    .line 48
    :cond_3
    iget-object p3, p0, Le/m/a/g/j/d;->i:Landroidx/recyclerview/widget/RecyclerView;

    iget-object v0, p0, Le/m/a/g/j/d;->e:Lcom/google/android/material/datepicker/Month;

    invoke-virtual {p2, v0}, Le/m/a/g/j/r;->g(Lcom/google/android/material/datepicker/Month;)I

    move-result p2

    invoke-virtual {p3, p2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    return-object p1
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2

    .line 1
    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 2
    iget v0, p0, Le/m/a/g/j/d;->b:I

    const-string v1, "THEME_RES_ID_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 3
    iget-object v0, p0, Le/m/a/g/j/d;->c:Lcom/google/android/material/datepicker/DateSelector;

    const-string v1, "GRID_SELECTOR_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 4
    iget-object v0, p0, Le/m/a/g/j/d;->d:Lcom/google/android/material/datepicker/CalendarConstraints;

    const-string v1, "CALENDAR_CONSTRAINTS_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 5
    iget-object v0, p0, Le/m/a/g/j/d;->e:Lcom/google/android/material/datepicker/Month;

    const-string v1, "CURRENT_MONTH_KEY"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    return-void
.end method
