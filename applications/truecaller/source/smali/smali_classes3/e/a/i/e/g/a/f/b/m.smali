.class public final Le/a/i/e/g/a/f/b/m;
.super Le/a/i/e/g/a/f/b/g;
.source "SourceFile"


# static fields
.field public static final synthetic e:[Ls1/a/l;


# instance fields
.field public final b:I

.field public final c:Ls1/b0/c;

.field public final d:Le/a/i/e/j/b;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/i/e/g/a/f/b/m;

    const-string v2, "textView"

    const-string v3, "getTextView()Landroid/widget/TextView;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/i/e/g/a/f/b/m;->e:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Le/a/i/e/j/b;)V
    .locals 1

    const-string v0, "textSettings"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/i/e/j/b;->a:Landroid/view/ViewGroup;

    .line 2
    invoke-direct {p0, v0}, Le/a/i/e/g/a/f/b/g;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Le/a/i/e/g/a/f/b/m;->d:Le/a/i/e/j/b;

    .line 3
    iget-object p1, p1, Le/a/i/e/j/b;->d:Le/a/i/e/j/c;

    .line 4
    iget p1, p1, Le/a/i/e/j/c;->b:I

    .line 5
    iput p1, p0, Le/a/i/e/g/a/f/b/m;->b:I

    .line 6
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 7
    iput-object p1, p0, Le/a/i/e/g/a/f/b/m;->c:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/e/g/a/f/b/m;->b:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/ads/R$id;->textView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.textView)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Landroid/widget/TextView;

    .line 2
    iget-object v0, p0, Le/a/i/e/g/a/f/b/m;->c:Ls1/b0/c;

    sget-object v1, Le/a/i/e/g/a/f/b/m;->e:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-interface {v0, p0, v3, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Le/a/i/e/g/a/f/b/m;->c:Ls1/b0/c;

    aget-object v0, v1, v2

    invoke-interface {p1, p0, v0}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    .line 4
    iget-object v0, p0, Le/a/i/e/g/a/f/b/m;->d:Le/a/i/e/j/b;

    .line 5
    iget-object v3, v0, Le/a/i/e/j/b;->d:Le/a/i/e/j/c;

    .line 6
    iget-object v3, v3, Le/a/i/e/j/c;->a:Ljava/lang/Integer;

    if-eqz v3, :cond_0

    .line 7
    invoke-virtual {v3}, Ljava/lang/Number;->intValue()I

    move-result v3

    .line 8
    iget-object v4, p0, Le/a/i/e/g/a/f/b/m;->c:Ls1/b0/c;

    aget-object v1, v1, v2

    invoke-interface {v4, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 9
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextAppearance(I)V

    .line 10
    :cond_0
    iget-boolean v1, v0, Le/a/i/e/j/b;->c:Z

    if-eqz v1, :cond_1

    .line 11
    iget-object v0, v0, Le/a/i/e/j/b;->b:Ljava/lang/String;

    .line 12
    invoke-static {v0, v2}, Landroid/support/v4/media/session/MediaSessionCompat;->d0(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 13
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    goto :goto_0

    .line 14
    :cond_1
    iget-object v1, v0, Le/a/i/e/j/b;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 16
    iget-object v1, v0, Le/a/i/e/j/b;->d:Le/a/i/e/j/c;

    .line 17
    iget-object v1, v1, Le/a/i/e/j/c;->c:Ljava/lang/String;

    if-eqz v1, :cond_2

    .line 18
    invoke-static {v1}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 19
    :cond_2
    iget-object v0, v0, Le/a/i/e/j/b;->d:Le/a/i/e/j/c;

    .line 20
    iget-object v0, v0, Le/a/i/e/j/c;->d:Ljava/lang/String;

    if-eqz v0, :cond_3

    .line 21
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundColor(I)V

    :cond_3
    :goto_0
    return-void
.end method
