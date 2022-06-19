.class public final Le/a/i/c0/o/i;
.super Le/a/i/c0/o/d;
.source "SourceFile"


# static fields
.field public static final synthetic h:[Ls1/a/l;


# instance fields
.field public final e:I

.field public final f:Ls1/b0/c;

.field public final g:Ls1/b0/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const-class v0, Le/a/i/c0/o/i;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    const-string v2, "title"

    const-string v3, "getTitle()Landroid/widget/TextView;"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "value"

    const-string v3, "getValue()Landroid/widget/Spinner;"

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Le/a/i/c0/o/i;->h:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "input"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/a/i/c0/o/d;-><init>(Lcom/truecaller/ads/leadgen/dto/LeadgenInput;Ljava/lang/String;Le/a/i/c0/o/e;Landroid/view/ViewGroup;)V

    const p1, 0x7f0d0386

    .line 2
    iput p1, p0, Le/a/i/c0/o/i;->e:I

    .line 3
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 4
    iput-object p1, p0, Le/a/i/c0/o/i;->f:Ls1/b0/c;

    .line 5
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/i/c0/o/i;->g:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/c0/o/i;->e:I

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 7

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const v0, 0x7f0a1245

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.title)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/TextView;

    .line 2
    iget-object v1, p0, Le/a/i/c0/o/i;->f:Ls1/b0/c;

    sget-object v2, Le/a/i/c0/o/i;->h:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-interface {v1, p0, v4, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    const v0, 0x7f0a134f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.value)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/Spinner;

    .line 4
    iget-object v1, p0, Le/a/i/c0/o/i;->g:Ls1/b0/c;

    const/4 v4, 0x1

    aget-object v2, v2, v4

    invoke-interface {v1, p0, v2, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 6
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    sget-object v0, Ls1/u/s;->a:Ls1/u/s;

    .line 7
    :goto_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 9
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    move v5, v4

    goto :goto_2

    :cond_2
    move v5, v3

    :goto_2
    if-nez v5, :cond_1

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_3
    invoke-static {v1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object v0

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "view.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v5, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 13
    invoke-virtual {v5}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->a()Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_4

    goto :goto_3

    :cond_4
    move v4, v3

    :cond_5
    :goto_3
    if-nez v4, :cond_6

    goto :goto_4

    :cond_6
    const/4 v5, 0x0

    :goto_4
    if-eqz v5, :cond_7

    goto :goto_5

    :cond_7
    const v4, 0x7f120330

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v1, "context.getString(R.string.LeadgenSelectValueHint)"

    invoke-static {v5, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    :goto_5
    move-object v1, v0

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1, v3, v5}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 15
    iget-object v1, p0, Le/a/i/c0/o/i;->f:Ls1/b0/c;

    sget-object v4, Le/a/i/c0/o/i;->h:[Ls1/a/l;

    aget-object v3, v4, v3

    invoke-interface {v1, p0, v3}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 16
    iget-object v3, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 17
    invoke-virtual {v3}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->e()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-virtual {p0}, Le/a/i/c0/o/i;->d()Landroid/widget/Spinner;

    .line 19
    invoke-virtual {p0}, Le/a/i/c0/o/i;->d()Landroid/widget/Spinner;

    move-result-object v1

    new-instance v3, Le/a/i/c0/a;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v2, 0x1090009

    invoke-direct {v3, p1, v2, v0}, Le/a/i/c0/a;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v1, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 20
    iget-object p1, p0, Le/a/i/c0/o/d;->c:Ljava/lang/String;

    if-eqz p1, :cond_8

    goto :goto_6

    .line 21
    :cond_8
    iget-object p1, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 22
    invoke-virtual {p1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->h()Ljava/lang/String;

    move-result-object p1

    :goto_6
    invoke-static {v0, p1}, Ls1/u/i;->J(Ljava/util/List;Ljava/lang/Object;)I

    move-result p1

    const/4 v1, -0x1

    if-le p1, v1, :cond_9

    .line 23
    invoke-virtual {p0}, Le/a/i/c0/o/i;->d()Landroid/widget/Spinner;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/widget/Spinner;->setSelection(I)V

    .line 24
    :cond_9
    invoke-virtual {p0}, Le/a/i/c0/o/i;->d()Landroid/widget/Spinner;

    move-result-object p1

    new-instance v1, Le/a/i/c0/o/b;

    .line 25
    iget-object v2, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 26
    invoke-virtual {v2}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->b()Ljava/lang/String;

    move-result-object v2

    .line 27
    iget-object v3, p0, Le/a/i/c0/o/d;->d:Le/a/i/c0/o/e;

    .line 28
    invoke-direct {v1, v2, v3, v0}, Le/a/i/c0/o/b;-><init>(Ljava/lang/String;Le/a/i/c0/o/e;Ljava/util/List;)V

    invoke-virtual {p1, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/i/c0/o/i;->d()Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->getSelectedView()Landroid/view/View;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.widget.TextView"

    .line 2
    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/widget/TextView;

    .line 3
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final d()Landroid/widget/Spinner;
    .locals 3

    iget-object v0, p0, Le/a/i/c0/o/i;->g:Ls1/b0/c;

    sget-object v1, Le/a/i/c0/o/i;->h:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/Spinner;

    return-object v0
.end method
