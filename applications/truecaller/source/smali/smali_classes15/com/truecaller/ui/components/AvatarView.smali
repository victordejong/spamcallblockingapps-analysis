.class public Lcom/truecaller/ui/components/AvatarView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"


# instance fields
.field public final a:Le/f/a/r/g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/f/a/r/g<",
            "Landroid/graphics/drawable/Drawable;",
            ">;"
        }
    .end annotation
.end field

.field public final b:I

.field public final c:I

.field public d:Lcom/truecaller/ui/view/ContactPhoto;

.field public e:Landroid/widget/TextView;

.field public f:Landroid/net/Uri;

.field public g:Landroid/net/Uri;

.field public h:Z

.field public i:Z

.field public j:Z

.field public k:Z

.field public l:J


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 7

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, p2, v0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 2
    new-instance v1, Lcom/truecaller/ui/components/AvatarView$a;

    invoke-direct {v1, p0}, Lcom/truecaller/ui/components/AvatarView$a;-><init>(Lcom/truecaller/ui/components/AvatarView;)V

    iput-object v1, p0, Lcom/truecaller/ui/components/AvatarView;->a:Le/f/a/r/g;

    .line 3
    iput-boolean v0, p0, Lcom/truecaller/ui/components/AvatarView;->k:Z

    const-wide/high16 v1, -0x8000000000000000L

    .line 4
    iput-wide v1, p0, Lcom/truecaller/ui/components/AvatarView;->l:J

    .line 5
    sget-object v1, Lcom/truecaller/R$styleable;->AvatarView:[I

    invoke-virtual {p1, p2, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object p2

    const/4 v1, 0x3

    const v2, 0x7f0d048e

    .line 6
    invoke-virtual {p2, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 7
    invoke-virtual {p2, v0, v0}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v2

    const/4 v3, 0x1

    const v4, 0x7f120410

    .line 8
    invoke-virtual {p2, v3, v4}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v4

    iput v4, p0, Lcom/truecaller/ui/components/AvatarView;->b:I

    const/4 v5, 0x2

    const/high16 v6, -0x1000000

    .line 9
    invoke-virtual {p2, v5, v6}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v5

    iput v5, p0, Lcom/truecaller/ui/components/AvatarView;->c:I

    .line 10
    invoke-virtual {p2}, Landroid/content/res/TypedArray;->recycle()V

    .line 11
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p2

    if-nez p2, :cond_2

    if-eqz v4, :cond_0

    move p2, v3

    goto :goto_0

    :cond_0
    move p2, v0

    :goto_0
    new-array v4, v0, [Ljava/lang/String;

    .line 12
    invoke-static {p2, v4}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    if-eqz v5, :cond_1

    move p2, v3

    goto :goto_1

    :cond_1
    move p2, v0

    :goto_1
    new-array v4, v0, [Ljava/lang/String;

    .line 13
    invoke-static {p2, v4}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    :cond_2
    if-eqz v2, :cond_3

    .line 14
    new-instance p2, Le/a/e/c2/a;

    invoke-direct {p2, p0}, Le/a/e/c2/a;-><init>(Lcom/truecaller/ui/components/AvatarView;)V

    invoke-virtual {p0, p2}, Landroid/widget/FrameLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 15
    :cond_3
    invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object p1

    invoke-virtual {p1, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p1

    const p2, 0x7f0a01cc

    .line 16
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Lcom/truecaller/ui/view/ContactPhoto;

    iput-object p2, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    .line 17
    new-instance v1, Le/a/e/c2/q;

    invoke-direct {v1, p0}, Le/a/e/c2/q;-><init>(Lcom/truecaller/ui/components/AvatarView;)V

    invoke-virtual {p2, v1}, Lcom/truecaller/ui/view/ContactPhoto;->setCallback(Le/f/a/r/g;)V

    const p2, 0x7f0a1317

    .line 18
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/truecaller/ui/components/AvatarView;->e:Landroid/widget/TextView;

    .line 19
    iget-object p1, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    if-eqz p1, :cond_4

    goto :goto_2

    :cond_4
    move v3, v0

    :goto_2
    new-array p1, v0, [Ljava/lang/String;

    invoke-static {v3, p1}, Lcom/truecaller/log/AssertionUtil;->isTrue(Z[Ljava/lang/String;)V

    .line 20
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isInEditMode()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 21
    iget-object p1, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    const p2, 0x7f080384

    invoke-virtual {p1, p2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    :cond_5
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->isAttachedToWindow()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/truecaller/ui/components/AvatarView;->f:Landroid/net/Uri;

    .line 3
    iput-object v0, p0, Lcom/truecaller/ui/components/AvatarView;->g:Landroid/net/Uri;

    const/4 v1, 0x0

    .line 4
    iput-boolean v1, p0, Lcom/truecaller/ui/components/AvatarView;->h:Z

    .line 5
    iput-boolean v1, p0, Lcom/truecaller/ui/components/AvatarView;->k:Z

    .line 6
    iget-object v1, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    .line 7
    invoke-virtual {v1}, Landroid/widget/ImageView;->isAttachedToWindow()Z

    move-result v2

    if-nez v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-virtual {v1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v2

    invoke-virtual {v2, v1}, Le/f/a/i;->m(Landroid/view/View;)V

    .line 9
    :goto_0
    iget-object v1, p0, Lcom/truecaller/ui/components/AvatarView;->e:Landroid/widget/TextView;

    if-eqz v1, :cond_2

    const/16 v2, 0x8

    .line 10
    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 11
    :cond_2
    iget-object v1, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    invoke-virtual {v1, v0, v0}, Lcom/truecaller/ui/view/ContactPhoto;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/net/Uri;Landroid/net/Uri;ZZ)V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/truecaller/ui/components/AvatarView;->a()V

    .line 2
    iput-boolean p3, p0, Lcom/truecaller/ui/components/AvatarView;->i:Z

    .line 3
    iput-boolean p4, p0, Lcom/truecaller/ui/components/AvatarView;->j:Z

    .line 4
    iput-object p1, p0, Lcom/truecaller/ui/components/AvatarView;->f:Landroid/net/Uri;

    if-eqz p2, :cond_0

    goto :goto_0

    :cond_0
    move-object p2, p1

    .line 5
    :goto_0
    iput-object p2, p0, Lcom/truecaller/ui/components/AvatarView;->g:Landroid/net/Uri;

    .line 6
    iget-object p2, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    const/4 p3, 0x0

    invoke-virtual {p2, p3}, Lcom/truecaller/ui/view/ContactPhoto;->setIsSpam(Z)V

    .line 7
    iget-object p2, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    iget-boolean p3, p0, Lcom/truecaller/ui/components/AvatarView;->i:Z

    invoke-virtual {p2, p3}, Lcom/truecaller/ui/view/ContactPhoto;->setIsGold(Z)V

    if-eqz p1, :cond_1

    .line 8
    iget-object p2, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    const/4 p3, 0x0

    invoke-virtual {p2, p1, p3}, Lcom/truecaller/ui/view/ContactPhoto;->f(Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_1

    .line 9
    :cond_1
    iget-wide p1, p0, Lcom/truecaller/ui/components/AvatarView;->l:J

    const-wide/high16 p3, -0x8000000000000000L

    cmp-long p3, p1, p3

    if-eqz p3, :cond_2

    iget-boolean p3, p0, Lcom/truecaller/ui/components/AvatarView;->h:Z

    if-nez p3, :cond_2

    .line 10
    iget-object p3, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    long-to-int p1, p1

    invoke-static {p3, p1}, Le/a/p5/s0/g;->r1(Landroid/widget/ImageView;I)V

    :cond_2
    :goto_1
    return-void
.end method

.method public setPrivateAvatar(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/truecaller/ui/components/AvatarView;->d:Lcom/truecaller/ui/view/ContactPhoto;

    invoke-virtual {v0, p1}, Lcom/truecaller/ui/view/ContactPhoto;->setPrivateAvatar(I)V

    return-void
.end method
