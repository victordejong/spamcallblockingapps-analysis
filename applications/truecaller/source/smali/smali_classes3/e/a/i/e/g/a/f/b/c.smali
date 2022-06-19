.class public final Le/a/i/e/g/a/f/b/c;
.super Le/a/i/e/g/a/f/b/g;
.source "SourceFile"


# static fields
.field public static final synthetic g:[Ls1/a/l;


# instance fields
.field public final b:I

.field public final c:Ls1/b0/c;

.field public final d:Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

.field public final e:Landroid/view/ViewGroup;

.field public final f:Le/a/i/e/j/c;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/i/e/g/a/f/b/c;

    const-string v2, "imageView"

    const-string v3, "getImageView()Landroid/widget/ImageView;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/i/e/g/a/f/b/c;->g:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;Landroid/view/ViewGroup;Le/a/i/e/j/c;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "uiStyle"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/i/e/g/a/f/b/g;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Le/a/i/e/g/a/f/b/c;->d:Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    iput-object p2, p0, Le/a/i/e/g/a/f/b/c;->e:Landroid/view/ViewGroup;

    iput-object p3, p0, Le/a/i/e/g/a/f/b/c;->f:Le/a/i/e/j/c;

    .line 2
    iget p1, p3, Le/a/i/e/j/c;->b:I

    .line 3
    iput p1, p0, Le/a/i/e/g/a/f/b/c;->b:I

    .line 4
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 5
    iput-object p1, p0, Le/a/i/e/g/a/f/b/c;->c:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/e/g/a/f/b/c;->b:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 5

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/ads/R$id;->imageView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById(R.id.imageView)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Landroid/widget/ImageView;

    .line 2
    iget-object v1, p0, Le/a/i/e/g/a/f/b/c;->c:Ls1/b0/c;

    sget-object v2, Le/a/i/e/g/a/f/b/c;->g:[Ls1/a/l;

    const/4 v3, 0x0

    aget-object v4, v2, v3

    invoke-interface {v1, p0, v4, v0}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 3
    sget v0, Lcom/truecaller/ads/R$id;->textView:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    if-eqz p1, :cond_0

    iget-object v0, p0, Le/a/i/e/g/a/f/b/c;->d:Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    .line 4
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;->d:Ljava/lang/String;

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    :cond_0
    iget-object p1, p0, Le/a/i/e/g/a/f/b/c;->e:Landroid/view/ViewGroup;

    invoke-static {p1}, Le/a/m0/a1$k;->L1(Landroid/view/View;)Le/a/z3/e;

    move-result-object p1

    .line 7
    iget-object v0, p0, Le/a/i/e/g/a/f/b/c;->d:Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    .line 8
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;->c:Landroid/net/Uri;

    .line 9
    invoke-virtual {p1, v0}, Le/a/z3/e;->z(Landroid/net/Uri;)Le/a/z3/d;

    move-result-object p1

    .line 10
    iget-object v0, p0, Le/a/i/e/g/a/f/b/c;->c:Ls1/b0/c;

    aget-object v1, v2, v3

    invoke-interface {v0, p0, v1}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 11
    invoke-virtual {p1, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 12
    iget-object p1, p0, Le/a/i/e/g/a/f/b/c;->c:Ls1/b0/c;

    aget-object v0, v2, v3

    invoke-interface {p1, p0, v0}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    .line 13
    iget-object v0, p0, Le/a/i/e/g/a/f/b/c;->d:Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;

    .line 14
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/ImageItemUiComponent;->b:Ljava/lang/String;

    .line 15
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    return-void
.end method
