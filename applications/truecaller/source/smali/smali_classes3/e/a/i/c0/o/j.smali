.class public final Le/a/i/c0/o/j;
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

    const-class v0, Le/a/i/c0/o/j;

    const/4 v1, 0x2

    new-array v1, v1, [Ls1/a/l;

    const-string v2, "title"

    const-string v3, "getTitle()Landroid/widget/TextView;"

    const/4 v4, 0x0

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v2

    aput-object v2, v1, v4

    const-string v2, "value"

    const-string v3, "getValue()Landroid/widget/EditText;"

    invoke-static {v0, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v0

    const/4 v2, 0x1

    aput-object v0, v1, v2

    sput-object v1, Le/a/i/c0/o/j;->h:[Ls1/a/l;

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

    const p1, 0x7f0d0387

    .line 2
    iput p1, p0, Le/a/i/c0/o/j;->e:I

    .line 3
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 4
    iput-object p1, p0, Le/a/i/c0/o/j;->f:Ls1/b0/c;

    .line 5
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 6
    iput-object p1, p0, Le/a/i/c0/o/j;->g:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/c0/o/j;->e:I

    return v0
.end method

.method public b(Landroid/view/View;)V
    .locals 5

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
    iget-object v1, p0, Le/a/i/c0/o/j;->f:Ls1/b0/c;

    sget-object v2, Le/a/i/c0/o/j;->h:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-interface {v1, p0, v4, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    const v0, 0x7f0a134f

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.value)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/EditText;

    .line 4
    iget-object v0, p0, Le/a/i/c0/o/j;->g:Ls1/b0/c;

    const/4 v1, 0x1

    aget-object v4, v2, v1

    invoke-interface {v0, p0, v4, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Le/a/i/c0/o/j;->f:Ls1/b0/c;

    aget-object v0, v2, v3

    invoke-interface {p1, p0, v0}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 6
    iget-object v0, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 7
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->e()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Le/a/i/c0/o/j;->g:Ls1/b0/c;

    aget-object v0, v2, v1

    invoke-interface {p1, p0, v0}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/EditText;

    .line 9
    iget-object v0, p0, Le/a/i/c0/o/d;->c:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    .line 10
    :cond_0
    iget-object v0, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 11
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->h()Ljava/lang/String;

    move-result-object v0

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 12
    iget-object v0, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 13
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setHint(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v0, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 15
    invoke-virtual {v0}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->g()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v1

    const v2, 0x5c24b9c

    if-eq v1, v2, :cond_3

    const v2, 0x65b3d6e

    if-eq v1, v2, :cond_2

    goto :goto_1

    :cond_2
    const-string v1, "phone"

    .line 16
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/4 v0, 0x3

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    goto :goto_1

    :cond_3
    const-string v1, "email"

    .line 17
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4

    const/16 v0, 0x20

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->setInputType(I)V

    .line 18
    :cond_4
    :goto_1
    new-instance v0, Le/a/i/c0/o/c;

    .line 19
    iget-object v1, p0, Le/a/i/c0/o/d;->b:Lcom/truecaller/ads/leadgen/dto/LeadgenInput;

    .line 20
    invoke-virtual {v1}, Lcom/truecaller/ads/leadgen/dto/LeadgenInput;->b()Ljava/lang/String;

    move-result-object v1

    .line 21
    iget-object v2, p0, Le/a/i/c0/o/d;->d:Le/a/i/c0/o/e;

    .line 22
    invoke-direct {v0, v1, v2}, Le/a/i/c0/o/c;-><init>(Ljava/lang/String;Le/a/i/c0/o/e;)V

    invoke-virtual {p1, v0}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/i/c0/o/j;->g:Ls1/b0/c;

    sget-object v1, Le/a/i/c0/o/j;->h:[Ls1/a/l;

    const/4 v2, 0x1

    aget-object v1, v1, v2

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setError(Ljava/lang/CharSequence;)V

    return-void
.end method
