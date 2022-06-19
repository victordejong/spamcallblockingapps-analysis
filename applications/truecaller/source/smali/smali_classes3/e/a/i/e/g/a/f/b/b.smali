.class public final Le/a/i/e/g/a/f/b/b;
.super Le/a/i/e/g/a/f/b/d;
.source "SourceFile"


# static fields
.field public static final synthetic f:[Ls1/a/l;


# instance fields
.field public final b:I

.field public final c:Ls1/b0/c;

.field public final d:Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;

.field public final e:Le/a/i/e/g/a/f/b/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/i/e/g/a/f/b/b;

    const-string v2, "button"

    const-string v3, "getButton()Lcom/truecaller/ads/ui/CtaButtonX;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->e0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/h;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/i/e/g/a/f/b/b;->f:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>(Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;Le/a/i/e/g/a/f/b/e;Landroid/view/ViewGroup;)V
    .locals 1

    const-string v0, "component"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "callback"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "container"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p3}, Le/a/i/e/g/a/f/b/d;-><init>(Landroid/view/ViewGroup;)V

    iput-object p1, p0, Le/a/i/e/g/a/f/b/b;->d:Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;

    iput-object p2, p0, Le/a/i/e/g/a/f/b/b;->e:Le/a/i/e/g/a/f/b/e;

    .line 2
    sget p1, Lcom/truecaller/ads/R$layout;->offline_leadgen_item_button:I

    iput p1, p0, Le/a/i/e/g/a/f/b/b;->b:I

    .line 3
    new-instance p1, Ls1/b0/a;

    invoke-direct {p1}, Ls1/b0/a;-><init>()V

    .line 4
    iput-object p1, p0, Le/a/i/e/g/a/f/b/b;->c:Ls1/b0/c;

    return-void
.end method


# virtual methods
.method public b()I
    .locals 1

    .line 1
    iget v0, p0, Le/a/i/e/g/a/f/b/b;->b:I

    return v0
.end method

.method public c(Landroid/view/View;)V
    .locals 4

    const-string v0, "view"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/truecaller/ads/R$id;->actionButton:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const-string v0, "view.findViewById(R.id.actionButton)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Lcom/truecaller/ads/ui/CtaButtonX;

    .line 2
    iget-object v0, p0, Le/a/i/e/g/a/f/b/b;->c:Ls1/b0/c;

    sget-object v1, Le/a/i/e/g/a/f/b/b;->f:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v3, v1, v2

    invoke-interface {v0, p0, v3, p1}, Ls1/b0/c;->a(Ljava/lang/Object;Ls1/a/l;Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Le/a/i/e/g/a/f/b/b;->c:Ls1/b0/c;

    aget-object v0, v1, v2

    invoke-interface {p1, p0, v0}, Ls1/b0/c;->A1(Ljava/lang/Object;Ls1/a/l;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ads/ui/CtaButtonX;

    .line 4
    iget-object v0, p0, Le/a/i/e/g/a/f/b/b;->d:Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;

    .line 5
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;->c:Ljava/lang/String;

    .line 6
    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object v0, p0, Le/a/i/e/g/a/f/b/b;->d:Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;

    .line 8
    iget-object v0, v0, Lcom/truecaller/ads/offline/dto/ButtonItemUiComponent;->e:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 9
    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    goto :goto_0

    .line 10
    :cond_0
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v0

    sget v1, Lcom/truecaller/ads/R$color;->leadgen_button_text_default:I

    .line 11
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 13
    :goto_0
    invoke-virtual {p1}, Landroid/widget/Button;->getContext()Landroid/content/Context;

    move-result-object v1

    sget v2, Lcom/truecaller/ads/R$color;->leadgen_button_text_default:I

    .line 14
    sget-object v3, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 15
    invoke-static {v1, v2}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v1

    .line 16
    invoke-virtual {p1, v0, v1}, Lcom/truecaller/ads/ui/CtaButtonX;->a(II)V

    .line 17
    new-instance v0, Le/a/i/e/g/a/f/b/b$a;

    invoke-direct {v0, p0}, Le/a/i/e/g/a/f/b/b$a;-><init>(Le/a/i/e/g/a/f/b/b;)V

    invoke-virtual {p1, v0}, Lcom/truecaller/ads/ui/CtaButtonX;->setOnClickListener(Ls1/z/b/a;)V

    return-void
.end method
