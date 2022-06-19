.class public final Le/a/i/c0/o/a;
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

    const-class v0, Le/a/i/c0/o/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    const-string v2, "title"

    const-string v3, "getTitle()Landroid/widget/TextView;"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "value"

    const-string v3, "getValue()Landroid/widget/AutoCompleteTextView;"

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Le/a/i/c0/o/a;->h:[Ls1/a/l;

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

    const p1, 0x7f0d0382

    .line 2
    iput p1, p0, Le/a/i/c0/o/a;->e:I

    .line 3
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 4
    iput-object p1, p0, Le/a/i/c0/o/a;->f:Ls1/b0/c;

    .line 5
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/i/c0/o/a;->g:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/c0/o/a;->e:I

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 6

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
    iget-object v1, p0, Le/a/i/c0/o/a;->f:Ls1/b0/c;

    sget-object v2, Le/a/i/c0/o/a;->h:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-interface {v1, p0, v4, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    const v0, 0x7f0a134f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.value)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 4
    iget-object v1, p0, Le/a/i/c0/o/a;->g:Ls1/b0/c;

    const/4 v4, 0x1

    aget-object v5, v2, v4

    invoke-interface {v1, p0, v5, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 5
    iget-object v0, p0, Le/a/i/c0/o/a;->f:Ls1/b0/c;

    aget-object v1, v2, v3

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 6
    iget-object v1, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 7
    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->e()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object v0, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 9
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->c()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 10
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 11
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v5, v2

    check-cast v5, Ljava/lang/String;

    .line 12
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v3

    :goto_1
    if-nez v5, :cond_0

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    sget-object v1, Ls1/u/s;->a:Ls1/u/s;

    .line 13
    :cond_3
    iget-object v0, p0, Le/a/i/c0/o/a;->g:Ls1/b0/c;

    sget-object v2, Le/a/i/c0/o/a;->h:[Ls1/a/l;

    aget-object v2, v2, v4

    invoke-interface {v0, p0, v2}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 14
    iget-object v2, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 15
    invoke-virtual {v2}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setHint(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v2, p0, Le/a/i/c0/o/d;->c:Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 17
    invoke-static {v2}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_5

    :cond_4
    move v3, v4

    :cond_5
    xor-int/2addr v3, v4

    if-eqz v3, :cond_6

    goto :goto_2

    :cond_6
    const/4 v2, 0x0

    :goto_2
    if-eqz v2, :cond_7

    goto :goto_3

    .line 18
    :cond_7
    iget-object v2, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 19
    invoke-virtual {v2}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->h()Ljava/lang/String;

    move-result-object v2

    :goto_3
    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    new-instance v2, Landroid/widget/ArrayAdapter;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v3, 0x109000a

    invoke-direct {v2, p1, v3, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {v0, v2}, Landroid/widget/AutoCompleteTextView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 21
    new-instance p1, Le/a/i/c0/o/c;

    .line 22
    iget-object v1, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 23
    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->b()Ljava/lang/String;

    move-result-object v1

    .line 24
    iget-object v2, p0, Le/a/i/c0/o/d;->d:Le/a/i/c0/o/e;

    .line 25
    invoke-direct {p1, v1, v2}, Le/a/i/c0/o/c;-><init>(Ljava/lang/String;Le/a/i/c0/o/e;)V

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 26
    new-instance p1, Le/a/i/c0/o/a$a;

    invoke-direct {p1, v0}, Le/a/i/c0/o/a$a;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 27
    new-instance p1, Le/a/i/c0/o/a$b;

    invoke-direct {p1, v0}, Le/a/i/c0/o/a$b;-><init>(Landroid/widget/AutoCompleteTextView;)V

    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/c0/o/a;->g:Ls1/b0/c;

    sget-object v1, Le/a/i/c0/o/a;->h:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AutoCompleteTextView;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/AutoCompleteTextView;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
