.class public Lcom/truecaller/ui/components/DropdownMenuTextView;
.super Landroidx/appcompat/widget/AppCompatTextView;
.source "SourceFile"


# instance fields
.field public f:Ln3/b/f/g0;

.field public g:Ln3/b/f/g0$b;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Landroidx/appcompat/widget/AppCompatTextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 2
    new-instance v0, Ln3/b/f/g0;

    const/4 v1, 0x0

    .line 3
    invoke-direct {v0, p1, p0, v1}, Ln3/b/f/g0;-><init>(Landroid/content/Context;Landroid/view/View;I)V

    .line 4
    iput-object v0, p0, Lcom/truecaller/ui/components/DropdownMenuTextView;->f:Ln3/b/f/g0;

    .line 5
    new-instance v2, Le/a/e/c2/a0;

    invoke-direct {v2, p0}, Le/a/e/c2/a0;-><init>(Lcom/truecaller/ui/components/DropdownMenuTextView;)V

    .line 6
    iput-object v2, v0, Ln3/b/f/g0;->e:Ln3/b/f/g0$b;

    .line 7
    new-instance v0, Le/a/e/c2/b0;

    invoke-direct {v0, p0}, Le/a/e/c2/b0;-><init>(Lcom/truecaller/ui/components/DropdownMenuTextView;)V

    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    sget-object v0, Lcom/truecaller/R$styleable;->DropdownMenuTextView:[I

    invoke-virtual {p1, p2, v0, v1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object p1

    .line 9
    invoke-virtual {p1, v1, v1}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result p2

    if-eqz p2, :cond_0

    .line 10
    iget-object v0, p0, Lcom/truecaller/ui/components/DropdownMenuTextView;->f:Ln3/b/f/g0;

    .line 11
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 12
    new-instance v1, Ln3/b/e/f;

    iget-object v0, v0, Ln3/b/f/g0;->a:Landroid/content/Context;

    invoke-direct {v1, v0}, Ln3/b/e/f;-><init>(Landroid/content/Context;)V

    .line 13
    iget-object v0, p0, Lcom/truecaller/ui/components/DropdownMenuTextView;->f:Ln3/b/f/g0;

    .line 14
    iget-object v0, v0, Ln3/b/f/g0;->b:Ln3/b/e/i/g;

    .line 15
    invoke-virtual {v1, p2, v0}, Ln3/b/e/f;->inflate(ILandroid/view/Menu;)V

    .line 16
    :cond_0
    invoke-virtual {p1}, Landroid/content/res/TypedArray;->recycle()V

    return-void
.end method


# virtual methods
.method public setOnMenuItemClickListener(Ln3/b/f/g0$b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/truecaller/ui/components/DropdownMenuTextView;->g:Ln3/b/f/g0$b;

    return-void
.end method
