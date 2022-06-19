.class public final Le/a/a/c/d;
.super Landroidx/recyclerview/widget/RecyclerView$c0;
.source "SourceFile"

# interfaces
.implements Le/a/a/c/a7;
.implements Landroid/view/ViewTreeObserver$OnPreDrawListener;


# static fields
.field public static final synthetic j0:I


# instance fields
.field public final A:Ls1/g;

.field public B:Lcom/truecaller/ui/view/TintedTextView;

.field public C:Ljava/lang/String;

.field public D:Z

.field public E:Z

.field public J:Z

.field public K:I

.field public L:I

.field public final M:I

.field public final N:I

.field public final O:Ls1/g;

.field public P:Le/a/b0/a/b/a;

.field public Q:Ljava/lang/String;

.field public R:I

.field public S:F

.field public T:I

.field public U:I

.field public final V:Ls1/g;

.field public W:Landroid/animation/ValueAnimator;

.field public final X:Ls1/g;

.field public Y:Z

.field public final Z:Ls1/f0/h;

.field public final a:Ls1/g;

.field public final b:Ls1/g;

.field public final c:Ls1/g;

.field public final d:Ls1/g;

.field public final e:Ls1/g;

.field public final f:Ls1/g;

.field public final g:Ls1/g;

.field public g0:Le/a/a/c/a/k;

.field public final h:Ls1/g;

.field public h0:Le/a/a/c/n8/a;

.field public final i:Ls1/g;

.field public final i0:Le/a/a/c/k/a/j;

.field public final j:Ls1/g;

.field public final k:Ls1/g;

.field public final l:Ls1/g;

.field public final m:Ls1/g;

.field public final n:Ls1/g;

.field public final o:Ls1/g;

.field public final p:Ls1/g;

.field public final q:Ls1/g;

.field public final r:Ls1/g;

.field public final s:Ls1/g;

.field public final t:Ls1/g;

.field public final u:Ls1/g;

.field public final v:Ls1/g;

.field public final w:Ls1/g;

.field public final x:Ls1/g;

.field public final y:Ls1/g;

.field public final z:Ls1/g;


# direct methods
.method public constructor <init>(Landroid/view/View;Le/a/a/c/k/a/j;)V
    .locals 4

    const-string v0, "itemView"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Landroidx/recyclerview/widget/RecyclerView$c0;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    const p2, 0x7f0a0488

    .line 2
    invoke-static {p1, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/a/c/d;->a:Ls1/g;

    const p2, 0x7f0a0484

    .line 3
    invoke-static {p1, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/a/c/d;->b:Ls1/g;

    const p2, 0x7f0a0f2c

    .line 4
    invoke-static {p1, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/a/c/d;->c:Ls1/g;

    const p2, 0x7f0a0f2b

    .line 5
    invoke-static {p1, p2}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object p2

    iput-object p2, p0, Le/a/a/c/d;->d:Ls1/g;

    const v0, 0x7f0a02fa

    .line 6
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->e:Ls1/g;

    const v0, 0x7f0a07e2

    .line 7
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->f:Ls1/g;

    const v0, 0x7f0a0bbc

    .line 8
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->g:Ls1/g;

    const v0, 0x7f0a13f3

    .line 9
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->h:Ls1/g;

    const v0, 0x7f0a00fa

    .line 10
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->i:Ls1/g;

    const v0, 0x7f0a0ddf

    .line 11
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->j:Ls1/g;

    const v0, 0x7f0a03be

    .line 12
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->k:Ls1/g;

    const v0, 0x7f0a11a0

    .line 13
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->l:Ls1/g;

    const v0, 0x7f0a0c23

    .line 14
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->m:Ls1/g;

    const v0, 0x7f0a1183

    .line 15
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->n:Ls1/g;

    const v0, 0x7f0a1184

    .line 16
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->o:Ls1/g;

    const v0, 0x7f0a0243

    .line 17
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->p:Ls1/g;

    const v0, 0x7f0a0244

    .line 18
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->q:Ls1/g;

    const v0, 0x7f0a08e1

    .line 19
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->r:Ls1/g;

    const v0, 0x7f0a08e2

    .line 20
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->s:Ls1/g;

    const v0, 0x7f0a0954

    .line 21
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->t:Ls1/g;

    const v0, 0x7f0a0955

    .line 22
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->u:Ls1/g;

    const v0, 0x7f0a0956

    .line 23
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->v:Ls1/g;

    const v0, 0x7f0a0957

    .line 24
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->w:Ls1/g;

    const v0, 0x7f0a0b18

    .line 25
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->x:Ls1/g;

    const v0, 0x7f0a123d

    .line 26
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->y:Ls1/g;

    const v0, 0x7f0a11ac

    .line 27
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->z:Ls1/g;

    const v0, 0x7f0a0dbe

    .line 28
    invoke-static {p1, v0}, Le/a/p5/s0/f;->s(Landroid/view/View;I)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->A:Ls1/g;

    .line 29
    new-instance v0, Lcom/truecaller/ui/view/TintedTextView;

    new-instance v1, Landroid/view/ContextThemeWrapper;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f13056d

    invoke-direct {v1, v2, v3}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    invoke-direct {v0, v1}, Lcom/truecaller/ui/view/TintedTextView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/a/a/c/d;->B:Lcom/truecaller/ui/view/TintedTextView;

    const/4 v0, 0x1

    .line 30
    iput-boolean v0, p0, Le/a/a/c/d;->E:Z

    .line 31
    iput-boolean v0, p0, Le/a/a/c/d;->J:Z

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04058e

    invoke-static {v0, v1}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v0

    iput v0, p0, Le/a/a/c/d;->M:I

    .line 33
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 34
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v1, 0x7f060635

    .line 35
    invoke-static {v0, v1}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v0

    .line 36
    iput v0, p0, Le/a/a/c/d;->N:I

    .line 37
    new-instance v0, Le/a/a/c/d$b0;

    invoke-direct {v0, p1}, Le/a/a/c/d$b0;-><init>(Landroid/view/View;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->O:Ls1/g;

    .line 38
    new-instance v0, Le/a/b0/a/b/a;

    new-instance v1, Le/a/p5/i0;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "itemView.context"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2}, Le/a/p5/i0;-><init>(Landroid/content/Context;)V

    invoke-direct {v0, v1}, Le/a/b0/a/b/a;-><init>(Le/a/p5/h0;)V

    iput-object v0, p0, Le/a/a/c/d;->P:Le/a/b0/a/b/a;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f07035d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v0

    iput v0, p0, Le/a/a/c/d;->R:I

    .line 40
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070492

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    iput v0, p0, Le/a/a/c/d;->S:F

    .line 41
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701cf

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    iput v0, p0, Le/a/a/c/d;->T:I

    .line 42
    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f0701b7

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const/high16 v2, 0x41600000    # 14.0f

    invoke-static {v1, v2}, Le/a/b0/q/o;->h(Landroid/content/Context;F)I

    move-result v1

    iget v2, p0, Le/a/a/c/d;->T:I

    mul-int/lit8 v3, v2, 0x2

    add-int/2addr v3, v1

    mul-int/lit8 v3, v3, 0x2

    add-int/2addr v3, v0

    add-int/2addr v3, v2

    iput v3, p0, Le/a/a/c/d;->U:I

    .line 43
    new-instance v0, Le/a/a/c/d$c0;

    invoke-direct {v0, p0, p1}, Le/a/a/c/d$c0;-><init>(Le/a/a/c/d;Landroid/view/View;)V

    invoke-static {v0}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object v0

    iput-object v0, p0, Le/a/a/c/d;->V:Ls1/g;

    .line 44
    new-instance v1, Le/a/a/c/d$d;

    invoke-direct {v1, p1}, Le/a/a/c/d$d;-><init>(Landroid/view/View;)V

    invoke-static {v1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/a/c/d;->X:Ls1/g;

    .line 45
    new-instance p1, Ls1/f0/h;

    const-string v1, "(\\btruecaller://[^\\s]+)"

    invoke-direct {p1, v1}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Le/a/a/c/d;->Z:Ls1/f0/h;

    .line 46
    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/truecaller/common/ui/avatar/AvatarXView;

    if-eqz p1, :cond_0

    .line 47
    iget-object p2, p0, Le/a/a/c/d;->P:Le/a/b0/a/b/a;

    invoke-virtual {p1, p2}, Lcom/truecaller/common/ui/avatar/AvatarXView;->setPresenter(Le/a/b0/a/b/c;)V

    .line 48
    :cond_0
    invoke-virtual {p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 49
    check-cast v0, Ls1/n;

    invoke-virtual {v0}, Ls1/n;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/truecaller/utils/ui/LinkClickMovementMethod;

    .line 50
    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public static final N4(Le/a/a/c/d;ZLandroid/view/View;)V
    .locals 2

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a066f

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "view.findViewById<View>(R.id.duration_indicator)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    const/4 v1, 0x4

    .line 3
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a066b

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p2, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public static final O4(Le/a/a/c/d;ZLandroid/view/View;)V
    .locals 1

    .line 1
    invoke-static {p0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const v0, 0x7f0a13f8

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    const v0, 0x7f0a13f9

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, p2, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method


# virtual methods
.method public A1(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->a5()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Le/a/a/c/d$f0;

    invoke-direct {v1, p0, p1}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public A3(Ljava/lang/String;Landroid/net/Uri;IILe/a/a/c/c3;)V
    .locals 6

    const-string p1, "previewUri"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "params"

    invoke-static {p5, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p5, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    iget-boolean v0, p5, Le/a/a/c/c3;->k:Z

    invoke-interface {p1, v0}, Le/a/a/c/t7;->d(Z)Le/a/a/c/r8/c;

    move-result-object p1

    .line 2
    iget-object p1, p1, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1, p5}, Le/a/a/c/d;->m5(Landroid/view/View;Le/a/a/c/c3;)V

    const v0, 0x7f0a066f

    .line 4
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "frame.findViewById<TextV\u2026(R.id.duration_indicator)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 5
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v1, -0x2

    invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0, p1}, Le/a/a/c/d;->P4(Landroid/view/View;)V

    .line 8
    new-instance v0, Le/a/a/c/d$r;

    invoke-direct {v0, p0, p5}, Le/a/a/c/d$r;-><init>(Le/a/a/c/d;Le/a/a/c/c3;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v0, Le/a/a/c/d$s;

    invoke-direct {v0, p0}, Le/a/a/c/d$s;-><init>(Le/a/a/c/d;)V

    .line 10
    new-instance v1, Le/a/a/c/f7;

    invoke-direct {v1, p0, v0}, Le/a/a/c/f7;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {p1, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move v4, p4

    move-object v5, p5

    .line 11
    invoke-virtual/range {v0 .. v5}, Le/a/a/c/d;->p5(Landroid/view/View;Landroid/net/Uri;IILe/a/a/c/c3;)V

    .line 12
    invoke-virtual {p0, p1, p5}, Le/a/a/c/d;->r5(Landroid/view/View;Le/a/a/c/c3;)V

    return-void
.end method

.method public B()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/a/c/d;->D:Z

    return v0
.end method

.method public C0(Ljava/lang/String;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->f5()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 2
    :cond_0
    iput-object p1, p0, Le/a/a/c/d;->Q:Ljava/lang/String;

    return-void
.end method

.method public C3(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->h5()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public D0(Z)V
    .locals 3

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const-string p1, "itemView"

    invoke-static {v0, p1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string v2, "itemView.context"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    const v2, 0x7f070364

    invoke-virtual {p1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    invoke-virtual {v0, v1, p1, v1, v1}, Landroid/view/View;->setPaddingRelative(IIII)V

    return-void
.end method

.method public D2(Lcom/truecaller/messaging/data/types/ReplySnippet;Ljava/lang/String;Ls1/z/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/truecaller/messaging/data/types/ReplySnippet;",
            "Ljava/lang/String;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "sender"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/c/d;->P2(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/c/d;->X4()Landroid/view/ViewGroup;

    move-result-object v1

    const v2, 0x7f0a1387

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/conversation/MessageSnippetView;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/truecaller/messaging/conversation/MessageSnippetView;

    :goto_0
    if-eqz v1, :cond_1

    .line 3
    sget v2, Lcom/truecaller/messaging/conversation/MessageSnippetView;->i:I

    .line 4
    invoke-virtual {v1, p1, p2, v0}, Lcom/truecaller/messaging/conversation/MessageSnippetView;->e(Lcom/truecaller/messaging/data/types/ReplySnippet;Ljava/lang/String;Z)V

    .line 5
    new-instance p1, Le/a/a/c/d$f0;

    invoke-direct {p1, p0, p3}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v1, p1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    return-void
.end method

.method public D3(Landroid/net/Uri;IILe/a/a/c/c3;)V
    .locals 7

    const-string v0, "videoFrame"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p4, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    iget-boolean v1, p4, Le/a/a/c/c3;->k:Z

    invoke-interface {v0, v1}, Le/a/a/c/t7;->d(Z)Le/a/a/c/r8/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p4}, Le/a/a/c/d;->o5(Landroid/view/View;Le/a/a/c/c3;)V

    .line 4
    invoke-virtual {p0, v0, p4}, Le/a/a/c/d;->m5(Landroid/view/View;Le/a/a/c/c3;)V

    .line 5
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0, v0}, Le/a/a/c/d;->P4(Landroid/view/View;)V

    .line 8
    new-instance v1, Le/a/a/c/d$x;

    invoke-direct {v1, p0}, Le/a/a/c/d$x;-><init>(Le/a/a/c/d;)V

    .line 9
    new-instance v2, Le/a/a/c/f7;

    invoke-direct {v2, p0, v1}, Le/a/a/c/f7;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 10
    invoke-virtual/range {v1 .. v6}, Le/a/a/c/d;->p5(Landroid/view/View;Landroid/net/Uri;IILe/a/a/c/c3;)V

    const p1, 0x7f0a0099

    .line 11
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageButton;

    .line 12
    iget-boolean p2, p4, Le/a/a/c/c3;->n:Z

    const/4 p3, 0x4

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_0

    const p2, 0x7f08037c

    .line 13
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 15
    :cond_0
    iget-boolean p2, p4, Le/a/a/c/c3;->o:Z

    if-eqz p2, :cond_2

    .line 16
    iget-boolean p2, p4, Le/a/a/c/c3;->m:Z

    if-eqz p2, :cond_1

    const p2, 0x7f08037d

    goto :goto_0

    :cond_1
    const p2, 0x7f08037b

    :goto_0
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 17
    new-instance p2, Lh;

    invoke-direct {p2, v1, p0, p4}, Lh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance p2, Lh;

    const/4 v3, 0x1

    invoke-direct {p2, v3, p0, p4}, Lh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    .line 19
    :cond_2
    iget-boolean p2, p4, Le/a/a/c/c3;->C:Z

    if-eqz p2, :cond_4

    .line 20
    iget-boolean p2, p4, Le/a/a/c/c3;->D:Z

    if-eqz p2, :cond_3

    const p2, 0x7f080429

    goto :goto_1

    :cond_3
    move p2, v1

    :goto_1
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 21
    new-instance p2, Lh;

    const/4 v3, 0x2

    invoke-direct {p2, v3, p0, p4}, Lh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_2

    :cond_4
    const p2, 0x7f0805b5

    .line 23
    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 24
    new-instance p2, Lh;

    const/4 v3, 0x3

    invoke-direct {p2, v3, p0, p4}, Lh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, p2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    new-instance p2, Lh;

    invoke-direct {p2, p3, p0, p4}, Lh;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_2
    const p2, 0x7f0a10c0

    .line 26
    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v3, "imageStatusText"

    .line 27
    invoke-static {p2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, p4, Le/a/a/c/c3;->x:Ljava/lang/String;

    invoke-virtual {p2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    iget-boolean p2, p4, Le/a/a/c/c3;->l:Z

    const-string v3, "actionButton"

    if-nez p2, :cond_5

    .line 29
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    goto :goto_3

    .line 30
    :cond_5
    invoke-static {p1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p1, p3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 31
    invoke-virtual {p1, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    const p1, 0x7f0a0b4c

    .line 32
    invoke-virtual {v0, p1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Lcom/truecaller/ui/components/CyclicProgressBar;

    const-string p2, "progress"

    .line 33
    invoke-static {p1, p2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean p2, p4, Le/a/a/c/c3;->l:Z

    if-nez p2, :cond_6

    iget-boolean p2, p4, Le/a/a/c/c3;->C:Z

    if-eqz p2, :cond_7

    :cond_6
    move p3, v1

    :cond_7
    invoke-virtual {p1, p3}, Landroid/view/View;->setVisibility(I)V

    return-void
.end method

.method public F()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->C:Ljava/lang/String;

    return-object v0
.end method

.method public F1()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->g5()Landroid/view/ViewGroup;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public F4(ZZ)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->l:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 2
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    if-eqz p2, :cond_0

    .line 3
    iget-object p1, p0, Le/a/a/c/d;->O:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iput p1, p0, Le/a/a/c/d;->K:I

    .line 5
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget v0, p0, Le/a/a/c/d;->L:I

    invoke-static {v0, p1}, Ln3/k/c/a;->g(II)I

    move-result p1

    invoke-virtual {p2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public I0(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->m:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public I2(Le/a/a/c/c3;Z)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->h5()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1, p2}, Le/a/a/c/d;->R4(Le/a/a/c/c3;Z)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 3
    iget p2, p1, Le/a/a/c/c3;->p:I

    invoke-virtual {v0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 4
    iget p2, p1, Le/a/a/c/c3;->j:I

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object p2

    aget-object p2, p2, v1

    if-eqz p2, :cond_0

    iget v0, p1, Le/a/a/c/c3;->j:I

    invoke-virtual {p2, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 6
    :cond_0
    iget-object p2, p0, Le/a/a/c/d;->B:Lcom/truecaller/ui/view/TintedTextView;

    const/4 v0, 0x1

    .line 7
    invoke-virtual {p0, p1, v0}, Le/a/a/c/d;->R4(Le/a/a/c/c3;Z)Landroid/text/SpannableStringBuilder;

    move-result-object v0

    .line 8
    invoke-virtual {p2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget v0, p1, Le/a/a/c/c3;->j:I

    invoke-virtual {p2, v0}, Lcom/truecaller/ui/view/TintedTextView;->setTextColor(I)V

    .line 10
    iget p1, p1, Le/a/a/c/c3;->p:I

    .line 11
    invoke-virtual {p2, p1, v1, v1, v1}, Landroidx/appcompat/widget/AppCompatTextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public K0(Le/a/a/c/c3;Ljava/lang/String;F)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    iget-boolean p1, p1, Le/a/a/c/c3;->k:Z

    invoke-interface {v0, p1}, Le/a/a/c/t7;->e(Z)Le/a/a/c/r8/c;

    move-result-object p1

    .line 2
    iget-object p1, p1, Le/a/a/c/r8/c;->a:Landroid/view/View;

    const v0, 0x7f0a0488

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    .line 4
    invoke-virtual {v0, p3}, Lcom/truecaller/android/truemoji/widget/EmojiTextView;->setEmojiScale(F)V

    const-string p3, "emojiTextView"

    .line 5
    invoke-static {v0, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2}, Le/a/b0/q/e0;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 6
    new-instance p2, Le/a/a/c/d$g;

    invoke-direct {p2, p0}, Le/a/a/c/d$g;-><init>(Le/a/a/c/d;)V

    .line 7
    new-instance p3, Le/a/a/c/d$f0;

    invoke-direct {p3, p0, p2}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    new-instance p2, Le/a/a/c/d$h;

    invoke-direct {p2, p0}, Le/a/a/c/d$h;-><init>(Le/a/a/c/d;)V

    .line 9
    new-instance p3, Le/a/a/c/f7;

    invoke-direct {p3, p0, p2}, Le/a/a/c/f7;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, p3}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 10
    invoke-virtual {p0, p1}, Le/a/a/c/d;->P4(Landroid/view/View;)V

    return-void
.end method

.method public L1(Le/a/a/c/l6;Lcom/truecaller/messaging/data/types/Message;)V
    .locals 4

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "message"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->t:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    .line 2
    iget-object v3, p1, Le/a/a/c/l6;->a:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    move v3, v1

    goto :goto_0

    :cond_0
    move v3, v2

    .line 3
    :goto_0
    invoke-virtual {p0, v0, v3}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 4
    iget-object v3, p1, Le/a/a/c/l6;->a:Landroid/graphics/drawable/Drawable;

    .line 5
    invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 6
    :cond_1
    iget-object v0, p0, Le/a/a/c/d;->w:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_3

    .line 7
    iget-object v3, p1, Le/a/a/c/l6;->b:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    move v1, v2

    .line 8
    :goto_1
    invoke-virtual {p0, v0, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 9
    iget-object v1, p1, Le/a/a/c/l6;->b:Landroid/graphics/drawable/Drawable;

    .line 10
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 11
    :cond_3
    iget-object v0, p0, Le/a/a/c/d;->v:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_4

    .line 12
    iget-object v1, p1, Le/a/a/c/l6;->c:Ljava/lang/String;

    .line 13
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 14
    :cond_4
    iget-object v0, p0, Le/a/a/c/d;->u:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_5

    .line 15
    iget-object p1, p1, Le/a/a/c/l6;->d:Ljava/lang/String;

    .line 16
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 17
    :cond_5
    invoke-virtual {p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object p1

    if-eqz p1, :cond_6

    new-instance v0, Le/a/a/c/d$n;

    invoke-direct {v0, p0, p2}, Le/a/a/c/d$n;-><init>(Le/a/a/c/d;Lcom/truecaller/messaging/data/types/Message;)V

    invoke-virtual {p1, v0}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_6
    return-void
.end method

.method public M2(DDLjava/lang/String;I)V
    .locals 12

    move-object v8, p0

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->U4()Landroid/widget/TextView;

    move-result-object v9

    const/4 v10, 0x1

    if-eqz v9, :cond_0

    const v0, 0x7f0817d2

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v9, v0, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 3
    iget-object v0, v8, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1201de

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v9, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    new-instance v11, Le/a/a/c/d$i;

    move-object v0, v11

    move-object v1, p0

    move-wide v2, p1

    move-wide v4, p3

    move-object/from16 v6, p5

    move/from16 v7, p6

    invoke-direct/range {v0 .. v7}, Le/a/a/c/d$i;-><init>(Le/a/a/c/d;DDLjava/lang/String;I)V

    invoke-virtual {v9, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 5
    invoke-virtual {p0, v9, v10}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 6
    :cond_0
    invoke-virtual {p0}, Le/a/a/c/d;->V4()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v10}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public N1()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/c/d;->I0(Z)V

    return-void
.end method

.method public N2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->U4()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0, v0, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/c/d;->V4()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public P2(Z)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->X4()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a1387

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/MessageSnippetView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/MessageSnippetView;

    :goto_0
    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/conversation/MessageSnippetView;->setDismissActionVisible(Z)V

    :cond_1
    return-void
.end method

.method public final P4(Landroid/view/View;)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->X4()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 3
    invoke-virtual {p1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type android.view.ViewGroup.MarginLayoutParams"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    iget v1, p0, Le/a/a/c/d;->R:I

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-virtual {p1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    :cond_0
    return-void
.end method

.method public final Q4(Landroid/view/View;Le/a/a/c/c3;II)V
    .locals 7

    .line 1
    invoke-virtual {p0, p1, p2}, Le/a/a/c/d;->m5(Landroid/view/View;Le/a/a/c/c3;)V

    const v0, 0x7f0a096b

    .line 2
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 3
    iget-object v1, p2, Le/a/a/c/c3;->b:Lcom/truecaller/messaging/conversation/AttachmentType;

    iget v1, v1, Lcom/truecaller/messaging/conversation/AttachmentType;->icon:I

    invoke-virtual {v0, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 4
    iget-object v1, p2, Le/a/a/c/c3;->b:Lcom/truecaller/messaging/conversation/AttachmentType;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x4

    if-eq v1, v4, :cond_3

    .line 5
    iget-object v1, p2, Le/a/a/c/c3;->A:Ljava/lang/String;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move v1, v3

    goto :goto_1

    :cond_1
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v4, p2, Le/a/a/c/c3;->b:Lcom/truecaller/messaging/conversation/AttachmentType;

    iget v4, v4, Lcom/truecaller/messaging/conversation/AttachmentType;->title:I

    invoke-virtual {v1, v4}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    goto :goto_2

    :cond_2
    iget-object v1, p2, Le/a/a/c/c3;->A:Ljava/lang/String;

    :goto_2
    const-string v4, "if (params.fileTitle.isN\u2026le) else params.fileTitle"

    invoke-static {v1, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_3

    .line 6
    :cond_3
    iget-object v1, p2, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    const-string v4, "null cannot be cast to non-null type com.truecaller.messaging.data.types.VCardEntity"

    invoke-static {v1, v4}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/truecaller/messaging/data/types/VCardEntity;

    .line 7
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "view.context"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v4}, Le/a/c/p/a;->V0(Lcom/truecaller/messaging/data/types/VCardEntity;Landroid/content/Context;)Ljava/lang/CharSequence;

    move-result-object v1

    :goto_3
    const v4, 0x7f0a1245

    .line 8
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    const-string v6, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v5, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v5, Landroid/widget/TextView;

    invoke-virtual {v5, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 9
    iget-boolean v1, p2, Le/a/a/c/c3;->k:Z

    if-eqz v1, :cond_4

    .line 10
    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    invoke-static {v1, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {v1, p4}, Landroid/widget/TextView;->setTextColor(I)V

    const-string p4, "iconView"

    .line 11
    invoke-static {v0, p4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object p4

    const v1, 0x7f08180d

    .line 12
    sget-object v4, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {p4, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p4

    .line 14
    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    new-instance p4, Landroid/content/res/ColorStateList;

    new-array v1, v2, [[I

    new-array v4, v3, [I

    aput-object v4, v1, v3

    new-array v2, v2, [I

    iget v4, p2, Le/a/a/c/c3;->g:I

    aput v4, v2, v3

    invoke-direct {p4, v1, v2}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 16
    iget p4, p2, Le/a/a/c/c3;->h:I

    invoke-static {p4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p4

    invoke-virtual {v0, p4}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 17
    :cond_4
    new-instance p4, Le/a/a/c/d$y;

    invoke-direct {p4, p0, p2}, Le/a/a/c/d$y;-><init>(Le/a/a/c/d;Le/a/a/c/c3;)V

    invoke-virtual {p1, p4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 18
    new-instance p4, Le/a/a/c/d$z;

    invoke-direct {p4, p0}, Le/a/a/c/d$z;-><init>(Le/a/a/c/d;)V

    .line 19
    new-instance v0, Le/a/a/c/f7;

    invoke-direct {v0, p0, p4}, Le/a/a/c/f7;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    const p4, 0x7f0a1022

    .line 20
    invoke-virtual {p1, p4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p4

    check-cast p4, Landroid/widget/TextView;

    const/16 v0, 0x8

    if-eqz p4, :cond_7

    .line 21
    iget-object v1, p2, Le/a/a/c/c3;->B:Ljava/lang/String;

    invoke-static {v1}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_6

    iget-object v1, p2, Le/a/a/c/c3;->b:Lcom/truecaller/messaging/conversation/AttachmentType;

    sget-object v2, Lcom/truecaller/messaging/conversation/AttachmentType;->VCARD:Lcom/truecaller/messaging/conversation/AttachmentType;

    if-ne v1, v2, :cond_5

    goto :goto_4

    :cond_5
    move v1, v3

    goto :goto_5

    :cond_6
    :goto_4
    move v1, v0

    :goto_5
    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 22
    iget-object v1, p2, Le/a/a/c/c3;->B:Ljava/lang/String;

    invoke-virtual {p4, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 23
    invoke-virtual {p4, p3}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_7
    const v1, 0x7f0a131a

    .line 24
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    if-eqz v1, :cond_d

    .line 25
    iget-object v2, p2, Le/a/a/c/c3;->z:Ljava/lang/String;

    invoke-static {v2}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_8

    goto :goto_6

    :cond_8
    move v0, v3

    :goto_6
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 26
    iget-object v0, p2, Le/a/a/c/c3;->z:Ljava/lang/String;

    if-eqz v0, :cond_9

    sget-object v2, Ljava/util/Locale;->ENGLISH:Ljava/util/Locale;

    const-string v4, "Locale.ENGLISH"

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    const-string v2, "(this as java.lang.String).toUpperCase(locale)"

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_7

    :cond_9
    const/4 v0, 0x0

    :goto_7
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 27
    invoke-virtual {v1, p3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 28
    iget-object p3, p2, Le/a/a/c/c3;->B:Ljava/lang/String;

    invoke-static {p3}, Lw3/c/a/a/a/h;->j(Ljava/lang/CharSequence;)Z

    move-result p3

    if-nez p3, :cond_b

    iget-object p2, p2, Le/a/a/c/c3;->b:Lcom/truecaller/messaging/conversation/AttachmentType;

    sget-object p3, Lcom/truecaller/messaging/conversation/AttachmentType;->VCARD:Lcom/truecaller/messaging/conversation/AttachmentType;

    if-ne p2, p3, :cond_a

    goto :goto_8

    :cond_a
    const p2, 0x7f0806fb

    .line 29
    invoke-virtual {v1, v3, v3, p2, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    goto :goto_9

    .line 30
    :cond_b
    :goto_8
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V

    :goto_9
    if-eqz p4, :cond_c

    .line 31
    invoke-static {p4}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result p2

    if-eqz p2, :cond_c

    .line 32
    invoke-virtual {v1, v3, v3, v3, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    goto :goto_a

    .line 33
    :cond_c
    invoke-virtual {v1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object p2

    const-string p3, "typeView.context"

    invoke-static {p2, p3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const p3, 0x7f07035e

    invoke-virtual {p2, p3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p2

    invoke-virtual {v1, v3, v3, p2, v3}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 34
    :cond_d
    :goto_a
    invoke-virtual {p0, p1}, Le/a/a/c/d;->P4(Landroid/view/View;)V

    return-void
.end method

.method public R2(Landroid/net/Uri;IILe/a/a/c/c3;)V
    .locals 7

    const-string v0, "image"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p4, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    iget-boolean v1, p4, Le/a/a/c/c3;->k:Z

    invoke-interface {v0, v1}, Le/a/a/c/t7;->d(Z)Le/a/a/c/r8/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p4}, Le/a/a/c/d;->m5(Landroid/view/View;Le/a/a/c/c3;)V

    const v1, 0x7f0a066f

    .line 4
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    const-string v2, "frame.findViewById<TextV\u2026(R.id.duration_indicator)"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 5
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x2

    invoke-direct {v1, v2, v2}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    invoke-virtual {v0, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    invoke-virtual {p0, v0}, Le/a/a/c/d;->P4(Landroid/view/View;)V

    .line 8
    new-instance v1, Le/a/a/c/d$o;

    invoke-direct {v1, p0, p4}, Le/a/a/c/d$o;-><init>(Le/a/a/c/d;Le/a/a/c/c3;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    new-instance v1, Le/a/a/c/d$p;

    invoke-direct {v1, p0}, Le/a/a/c/d$p;-><init>(Le/a/a/c/d;)V

    .line 10
    new-instance v2, Le/a/a/c/f7;

    invoke-direct {v2, p0, v1}, Le/a/a/c/f7;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    move-object v1, p0

    move-object v2, v0

    move-object v3, p1

    move v4, p2

    move v5, p3

    move-object v6, p4

    .line 11
    invoke-virtual/range {v1 .. v6}, Le/a/a/c/d;->p5(Landroid/view/View;Landroid/net/Uri;IILe/a/a/c/c3;)V

    .line 12
    invoke-virtual {p0, v0, p4}, Le/a/a/c/d;->r5(Landroid/view/View;Le/a/a/c/c3;)V

    return-void
.end method

.method public R3(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public final R4(Le/a/a/c/c3;Z)Landroid/text/SpannableStringBuilder;
    .locals 8

    .line 1
    new-instance v6, Landroid/text/SpannableStringBuilder;

    invoke-direct {v6}, Landroid/text/SpannableStringBuilder;-><init>()V

    const-string v0, " "

    const-string v1, "itemView"

    if-eqz p2, :cond_3

    .line 2
    iget p2, p1, Le/a/a/c/c3;->q:I

    const-string v7, " \u2022 "

    if-lez p2, :cond_0

    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p1, Le/a/a/c/c3;->q:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p2

    invoke-virtual {p2, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 3
    :cond_0
    iget p2, p1, Le/a/a/c/c3;->F:I

    if-lez p2, :cond_4

    .line 4
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p1, Le/a/a/c/c3;->F:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 5
    iget p2, p1, Le/a/a/c/c3;->G:I

    if-lez p2, :cond_1

    .line 6
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 7
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v2, p1, Le/a/a/c/c3;->G:I

    invoke-virtual {p2, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v6, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    :cond_1
    iget p2, p1, Le/a/a/c/c3;->e:I

    if-lez p2, :cond_2

    .line 9
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 10
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p1, Le/a/a/c/c3;->e:I

    .line 11
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {p2, v0}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_2

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    move-object v1, v6

    .line 13
    invoke-static/range {v0 .. v5}, Le/a/p5/s0/g;->i(Landroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;Ljava/lang/Integer;Landroid/graphics/Paint$FontMetricsInt;ZI)V

    .line 14
    :cond_2
    invoke-virtual {v6, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_0

    .line 15
    :cond_3
    iget p2, p1, Le/a/a/c/c3;->e:I

    if-lez p2, :cond_4

    .line 16
    invoke-virtual {v6, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 17
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p2

    iget v0, p1, Le/a/a/c/c3;->e:I

    .line 18
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 19
    invoke-static {p2, v0}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x1

    const/4 v5, 0x6

    move-object v1, v6

    .line 20
    invoke-static/range {v0 .. v5}, Le/a/p5/s0/g;->i(Landroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;Ljava/lang/Integer;Landroid/graphics/Paint$FontMetricsInt;ZI)V

    .line 21
    :cond_4
    :goto_0
    iget-object p1, p1, Le/a/a/c/c3;->i:Ljava/lang/String;

    invoke-virtual {v6, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    return-object v6
.end method

.method public final S4(Ljava/lang/Object;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")",
            "Ljava/util/List<",
            "Le/a/a/c/r8/c;",
            ">;"
        }
    .end annotation

    if-eqz p1, :cond_1

    .line 1
    instance-of v0, p1, Ljava/util/List;

    if-nez v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    check-cast p1, Ljava/util/List;

    return-object p1

    .line 3
    :cond_1
    :goto_0
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public T0(F)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/truecaller/android/truemoji/widget/EmojiTextView;->setEmojiScale(F)V

    :cond_0
    return-void
.end method

.method public T1(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public T3(Le/a/a/c/c3;II)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    iget-boolean v1, p1, Le/a/a/c/c3;->k:Z

    invoke-interface {v0, v1}, Le/a/a/c/t7;->g(Z)Le/a/a/c/r8/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Le/a/a/c/d;->Q4(Landroid/view/View;Le/a/a/c/c3;II)V

    .line 4
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->k5(Landroid/view/View;Le/a/a/c/c3;)V

    .line 5
    new-instance p1, Le/a/a/c/d$t;

    invoke-direct {p1, p0}, Le/a/a/c/d$t;-><init>(Le/a/a/c/d;)V

    .line 6
    new-instance p2, Le/a/a/c/d$f0;

    invoke-direct {p2, p0, p1}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final T4()Landroid/widget/FrameLayout;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->i:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public final U4()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->p:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public V0(Landroid/net/Uri;ILe/a/a/c/c3;)V
    .locals 1

    const-string v0, "image"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p2, p3}, Le/a/a/c/d;->R2(Landroid/net/Uri;IILe/a/a/c/c3;)V

    return-void
.end method

.method public V3(Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;Le/a/c/r/j/s;Ljava/lang/Integer;)V
    .locals 9

    const-string p4, "message"

    invoke-static {p1, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "layoutStyle"

    invoke-static {p2, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p4, "layoutState"

    invoke-static {p3, p4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v7

    if-eqz v7, :cond_3

    .line 2
    instance-of p4, v7, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    if-nez p4, :cond_0

    return-void

    .line 3
    :cond_0
    move-object p4, v7

    check-cast p4, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    invoke-virtual {p4}, Landroid/widget/TextView;->getTag()Ljava/lang/Object;

    move-result-object v0

    .line 4
    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 5
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 6
    :cond_1
    invoke-virtual {p4, p1}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->setItem(Lcom/truecaller/messaging/data/types/Message;)V

    .line 7
    iget-object v0, p0, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    instance-of v1, v0, Le/a/a/c/k/a/d;

    if-eqz v1, :cond_2

    check-cast v0, Le/a/a/c/k/a/d;

    .line 8
    iget-wide v1, p1, Lcom/truecaller/messaging/data/types/Message;->a:J

    .line 9
    invoke-interface {v0, v1, v2}, Le/a/a/c/k/a/d;->g(J)Z

    move-result v0

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 10
    :goto_0
    invoke-virtual {p4, p2, p3, v0, p5}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->h(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;ZLjava/lang/Integer;)V

    .line 11
    invoke-virtual {p0, p4}, Le/a/a/c/d;->v5(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;)V

    .line 12
    invoke-virtual {p0, p2, p3, p1, v0}, Le/a/a/c/d;->s5(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;Lcom/truecaller/messaging/data/types/Message;Z)V

    .line 13
    new-instance v8, Le/a/a/c/d$a0;

    move-object v0, v8

    move-object v1, p4

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v7}, Le/a/a/c/d$a0;-><init>(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;Le/a/a/c/d;Lcom/truecaller/messaging/data/types/Message;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;Ljava/lang/Integer;Lcom/truecaller/android/truemoji/widget/EmojiTextView;)V

    invoke-virtual {p4, v8}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->setOnResizeClickListener(Ls1/z/b/l;)V

    :cond_3
    return-void
.end method

.method public final V4()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->q:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public W3(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->T4()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Le/a/a/c/d$f0;

    invoke-direct {v1, p0, p1}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Le/a/a/c/d$f0;

    invoke-direct {v1, p0, p1}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public final W4()Landroid/widget/CheckBox;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->k:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/CheckBox;

    return-object v0
.end method

.method public X0(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->a5()Landroid/widget/TextView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public X3(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;Ljava/lang/String;)V
    .locals 9

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "description"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "type"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "url"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v0, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;->setTitle(Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0, p2}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;->setDescription(Ljava/lang/String;)V

    .line 5
    invoke-virtual {v0, p3, p4}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;->g1(Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;)V

    .line 6
    new-instance v1, Le/a/a/c/d$q;

    move-object v2, v1

    move-object v3, p0

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    move-object v8, p5

    invoke-direct/range {v2 .. v8}, Le/a/a/c/d$q;-><init>(Le/a/a/c/d;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;Lcom/truecaller/messaging/conversation/LinkPreviewType;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;->setOnPlayButtonClickListener(Ls1/z/b/l;)V

    :cond_0
    return-void
.end method

.method public final X4()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->h:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public Y1(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 2

    const-string v0, "item"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    instance-of v1, v0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    if-nez v1, :cond_0

    const/4 v0, 0x0

    :cond_0
    check-cast v0, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;

    if-eqz v0, :cond_1

    .line 2
    invoke-virtual {v0, p1}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->setItem(Lcom/truecaller/messaging/data/types/Message;)V

    .line 3
    invoke-virtual {v0}, Landroid/widget/TextView;->invalidate()V

    :cond_1
    return-void
.end method

.method public final Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->a:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    return-object v0
.end method

.method public Z(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 2

    const-string v0, "title"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "text"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->X4()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a1387

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/MessageSnippetView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/MessageSnippetView;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x1

    .line 2
    invoke-virtual {p0, v1}, Le/a/a/c/d;->P2(Z)V

    .line 3
    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/truecaller/messaging/conversation/MessageSnippetView;->d(Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;I)V

    .line 4
    sget-object p1, Le/a/a/c/d$k;->b:Le/a/a/c/d$k;

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->q5(Landroid/view/View;Ls1/z/b/l;)V

    :cond_1
    return-void
.end method

.method public final Z4()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public a1(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->f5()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 2
    iget-object v0, p0, Le/a/a/c/d;->d:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/common/ui/avatar/AvatarXView;

    .line 3
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public a2(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->f5()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_0
    return-void
.end method

.method public a4(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->W4()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Le/a/a/c/d$f0;

    invoke-direct {v1, p0, p1}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final a5()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->g:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public final b5()Landroid/view/View;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->f:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method public c2(ZZI)V
    .locals 3

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->X4()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a137f

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 3
    invoke-virtual {v0, p3}, Landroid/widget/TextView;->setTextColor(I)V

    if-eqz p2, :cond_1

    const p1, 0x7f080301

    goto :goto_1

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setBackgroundResource(I)V

    .line 5
    invoke-static {p3}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    invoke-static {v0, p1}, Landroid/support/v4/media/session/MediaSessionCompat;->o1(Landroid/widget/TextView;Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingLeft()I

    move-result p1

    .line 7
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingTop()I

    move-result p3

    .line 8
    invoke-virtual {v0}, Landroid/widget/TextView;->getPaddingRight()I

    move-result v1

    .line 9
    invoke-virtual {v0}, Landroid/widget/TextView;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    if-eqz p2, :cond_2

    const p2, 0x7f0704e0

    goto :goto_2

    :cond_2
    const p2, 0x7f0704c3

    :goto_2
    invoke-virtual {v2, p2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result p2

    float-to-int p2, p2

    .line 10
    invoke-virtual {v0, p1, p3, v1, p2}, Landroid/widget/TextView;->setPadding(IIII)V

    :cond_3
    return-void
.end method

.method public final c5()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->A:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public d0(I)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->a5()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(I)V

    :cond_0
    return-void
.end method

.method public d2(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/messaging/data/types/Reaction;Z)V
    .locals 17

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    const-string v3, "message"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_d

    .line 2
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    new-instance v4, Le/a/a/c/d$w;

    invoke-direct {v4, v0, v1}, Le/a/a/c/d$w;-><init>(Le/a/a/c/d;Lcom/truecaller/messaging/data/types/Message;)V

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 4
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "reactionsView.context"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f070493

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v5

    mul-int/lit8 v5, v5, -0x1

    const/4 v6, 0x0

    if-eqz v2, :cond_9

    .line 6
    array-length v8, v2

    move v9, v6

    move v10, v9

    :goto_0
    if-ge v9, v8, :cond_9

    aget-object v11, v2, v9

    add-int/lit8 v12, v10, 0x1

    const-string v13, "null cannot be cast to non-null type android.widget.LinearLayout.LayoutParams"

    const/4 v14, 0x2

    if-ge v10, v14, :cond_8

    .line 7
    iget-object v10, v11, Lcom/truecaller/messaging/data/types/Reaction;->d:Ljava/lang/String;

    if-eqz v10, :cond_7

    const-string v11, "value"

    .line 8
    invoke-static {v10, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v11

    if-nez v11, :cond_0

    const/4 v11, 0x1

    goto :goto_1

    :cond_0
    move v11, v6

    :goto_1
    if-eqz v11, :cond_1

    goto :goto_3

    .line 10
    :cond_1
    sget-object v11, Le/a/t/a/u/i;->a:Ljava/util/concurrent/FutureTask;

    if-eqz v11, :cond_6

    invoke-virtual {v11}, Ljava/util/concurrent/FutureTask;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Le/a/t/a/u/f;

    if-eqz v11, :cond_6

    .line 11
    iget-object v11, v11, Le/a/t/a/u/f;->a:Le/a/t/a/u/c;

    move v14, v6

    .line 12
    :goto_2
    invoke-virtual {v10, v14}, Ljava/lang/String;->codePointAt(I)I

    move-result v15

    .line 13
    invoke-static {v15}, Ljava/lang/Character;->charCount(I)I

    move-result v16

    add-int v14, v16, v14

    .line 14
    invoke-virtual {v10}, Ljava/lang/String;->length()I

    move-result v7

    if-lt v14, v7, :cond_2

    .line 15
    iget-object v7, v11, Le/a/t/a/u/c;->a:Ljava/util/Map;

    .line 16
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Le/a/t/a/u/d;

    goto :goto_4

    .line 17
    :cond_2
    iget-object v7, v11, Le/a/t/a/u/c;->b:Ljava/util/Map;

    .line 18
    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v7, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    move-object v11, v7

    check-cast v11, Le/a/t/a/u/c;

    if-eqz v11, :cond_3

    goto :goto_2

    :cond_3
    :goto_3
    const/4 v7, 0x0

    :goto_4
    if-eqz v7, :cond_4

    .line 19
    invoke-static {v7, v4}, Le/m/d/y/n;->D(Le/a/t/a/u/d;Landroid/content/Context;)I

    move-result v7

    goto :goto_5

    :cond_4
    move v7, v6

    .line 20
    :goto_5
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v10

    const v11, 0x7f0d02a0

    invoke-virtual {v10, v11, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v10

    const-string v11, "null cannot be cast to non-null type android.widget.ImageView"

    invoke-static {v10, v11}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v10, Landroid/widget/ImageView;

    .line 21
    invoke-virtual {v10, v7}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 22
    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v7

    if-lez v7, :cond_5

    .line 23
    invoke-virtual {v10}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v7

    invoke-static {v7, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v7, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 24
    :cond_5
    invoke-virtual {v3, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_6

    .line 25
    :cond_6
    new-instance v1, Ljava/lang/IllegalStateException;

    const-string v2, "Emoji data loader has not been set"

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7
    :goto_6
    add-int/lit8 v9, v9, 0x1

    move v10, v12

    goto/16 :goto_0

    .line 26
    :cond_8
    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v7

    const v8, 0x7f0d02a1

    invoke-virtual {v7, v8, v3, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v7

    const-string v8, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v7, v8}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v7, Landroid/widget/TextView;

    const v8, 0x7f120e7f

    const/4 v9, 0x1

    new-array v10, v9, [Ljava/lang/Object;

    .line 27
    array-length v11, v2

    sub-int/2addr v11, v14

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v10, v6

    invoke-virtual {v4, v8, v10}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v7, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 28
    invoke-virtual {v7}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    invoke-static {v4, v13}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-virtual {v4, v5}, Landroid/widget/LinearLayout$LayoutParams;->setMarginStart(I)V

    .line 29
    invoke-virtual {v3, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    goto :goto_7

    :cond_9
    const/4 v9, 0x1

    :goto_7
    if-eqz v2, :cond_b

    .line 30
    array-length v2, v2

    if-nez v2, :cond_a

    move v2, v9

    goto :goto_8

    :cond_a
    move v2, v6

    :goto_8
    if-eqz v2, :cond_c

    :cond_b
    move v6, v9

    :cond_c
    if-nez v6, :cond_d

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Le/a/a/c/d;->x5(Lcom/truecaller/messaging/data/types/Message;Z)V

    :cond_d
    return-void
.end method

.method public d3(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->s:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f0803ce

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/c/d;->r:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201e1

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/truecaller/messaging/data/types/Message;->D:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Le/a/a/c/d$l;

    invoke-direct {v1, p0, p1}, Le/a/a/c/d$l;-><init>(Le/a/a/c/d;Lcom/truecaller/messaging/data/types/Message;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final d5()Landroid/widget/LinearLayout;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->j:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public e0()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Le/a/a/c/d;->Y:Z

    .line 2
    invoke-virtual {p0}, Le/a/a/c/d;->T4()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_0
    const/4 v0, 0x0

    .line 3
    invoke-virtual {p0, v0}, Le/a/a/c/d;->j5(F)V

    return-void
.end method

.method public e4()V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    :cond_0
    return-void
.end method

.method public final e5()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->z:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public f3(Z)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    .line 2
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public final f5()Lcom/truecaller/android/truemoji/widget/EmojiTextView;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    return-object v0
.end method

.method public final g5()Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->o:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    return-object v0
.end method

.method public h1(Ljava/lang/String;ZZZLcom/truecaller/messaging/conversation/GoogleAttribution;[Lcom/truecaller/messaging/data/types/Mention;)V
    .locals 17

    move-object/from16 v7, p0

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    const-string v0, "contents"

    invoke-static {v3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v8

    if-eqz v8, :cond_e

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {v8, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_6

    .line 3
    :cond_0
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-direct {v0, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    const/4 v1, 0x7

    .line 4
    invoke-static {v0, v1}, Ln3/k/g/f/b;->c(Landroid/text/Spannable;I)Z

    .line 5
    sget-object v1, Lcom/truecaller/messaging/conversation/GoogleAttribution;->TRANSLATED_BY:Lcom/truecaller/messaging/conversation/GoogleAttribution;

    const/4 v2, 0x2

    const/4 v6, 0x0

    const v9, 0x7f0405a1

    const/4 v14, 0x1

    const/4 v10, 0x0

    if-eq v4, v1, :cond_2

    if-eqz v5, :cond_2

    .line 6
    array-length v1, v5

    move v11, v10

    :goto_0
    if-ge v11, v1, :cond_2

    aget-object v12, v5, v11

    .line 7
    invoke-virtual {v12}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v13

    if-lez v13, :cond_1

    invoke-virtual {v12}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v13

    invoke-virtual {v12}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v15

    add-int/2addr v15, v13

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v13

    if-gt v15, v13, :cond_1

    .line 8
    new-instance v13, Le/a/p5/w0/b;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v15

    invoke-static {v15, v9}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v15

    invoke-direct {v13, v15, v6, v2}, Le/a/p5/w0/b;-><init>(ILs1/z/b/a;I)V

    .line 9
    invoke-virtual {v12}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v15

    sub-int/2addr v15, v14

    .line 10
    invoke-virtual {v12}, Lcom/truecaller/messaging/data/types/Mention;->getOffset()I

    move-result v16

    invoke-virtual {v12}, Lcom/truecaller/messaging/data/types/Mention;->getLength()I

    move-result v12

    add-int v12, v12, v16

    .line 11
    invoke-virtual {v0, v13, v15, v12, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_1
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 12
    :cond_2
    iget-object v1, v7, Le/a/a/c/d;->Z:Ls1/f0/h;

    .line 13
    invoke-static {v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v11, "input"

    invoke-static {v3, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v11

    if-ltz v11, :cond_d

    .line 15
    new-instance v11, Ls1/f0/i;

    invoke-direct {v11, v1, v3, v10}, Ls1/f0/i;-><init>(Ls1/f0/h;Ljava/lang/CharSequence;I)V

    sget-object v1, Ls1/f0/j;->j:Ls1/f0/j;

    const-string v12, "seedFunction"

    .line 16
    invoke-static {v11, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v12, "nextFunction"

    invoke-static {v1, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 17
    new-instance v12, Ls1/e0/j;

    invoke-direct {v12, v11, v1}, Ls1/e0/j;-><init>(Ls1/z/b/a;Ls1/z/b/l;)V

    .line 18
    new-instance v1, Ls1/e0/j$a;

    invoke-direct {v1, v12}, Ls1/e0/j$a;-><init>(Ls1/e0/j;)V

    .line 19
    :goto_1
    invoke-virtual {v1}, Ls1/e0/j$a;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_3

    invoke-virtual {v1}, Ls1/e0/j$a;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ls1/f0/f;

    .line 20
    new-instance v12, Le/a/p5/w0/b;

    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v9}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v13

    invoke-direct {v12, v13, v6, v2}, Le/a/p5/w0/b;-><init>(ILs1/z/b/a;I)V

    .line 21
    invoke-interface {v11}, Ls1/f0/f;->a()Ls1/d0/i;

    move-result-object v13

    .line 22
    iget v13, v13, Ls1/d0/g;->a:I

    .line 23
    invoke-interface {v11}, Ls1/f0/f;->a()Ls1/d0/i;

    move-result-object v11

    .line 24
    iget v11, v11, Ls1/d0/g;->b:I

    add-int/2addr v11, v14

    .line 25
    invoke-virtual {v0, v12, v13, v11, v10}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto :goto_1

    .line 26
    :cond_3
    iget-object v1, v7, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getLayoutDirection()I

    move-result v1

    if-ne v1, v14, :cond_6

    .line 27
    sget-object v1, Le/a/b0/q/e0;->a:Ljava/lang/String;

    .line 28
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    if-nez v1, :cond_4

    goto :goto_3

    .line 29
    :cond_4
    invoke-static {}, Le/m/f/a/j;->q()Le/m/f/a/j;

    move-result-object v10

    const/4 v12, 0x0

    .line 30
    invoke-static {v10}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 31
    sget-object v13, Le/m/f/a/j$a;->b:Le/m/f/a/j$a;

    const-wide v1, 0x7fffffffffffffffL

    .line 32
    new-instance v6, Le/m/f/a/g;

    move-object v9, v6

    move-object v11, v0

    move v3, v14

    move-wide v14, v1

    invoke-direct/range {v9 .. v15}, Le/m/f/a/g;-><init>(Le/m/f/a/j;Ljava/lang/CharSequence;Ljava/lang/String;Le/m/f/a/j$a;J)V

    .line 33
    invoke-virtual {v6}, Le/m/f/a/g;->hasNext()Z

    move-result v1

    if-nez v1, :cond_5

    goto :goto_4

    .line 34
    :cond_5
    :goto_2
    invoke-virtual {v6}, Le/m/f/a/g;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    .line 35
    invoke-virtual {v6}, Le/m/f/a/g;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/m/f/a/f;

    .line 36
    iget v2, v1, Le/m/f/a/f;->a:I

    .line 37
    sget-object v9, Le/a/b0/q/e0;->a:Ljava/lang/String;

    invoke-virtual {v0, v2, v9}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 38
    invoke-virtual {v1}, Le/m/f/a/f;->a()I

    move-result v1

    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    add-int/2addr v2, v1

    sget-object v1, Le/a/b0/q/e0;->b:Ljava/lang/String;

    invoke-virtual {v0, v2, v1}, Landroid/text/SpannableStringBuilder;->insert(ILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    goto :goto_2

    :cond_6
    :goto_3
    move v3, v14

    .line 39
    :cond_7
    :goto_4
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, v0}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-nez v4, :cond_8

    goto/16 :goto_5

    .line 40
    :cond_8
    invoke-virtual/range {p5 .. p5}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/16 v2, 0x21

    const/16 v6, 0x11

    const-string v9, "context"

    if-eqz v0, :cond_a

    if-eq v0, v3, :cond_9

    goto/16 :goto_5

    .line 41
    :cond_9
    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/widget/TextView;->getTextSize()F

    move-result v3

    const-string v10, "$this$addTranslatedByGoogle"

    .line 42
    invoke-static {v1, v10}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "\n\n"

    .line 43
    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v9, " "

    .line 44
    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v9, 0x7f040693

    .line 45
    invoke-static {v0, v9}, Le/a/p5/s0/g;->P(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    if-eqz v9, :cond_b

    .line 46
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v10, v3}, Ljava/lang/Math;->max(FF)F

    move-result v3

    .line 47
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v10

    int-to-float v10, v10

    div-float/2addr v10, v3

    float-to-int v10, v10

    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v11

    int-to-float v11, v11

    div-float/2addr v11, v3

    float-to-int v3, v11

    const/4 v11, 0x0

    invoke-virtual {v9, v11, v11, v10, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 48
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v9, v11}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 49
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    add-int/lit8 v9, v9, -0x1

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v1, v3, v9, v10, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 50
    new-instance v3, Le/a/a/c/q8/a;

    const v6, 0x7f0405d8

    .line 51
    invoke-static {v0, v6}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v6

    const/high16 v9, 0x40000000    # 2.0f

    .line 52
    invoke-static {v0, v9}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v9

    const/high16 v10, 0x41200000    # 10.0f

    .line 53
    invoke-static {v0, v10}, Le/a/b0/q/o;->b(Landroid/content/Context;F)I

    move-result v0

    .line 54
    invoke-direct {v3, v6, v9, v0}, Le/a/a/c/q8/a;-><init>(III)V

    .line 55
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    .line 56
    invoke-virtual {v1, v3, v11, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    goto/16 :goto_5

    :cond_a
    const/4 v0, 0x0

    .line 57
    invoke-virtual {v8}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v11, "$this$addTranslationAvailable"

    .line 58
    invoke-static {v1, v11}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v10, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v9, "\n "

    .line 59
    invoke-virtual {v1, v9}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const v9, 0x7f04068f

    .line 60
    invoke-static {v10, v9}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v9

    const v11, 0x7f040690

    .line 61
    invoke-static {v10, v11}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v11

    .line 62
    sget-object v12, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v12, 0x7f080802

    .line 63
    invoke-static {v10, v12}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    if-eqz v12, :cond_b

    .line 64
    invoke-virtual {v12, v11}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    const/high16 v11, 0x3f400000    # 0.75f

    .line 65
    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v13

    int-to-float v13, v13

    mul-float/2addr v13, v11

    float-to-int v13, v13

    invoke-virtual {v12}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v14

    int-to-float v14, v14

    mul-float/2addr v14, v11

    float-to-int v14, v14

    invoke-virtual {v12, v0, v0, v13, v14}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    new-instance v13, Landroid/text/style/ImageSpan;

    invoke-direct {v13, v12, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;I)V

    .line 67
    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    sub-int/2addr v0, v3

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v12

    invoke-virtual {v1, v13, v0, v12, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v0, 0x7f120233

    .line 68
    invoke-virtual {v10, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    const-string v6, "context.getString(R.stri\u2026tionTranslationAvailable)"

    invoke-static {v0, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v6, "  "

    .line 69
    invoke-virtual {v1, v6}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 70
    invoke-virtual {v1, v0}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 71
    new-instance v6, Lcom/truecaller/messaging/conversation/translation/RelativeSizeColorSpan;

    invoke-direct {v6, v11, v9}, Lcom/truecaller/messaging/conversation/translation/RelativeSizeColorSpan;-><init>(FI)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v9

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v10

    sub-int/2addr v9, v10

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v10

    invoke-virtual {v1, v6, v9, v10, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 72
    new-instance v6, Landroid/text/style/StyleSpan;

    invoke-direct {v6, v3}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    sub-int/2addr v3, v0

    invoke-virtual {v1}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v0

    invoke-virtual {v1, v6, v3, v0, v2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 73
    :cond_b
    :goto_5
    invoke-virtual {v8, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 74
    new-instance v9, Le/a/a/c/d$d0;

    move-object v0, v9

    move-object/from16 v1, p0

    move/from16 v2, p2

    move-object/from16 v3, p1

    move-object/from16 v4, p5

    move-object/from16 v5, p6

    move/from16 v6, p3

    invoke-direct/range {v0 .. v6}, Le/a/a/c/d$d0;-><init>(Le/a/a/c/d;ZLjava/lang/String;Lcom/truecaller/messaging/conversation/GoogleAttribution;[Lcom/truecaller/messaging/data/types/Mention;Z)V

    .line 75
    new-instance v0, Le/a/a/c/f7;

    invoke-direct {v0, v7, v9}, Le/a/a/c/f7;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v8, v0}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    :goto_6
    if-eqz p3, :cond_c

    .line 76
    sget-object v0, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;

    sget-object v0, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;->HIDE:Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;

    invoke-static {v8, v0}, Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter;->b(Landroid/widget/TextView;Lcom/truecaller/messaging/conversation/richtext/TextDelimiterFormatter$DelimiterVisibility;)V

    .line 77
    :cond_c
    invoke-virtual {v8}, Landroid/widget/TextView;->requestLayout()V

    goto :goto_7

    .line 78
    :cond_d
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    const-string v1, "Start index out of bounds: "

    const-string v2, ", input length: "

    invoke-static {v1, v10, v2}, Le/d/c/a/a;->E(Ljava/lang/String;ILjava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 79
    :cond_e
    :goto_7
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_f

    invoke-virtual {v0, v7}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_f
    if-eqz p4, :cond_10

    .line 80
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0}, Landroid/widget/TextView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    if-eqz v0, :cond_10

    invoke-virtual {v0, v7}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 81
    :cond_10
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_11

    new-instance v1, Le/a/a/c/d$e0;

    invoke-direct {v1, v7}, Le/a/a/c/d$e0;-><init>(Le/a/a/c/d;)V

    .line 82
    new-instance v2, Le/a/a/c/d$f0;

    invoke-direct {v2, v7, v1}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_11
    return-void
.end method

.method public h4(Z)V
    .locals 2

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/a/c/d;->Y:Z

    .line 2
    invoke-virtual {p0}, Le/a/a/c/d;->W4()Landroid/widget/CheckBox;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Landroid/widget/CheckBox;->setChecked(Z)V

    .line 3
    :cond_0
    invoke-virtual {p0}, Le/a/a/c/d;->T4()Landroid/widget/FrameLayout;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    .line 4
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/d;->T4()Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    if-eqz p1, :cond_2

    iget v1, p0, Le/a/a/c/d;->M:I

    :cond_2
    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setBackgroundColor(I)V

    :cond_3
    const/high16 p1, 0x3f800000    # 1.0f

    .line 5
    invoke-virtual {p0, p1}, Le/a/a/c/d;->j5(F)V

    return-void
.end method

.method public final h5()Landroid/widget/TextView;
    .locals 1

    iget-object v0, p0, Le/a/a/c/d;->y:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    return-object v0
.end method

.method public i4(III)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Le/a/a/c/v6;

    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "itemView.resources"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v1, v2, p1, p2, p3}, Le/a/a/c/v6;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public final i5(Landroid/widget/TextView;ILjava/lang/String;)V
    .locals 6

    .line 1
    new-instance v0, Landroid/text/SpannableString;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 2
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v1, p3, v2, v3}, Ls1/f0/v;->D(Ljava/lang/CharSequence;Ljava/lang/String;IZ)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_0

    move v2, v3

    :cond_0
    if-eqz v2, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    if-eqz v1, :cond_2

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 3
    new-instance v2, Landroid/text/style/BackgroundColorSpan;

    invoke-direct {v2, p2}, Landroid/text/style/BackgroundColorSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p2

    add-int/2addr p2, v1

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v1, p2, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 4
    new-instance p2, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Le/a/a/c/d;->N:I

    invoke-direct {p2, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result p3

    add-int/2addr p3, v1

    invoke-virtual {v0, p2, v1, p3, v3}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    .line 5
    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :cond_2
    return-void
.end method

.method public j3(Le/a/c/b0/b;Le/a/a/c/c3;Le/a/c/a/c/h/j;Le/a/a/c/k/a/j$b;)V
    .locals 25

    move-object/from16 v9, p0

    move-object/from16 v10, p1

    move-object/from16 v11, p2

    move-object/from16 v12, p3

    const-string v13, "updateCategoryWithFeedback"

    invoke-static {v10, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "toolTipController"

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listener"

    move-object/from16 v14, p4

    invoke-static {v14, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v15, v11, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v15, :cond_f

    const-string v0, "params.message ?: return"

    invoke-static {v15, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v8

    if-eqz v8, :cond_f

    .line 3
    new-instance v7, Le/a/a/c/d$i0;

    move-object v0, v7

    move-object/from16 v1, p1

    move-object v2, v8

    move-object/from16 v3, p0

    move-object/from16 v4, p1

    move-object v5, v15

    move-object/from16 v6, p3

    move-object/from16 v16, v7

    move-object/from16 v7, p4

    move-object v14, v8

    move-object/from16 v8, p2

    invoke-direct/range {v0 .. v8}, Le/a/a/c/d$i0;-><init>(Le/a/c/b0/b;Landroid/view/ViewGroup;Le/a/a/c/d;Le/a/c/b0/b;Lcom/truecaller/messaging/data/types/Message;Le/a/c/a/c/h/j;Le/a/a/c/k/a/j$b;Le/a/a/c/c3;)V

    .line 4
    iget-object v0, v10, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    .line 5
    iget-object v0, v0, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 6
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    move v0, v1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    if-nez v0, :cond_4

    .line 7
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->g5()Landroid/view/ViewGroup;

    move-result-object v0

    invoke-virtual {v9, v0, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 8
    iget-object v0, v9, Le/a/a/c/d;->n:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "itemView"

    if-eqz v0, :cond_1

    .line 9
    iget-object v2, v10, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    .line 10
    iget-object v3, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v3, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "itemView.context"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v3}, Le/a/c/a/r/f;->b(Le/a/c/r/m/b;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 11
    :cond_1
    iget-object v0, v10, Le/a/c/b0/b;->e:Lcom/truecaller/insights/models/pdo/ClassifierType;

    .line 12
    sget-object v2, Lcom/truecaller/insights/models/pdo/ClassifierType;->USER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    if-eq v0, v2, :cond_2

    goto/16 :goto_1

    .line 13
    :cond_2
    iget-object v0, v9, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "null cannot be cast to non-null type com.truecaller.messaging.conversation.ConversationActivity"

    invoke-static {v0, v1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/truecaller/messaging/conversation/ConversationActivity;

    invoke-virtual {v0}, Ln3/r/a/l;->getSupportFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v6

    const-string v0, "(itemView.context as Con\u2026y).supportFragmentManager"

    invoke-static {v6, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v0, v10, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    if-eqz v0, :cond_4

    .line 15
    iget-object v5, v0, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    if-eqz v5, :cond_4

    .line 16
    invoke-interface/range {p4 .. p4}, Le/a/a/c/a/k$a;->A9()Z

    move-result v0

    if-nez v0, :cond_3

    .line 17
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->g5()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 18
    new-instance v1, Le/a/c/a/c/g/d;

    .line 19
    new-instance v2, Ljava/lang/ref/WeakReference;

    check-cast v0, Landroid/view/ViewGroup;

    invoke-direct {v2, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 20
    sget-object v19, Lcom/truecaller/common/ui/tooltip/TooltipDirection;->RIGHT:Lcom/truecaller/common/ui/tooltip/TooltipDirection;

    const v20, 0x7f120f8e

    .line 21
    new-instance v3, Ljava/lang/ref/WeakReference;

    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->g5()Landroid/view/ViewGroup;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 22
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v4, "parent.context"

    invoke-static {v0, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v4, 0x7f0701b0

    invoke-virtual {v0, v4}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v22

    const-wide/16 v7, 0x1388

    .line 23
    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v23

    .line 24
    sget-object v24, Le/a/a/c/d7;->b:Le/a/a/c/d7;

    move-object/from16 v17, v1

    move-object/from16 v18, v2

    move-object/from16 v21, v3

    .line 25
    invoke-direct/range {v17 .. v24}, Le/a/c/a/c/g/d;-><init>(Ljava/lang/ref/WeakReference;Lcom/truecaller/common/ui/tooltip/TooltipDirection;ILjava/lang/ref/WeakReference;FLjava/lang/Long;Ls1/z/b/a;)V

    .line 26
    invoke-interface {v12, v1}, Le/a/c/a/c/h/j;->bj(Le/a/c/a/c/g/d;)V

    .line 27
    invoke-interface/range {p4 .. p4}, Le/a/a/c/a/k$a;->Z3()V

    .line 28
    :cond_3
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->g5()Landroid/view/ViewGroup;

    move-result-object v7

    if-eqz v7, :cond_4

    new-instance v8, Le/a/a/c/e7;

    move-object v0, v8

    move-object v1, v15

    move-object/from16 v2, p4

    move-object/from16 v3, p1

    move-object/from16 v4, v16

    invoke-direct/range {v0 .. v6}, Le/a/a/c/e7;-><init>(Lcom/truecaller/messaging/data/types/Message;Le/a/a/c/k/a/j$b;Le/a/c/b0/b;Ls1/z/b/l;Lcom/truecaller/insights/models/smartcards/CardFeedBackType;Landroidx/fragment/app/FragmentManager;)V

    invoke-virtual {v7, v8}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 29
    :cond_4
    :goto_1
    iget-object v0, v10, Le/a/c/b0/b;->d:Le/a/c/i/e/b;

    if-nez v0, :cond_f

    .line 30
    iget-object v0, v10, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    if-eqz v0, :cond_f

    .line 31
    iget-object v0, v10, Le/a/c/b0/b;->c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 32
    sget-object v1, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->NOT_GIVEN:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    if-ne v0, v1, :cond_f

    .line 33
    iget-object v0, v11, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    invoke-interface {v0}, Le/a/a/c/t7;->a()Le/a/a/c/a/t;

    move-result-object v8

    const-string v0, "params.viewProvider.acqu\u2026datesFeedbackViewHolder()"

    invoke-static {v8, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    invoke-static {v10, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attachmentParams"

    invoke-static {v11, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "onFeedbackGiven"

    move-object/from16 v12, v16

    invoke-static {v12, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 35
    iget-object v11, v11, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v11, :cond_d

    const-string v0, "attachmentParams.message ?: return"

    invoke-static {v11, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 36
    iget-object v0, v8, Le/a/a/c/a/b;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_5

    const v2, 0x7f120cbe

    .line 37
    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 38
    :cond_5
    iget-object v2, v10, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    if-eqz v2, :cond_6

    .line 39
    iget-object v0, v2, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    goto :goto_2

    :cond_6
    const/4 v0, 0x0

    .line 40
    :goto_2
    sget-object v3, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->IMPORTANT_MESSAGE_POSITIVE_FEEDBACK:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    if-ne v0, v3, :cond_c

    .line 41
    invoke-virtual {v8}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_7

    invoke-static {v0}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 42
    :cond_7
    iget-object v0, v10, Le/a/c/b0/b;->d:Le/a/c/i/e/b;

    .line 43
    iget-object v13, v10, Le/a/c/b0/b;->b:Le/a/c/r/j/h;

    .line 44
    new-instance v15, Le/a/c/r/j/p$i;

    .line 45
    iget-object v2, v10, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    .line 46
    iget-object v2, v2, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 47
    sget-object v3, Lcom/truecaller/insights/models/pdo/ClassifierType;->USER:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-direct {v15, v2, v3}, Le/a/c/r/j/p$i;-><init>(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;)V

    .line 48
    iget-object v2, v10, Le/a/c/b0/b;->c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    if-nez v0, :cond_b

    if-eqz v13, :cond_b

    if-ne v2, v1, :cond_b

    .line 49
    iget-object v0, v8, Le/a/a/c/a/b;->k:Landroid/widget/TextView;

    if-eqz v0, :cond_8

    .line 50
    iget-object v1, v8, Le/a/a/c/a/b;->n:Landroid/view/View;

    .line 51
    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f120cbc

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 52
    :cond_8
    iget-object v0, v11, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    iget-object v2, v0, Lcom/truecaller/data/entity/messaging/Participant;->e:Ljava/lang/String;

    const-string v0, "message.participant.normalizedAddress"

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 53
    iget-object v0, v11, Lcom/truecaller/messaging/data/types/Message;->c:Lcom/truecaller/data/entity/messaging/Participant;

    const-string v1, "message.participant"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/truecaller/data/entity/messaging/Participant;->l()Z

    move-result v3

    .line 54
    iget-object v10, v8, Le/a/a/c/a/b;->h:Landroid/widget/TextView;

    if-eqz v10, :cond_9

    .line 55
    new-instance v7, Le/a/a/c/a/q;

    move-object v0, v7

    move-object v1, v8

    move-object v4, v12

    move-object v5, v13

    move-object v6, v11

    move-object v9, v7

    move-object v7, v15

    invoke-direct/range {v0 .. v7}, Le/a/a/c/a/q;-><init>(Le/a/a/c/a/t;Ljava/lang/String;ZLs1/z/b/l;Le/a/c/r/j/h;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;)V

    invoke-virtual {v10, v9}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 56
    :cond_9
    iget-object v0, v8, Le/a/a/c/a/b;->i:Landroid/widget/TextView;

    if-eqz v0, :cond_a

    .line 57
    new-instance v1, Le/a/a/c/a/r;

    invoke-direct {v1, v8, v13, v12}, Le/a/a/c/a/r;-><init>(Le/a/a/c/a/t;Le/a/c/r/j/h;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 58
    :cond_a
    iget-object v6, v8, Le/a/a/c/a/b;->j:Landroid/widget/ImageView;

    if-eqz v6, :cond_d

    .line 59
    new-instance v7, Le/a/a/c/a/s;

    move-object v0, v7

    move-object v1, v8

    move-object v2, v12

    move-object v3, v13

    move-object v4, v11

    move-object v5, v15

    invoke-direct/range {v0 .. v5}, Le/a/a/c/a/s;-><init>(Le/a/a/c/a/t;Ls1/z/b/l;Le/a/c/r/j/h;Lcom/truecaller/messaging/data/types/Message;Le/a/c/r/j/p;)V

    invoke-virtual {v6, v7}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 60
    :cond_b
    invoke-virtual {v8}, Le/a/a/c/a/b;->b()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_d

    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_3

    .line 61
    :cond_c
    iget-object v1, v10, Le/a/c/b0/b;->d:Le/a/c/i/e/b;

    .line 62
    new-instance v3, Le/a/c/r/j/p$i;

    .line 63
    iget-object v0, v10, Le/a/c/b0/b;->a:Le/a/c/r/m/b;

    .line 64
    iget-object v0, v0, Le/a/c/r/m/b;->a:Ljava/lang/String;

    .line 65
    sget-object v4, Lcom/truecaller/insights/models/pdo/ClassifierType;->MODEL:Lcom/truecaller/insights/models/pdo/ClassifierType;

    invoke-direct {v3, v0, v4}, Le/a/c/r/j/p$i;-><init>(Ljava/lang/String;Lcom/truecaller/insights/models/pdo/ClassifierType;)V

    .line 66
    iget-object v4, v10, Le/a/c/b0/b;->c:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    const/4 v7, 0x0

    move-object v0, v8

    move-object v5, v11

    move-object v6, v12

    .line 67
    invoke-virtual/range {v0 .. v7}, Le/a/a/c/a/b;->d(Le/a/c/i/e/b;Le/a/c/r/j/h;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Lcom/truecaller/messaging/data/types/Message;Ls1/z/b/l;Le/a/c/r/j/s;)V

    :cond_d
    :goto_3
    const v0, 0x7f0a103a

    .line 68
    invoke-virtual {v14, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_e

    .line 69
    iget-object v1, v8, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 70
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v1, 0x1

    move-object/from16 v2, p0

    .line 71
    invoke-virtual {v2, v0, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 72
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1, v8}, Le/a/a/c/d;->y5(Ljava/lang/Object;Le/a/a/c/r8/c;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_4

    :cond_e
    move-object/from16 v2, p0

    goto :goto_4

    :cond_f
    move-object v2, v9

    :goto_4
    return-void
.end method

.method public final j5(F)V
    .locals 10

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->W:Landroid/animation/ValueAnimator;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->isRunning()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v0}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    move-result-object v0

    const-string v2, "null cannot be cast to non-null type kotlin.Float"

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    goto :goto_0

    .line 4
    :cond_0
    iput-object v1, p0, Le/a/a/c/d;->W:Landroid/animation/ValueAnimator;

    move v0, p1

    .line 5
    :goto_0
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getItemViewType()I

    move-result v2

    const v3, 0x7f0a13cd

    const/4 v4, 0x0

    const/4 v5, 0x0

    if-ne v2, v3, :cond_a

    .line 6
    iget-object v2, p0, Le/a/a/c/d;->X:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Number;

    invoke-virtual {v2}, Ljava/lang/Number;->floatValue()F

    move-result v2

    mul-float/2addr v2, v0

    .line 7
    iget-object v3, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v6, "null cannot be cast to non-null type android.view.ViewGroup"

    invoke-static {v3, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    move v6, v4

    :goto_1
    if-ge v6, v3, :cond_2

    .line 8
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    check-cast v7, Landroid/view/ViewGroup;

    invoke-virtual {v7, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    const-string v8, "itemView.getChildAt(i)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0a03be

    if-eq v8, v9, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0a00fa

    if-eq v8, v9, :cond_1

    invoke-virtual {v7}, Landroid/view/View;->getId()I

    move-result v8

    const v9, 0x7f0a0ddf

    if-eq v8, v9, :cond_1

    .line 10
    invoke-virtual {v7, v2}, Landroid/view/View;->setTranslationX(F)V

    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    .line 11
    :cond_2
    invoke-virtual {p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object v2

    if-eqz v2, :cond_a

    cmpg-float p1, p1, v5

    if-nez p1, :cond_6

    .line 12
    invoke-virtual {p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object p1

    if-eqz p1, :cond_3

    invoke-virtual {p1}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object p1

    goto :goto_2

    :cond_3
    move-object p1, v1

    :goto_2
    instance-of v3, p1, Ljava/lang/Float;

    if-nez v3, :cond_4

    goto :goto_3

    :cond_4
    move-object v1, p1

    :goto_3
    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_5

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    goto :goto_7

    :cond_5
    move p1, v5

    goto :goto_7

    .line 13
    :cond_6
    iget-object p1, p0, Le/a/a/c/d;->X:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->floatValue()F

    move-result p1

    mul-float/2addr p1, v0

    .line 14
    invoke-virtual {p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->getTag()Ljava/lang/Object;

    move-result-object v3

    goto :goto_4

    :cond_7
    move-object v3, v1

    :goto_4
    instance-of v6, v3, Ljava/lang/Float;

    if-nez v6, :cond_8

    goto :goto_5

    :cond_8
    move-object v1, v3

    :goto_5
    check-cast v1, Ljava/lang/Float;

    if-eqz v1, :cond_9

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    goto :goto_6

    :cond_9
    move v1, v5

    :goto_6
    add-float/2addr p1, v1

    .line 15
    :goto_7
    invoke-virtual {v2, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 16
    :cond_a
    invoke-virtual {p0}, Le/a/a/c/d;->W4()Landroid/widget/CheckBox;

    move-result-object p1

    cmpl-float v1, v0, v5

    if-lez v1, :cond_b

    const/4 v4, 0x1

    :cond_b
    invoke-virtual {p0, p1, v4}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 17
    invoke-virtual {p0}, Le/a/a/c/d;->W4()Landroid/widget/CheckBox;

    move-result-object p1

    if-eqz p1, :cond_c

    invoke-virtual {p1, v0}, Landroid/widget/CheckBox;->setAlpha(F)V

    .line 18
    :cond_c
    invoke-virtual {p0}, Le/a/a/c/d;->b5()Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_d

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float/2addr v1, v0

    invoke-virtual {p1, v1}, Landroid/view/View;->setAlpha(F)V

    :cond_d
    return-void
.end method

.method public k0()Ljava/lang/Iterable;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/lang/Iterable<",
            "Le/a/a/c/r8/c;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Le/a/a/c/d;->X4()Landroid/view/ViewGroup;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    .line 3
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v3

    invoke-static {v2, v3}, Ls1/d0/j;->j(II)Ls1/d0/i;

    move-result-object v3

    .line 4
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v3

    check-cast v4, Ls1/u/z;

    invoke-virtual {v4}, Ls1/u/z;->a()I

    move-result v4

    .line 5
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    const-string v5, "container.getChildAt(it)"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v4

    const-string v5, "null cannot be cast to non-null type com.truecaller.messaging.conversation.viewcache.ViewHolder"

    invoke-static {v4, v5}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v4, Le/a/a/c/r8/c;

    invoke-interface {v0, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 7
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v1

    if-eqz v1, :cond_2

    const v3, 0x7f0a103a

    .line 8
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_2

    .line 9
    invoke-virtual {v1}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 10
    invoke-virtual {p0, v1, v2}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 11
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {p0, v2}, Le/a/a/c/d;->S4(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    .line 12
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    :cond_2
    return-object v0
.end method

.method public k2(Lcom/truecaller/common/ui/avatar/AvatarXConfig;)V
    .locals 4

    const-string v0, "config"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->P:Le/a/b0/a/b/a;

    const/4 v1, 0x0

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-static {v0, p1, v1, v2, v3}, Le/a/b0/a/b/a;->ok(Le/a/b0/a/b/a;Lcom/truecaller/common/ui/avatar/AvatarXConfig;ZILjava/lang/Object;)V

    return-void
.end method

.method public final k5(Landroid/view/View;Le/a/a/c/c3;)V
    .locals 13

    const v0, 0x7f0a096b

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroidx/appcompat/widget/AppCompatImageView;

    .line 2
    iget-boolean v2, p2, Le/a/a/c/c3;->n:Z

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-string v5, "icon"

    if-eqz v2, :cond_0

    const v0, 0x7f08037c

    .line 3
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 4
    invoke-virtual {p1, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 5
    :cond_0
    iget-boolean v2, p2, Le/a/a/c/c3;->o:Z

    if-eqz v2, :cond_2

    .line 6
    iget-boolean v0, p2, Le/a/a/c/c3;->m:Z

    if-eqz v0, :cond_1

    const v0, 0x7f08037d

    goto :goto_0

    :cond_1
    const v0, 0x7f08037b

    :goto_0
    invoke-virtual {v1, v0}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 7
    new-instance v0, Le/a/a/c/d$b;

    invoke-direct {v0, v3, p0, p2}, Le/a/a/c/d$b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto/16 :goto_5

    .line 8
    :cond_2
    iget-object v2, p2, Le/a/a/c/c3;->b:Lcom/truecaller/messaging/conversation/AttachmentType;

    sget-object v6, Lcom/truecaller/messaging/conversation/AttachmentType;->VCARD:Lcom/truecaller/messaging/conversation/AttachmentType;

    const v7, 0x7f0a0624

    const v8, 0x7f0a0e9f

    const/4 v9, 0x1

    if-ne v2, v6, :cond_7

    .line 9
    iget-object v2, p2, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    const-string v6, "null cannot be cast to non-null type com.truecaller.messaging.data.types.VCardEntity"

    invoke-static {v2, v6}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lcom/truecaller/messaging/data/types/VCardEntity;

    .line 10
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 11
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/VCardEntity;->y()Z

    move-result v6

    const-string v10, "itemView"

    if-eqz v6, :cond_4

    .line 12
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    iget-object v6, v2, Lcom/truecaller/messaging/data/types/VCardEntity;->x:Landroid/net/Uri;

    if-eqz v6, :cond_3

    goto :goto_1

    .line 14
    :cond_3
    sget-object v6, Landroid/net/Uri;->EMPTY:Landroid/net/Uri;

    :goto_1
    const-string v11, "entity.thumbnailUri ?: Uri.EMPTY"

    invoke-static {v6, v11}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const v11, 0x7f08037f

    .line 15
    invoke-virtual {v0, v4}, Landroidx/appcompat/widget/AppCompatImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 16
    invoke-virtual {v0}, Landroid/widget/ImageView;->clearColorFilter()V

    .line 17
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 18
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 19
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    .line 20
    invoke-virtual {v0}, Landroid/widget/ImageView;->invalidate()V

    .line 21
    iget-object v12, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v12, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v12

    .line 22
    invoke-virtual {v12}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v12

    check-cast v12, Le/a/z3/d;

    .line 23
    iput-object v6, v12, Le/f/a/h;->J:Ljava/lang/Object;

    .line 24
    iput-boolean v9, v12, Le/f/a/h;->N:Z

    .line 25
    invoke-virtual {v12}, Le/a/z3/d;->d0()Le/a/z3/d;

    move-result-object v6

    .line 26
    sget-object v12, Le/f/a/n/o/k;->d:Le/f/a/n/o/k;

    invoke-virtual {v6, v12}, Le/a/z3/d;->f0(Le/f/a/n/o/k;)Le/a/z3/d;

    move-result-object v6

    .line 27
    invoke-virtual {v6, v11}, Le/a/z3/d;->h0(I)Le/a/z3/d;

    move-result-object v6

    .line 28
    invoke-virtual {v6, v0}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    goto :goto_3

    .line 29
    :cond_4
    iget v6, v2, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    if-le v6, v9, :cond_5

    const v6, 0x7f080380

    goto :goto_2

    .line 30
    :cond_5
    iget-object v6, p2, Le/a/a/c/c3;->b:Lcom/truecaller/messaging/conversation/AttachmentType;

    iget v6, v6, Lcom/truecaller/messaging/conversation/AttachmentType;->icon:I

    .line 31
    :goto_2
    invoke-virtual {v0, v6}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 32
    :goto_3
    iget-boolean v6, p2, Le/a/a/c/c3;->k:Z

    if-nez v6, :cond_a

    iget-boolean v6, p2, Le/a/a/c/c3;->H:Z

    if-nez v6, :cond_a

    .line 33
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    check-cast v6, Lcom/truecaller/ui/view/TintedTextView;

    if-eqz v6, :cond_6

    .line 34
    invoke-virtual {p0, v6, v9}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 35
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    invoke-virtual {p0, v7, v9}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 36
    iget-object v7, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v7, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x7f10000a

    iget-object v11, p2, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    check-cast v11, Lcom/truecaller/messaging/data/types/VCardEntity;

    .line 37
    iget v11, v11, Lcom/truecaller/messaging/data/types/VCardEntity;->w:I

    .line 38
    invoke-virtual {v7, v8, v11}, Landroid/content/res/Resources;->getQuantityText(II)Ljava/lang/CharSequence;

    move-result-object v7

    const-string v8, "itemView.resources.getQu\u2026ams.entity.contactsCount)"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 39
    iget-object v8, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const v11, 0x7f0806af

    .line 40
    sget-object v12, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 41
    invoke-static {v8, v11}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    .line 42
    new-instance v11, Landroid/text/SpannableStringBuilder;

    invoke-direct {v11}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 43
    invoke-static {v8}, Ls1/z/c/l;->c(Ljava/lang/Object;)V

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->mutate()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    const-string v12, "drawable!!.mutate()"

    invoke-static {v8, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v12, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v12, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v10

    const v12, 0x7f0405a1

    invoke-static {v10, v12}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v10

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    invoke-static {v8, v11, v10, v4, v9}, Le/a/p5/s0/g;->h(Landroid/graphics/drawable/Drawable;Landroid/text/SpannableStringBuilder;Ljava/lang/Integer;Landroid/graphics/Paint$FontMetricsInt;Z)V

    const-string v4, "  "

    .line 44
    invoke-virtual {v11, v4}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 45
    invoke-virtual {v11, v7}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 46
    new-instance v4, Landroid/text/style/AbsoluteSizeSpan;

    const/16 v7, 0x10

    invoke-direct {v4, v7, v9}, Landroid/text/style/AbsoluteSizeSpan;-><init>(IZ)V

    invoke-virtual {v11}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v7

    const/16 v8, 0x21

    invoke-virtual {v11, v4, v3, v7, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 47
    invoke-virtual {v6, v11}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 48
    :cond_6
    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/VCardEntity;->y()Z

    move-result v2

    if-nez v2, :cond_a

    .line 49
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/a/c/d;->n5(Landroidx/appcompat/widget/AppCompatImageView;)V

    goto :goto_4

    .line 50
    :cond_7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/widget/AppCompatImageView;

    .line 51
    iget-boolean v2, p2, Le/a/a/c/c3;->k:Z

    if-nez v2, :cond_9

    .line 52
    invoke-virtual {p1, v8}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/truecaller/ui/view/TintedTextView;

    if-eqz v2, :cond_8

    .line 53
    invoke-static {v2}, Le/a/p5/s0/f;->p(Landroid/view/View;)Z

    move-result v4

    if-eqz v4, :cond_8

    .line 54
    invoke-virtual {p0, v2, v3}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 55
    invoke-virtual {p1, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {p0, v2, v3}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 56
    :cond_8
    invoke-static {v0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0, v0}, Le/a/a/c/d;->n5(Landroidx/appcompat/widget/AppCompatImageView;)V

    .line 57
    :cond_9
    iget-object v2, p2, Le/a/a/c/c3;->b:Lcom/truecaller/messaging/conversation/AttachmentType;

    iget v2, v2, Lcom/truecaller/messaging/conversation/AttachmentType;->icon:I

    invoke-virtual {v0, v2}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 58
    :cond_a
    :goto_4
    new-instance v0, Le/a/a/c/d$b;

    invoke-direct {v0, v9, p0, p2}, Le/a/a/c/d$b;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 59
    :goto_5
    invoke-static {v1, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v0, p2, Le/a/a/c/c3;->l:Z

    if-nez v0, :cond_b

    goto :goto_6

    :cond_b
    const/4 v3, 0x4

    :goto_6
    invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    const v0, 0x7f0a01a1

    .line 60
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_c

    iget-boolean p2, p2, Le/a/a/c/c3;->l:Z

    invoke-virtual {p0, p1, p2}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    :cond_c
    return-void
.end method

.method public l4(Le/a/a/c/c3;Le/a/c/r/j/s;Le/a/a/c/k/a/j$b;)V
    .locals 23

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p3

    const-string v12, "params"

    invoke-static {v1, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v13, "infoCardWithAction"

    invoke-static {v10, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "actionListener"

    invoke-static {v11, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v14

    if-eqz v14, :cond_28

    .line 2
    iget-object v2, v1, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    invoke-interface {v2}, Le/a/a/c/t7;->c()Le/a/a/c/a/k;

    move-result-object v15

    const-string v2, "params.viewProvider.acquireSmartCardViewHolder()"

    invoke-static {v15, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v9

    const-string v8, "listener"

    if-eqz v9, :cond_10

    .line 4
    iget-object v2, v10, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    .line 5
    sget-object v3, Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;->NOT_GIVEN:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    if-eq v2, v3, :cond_0

    goto/16 :goto_2

    .line 6
    :cond_0
    iget-object v2, v10, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    if-nez v2, :cond_10

    .line 7
    iget-object v2, v10, Le/a/c/r/j/s;->d:Le/a/c/r/j/h;

    if-eqz v2, :cond_10

    .line 8
    iget-object v2, v1, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    invoke-interface {v2}, Le/a/a/c/t7;->i()Le/a/a/c/a/a;

    move-result-object v5

    const-string v2, "params.viewProvider.acqu\u2026icardFeedbackViewHolder()"

    invoke-static {v5, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v4, Le/a/a/c/g7;

    invoke-direct {v4, v0, v15, v10}, Le/a/a/c/g7;-><init>(Le/a/a/c/d;Le/a/a/c/a/k;Le/a/c/r/j/s;)V

    .line 10
    invoke-static {v10, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v11, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "attachmentParams"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "onFeedbackGiven"

    invoke-static {v4, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    iget-object v3, v1, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    if-eqz v3, :cond_f

    const-string v2, "attachmentParams.message ?: return"

    invoke-static {v3, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    iget-object v2, v10, Le/a/c/r/j/s;->d:Le/a/c/r/j/h;

    if-eqz v2, :cond_f

    .line 13
    iget-object v6, v2, Le/a/c/r/j/h;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    .line 14
    invoke-virtual {v6}, Lcom/truecaller/insights/models/smartcards/CardFeedBackType;->getFeedbackClass()Lcom/truecaller/insights/models/smartcards/FeedbackClass;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const/4 v7, 0x5

    move-object/from16 v17, v2

    if-eq v6, v7, :cond_a

    const/4 v7, 0x6

    const v2, 0x7f120745

    if-eq v6, v7, :cond_5

    .line 15
    iget-object v6, v5, Le/a/a/c/a/b;->k:Landroid/widget/TextView;

    if-eqz v6, :cond_1

    const v7, 0x7f120cbd

    .line 16
    invoke-virtual {v6, v7}, Landroid/widget/TextView;->setText(I)V

    .line 17
    :cond_1
    iget-object v6, v5, Le/a/a/c/a/b;->h:Landroid/widget/TextView;

    if-eqz v6, :cond_2

    .line 18
    invoke-virtual {v6, v2}, Landroid/widget/TextView;->setText(I)V

    .line 19
    :cond_2
    iget-object v2, v5, Le/a/a/c/a/b;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_3

    const v6, 0x7f12071f

    .line 20
    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setText(I)V

    .line 21
    :cond_3
    iget-object v2, v10, Le/a/c/r/j/s;->g:Le/a/c/r/j/o;

    .line 22
    iget-object v2, v2, Le/a/c/r/j/o;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    if-eqz v2, :cond_4

    .line 23
    invoke-virtual {v4, v2}, Le/a/a/c/g7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-object/from16 v22, v8

    move-object/from16 v20, v14

    move-object/from16 v16, v15

    const v2, 0x7f0a103a

    move-object v14, v5

    move-object v15, v9

    goto/16 :goto_1

    .line 24
    :cond_4
    iget-object v6, v10, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    .line 25
    iget-object v7, v10, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    .line 26
    iget-object v2, v10, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    move-object/from16 v18, v2

    move-object v2, v5

    move-object/from16 v19, v3

    move-object v3, v6

    move-object v6, v4

    move-object/from16 v4, v17

    move-object/from16 v20, v14

    move-object v14, v5

    move-object v5, v7

    move-object v7, v6

    move-object/from16 v16, v15

    const/4 v15, 0x1

    move-object/from16 v6, v18

    move-object/from16 v21, v7

    const v15, 0x7f0a103a

    move-object/from16 v7, v19

    move-object/from16 v22, v8

    move-object/from16 v8, v21

    move-object v15, v9

    move-object/from16 v9, p2

    .line 27
    invoke-virtual/range {v2 .. v9}, Le/a/a/c/a/b;->d(Le/a/c/i/e/b;Le/a/c/r/j/h;Le/a/c/r/j/p;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Lcom/truecaller/messaging/data/types/Message;Ls1/z/b/l;Le/a/c/r/j/s;)V

    goto/16 :goto_0

    :cond_5
    move-object/from16 v19, v3

    move-object/from16 v21, v4

    move-object/from16 v22, v8

    move-object/from16 v20, v14

    move-object/from16 v16, v15

    move-object v14, v5

    move-object v15, v9

    .line 28
    iget-object v3, v14, Le/a/a/c/a/b;->k:Landroid/widget/TextView;

    if-eqz v3, :cond_6

    const v4, 0x7f120cc1

    .line 29
    invoke-virtual {v3, v4}, Landroid/widget/TextView;->setText(I)V

    .line 30
    :cond_6
    iget-object v3, v14, Le/a/a/c/a/b;->h:Landroid/widget/TextView;

    if-eqz v3, :cond_7

    .line 31
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setText(I)V

    .line 32
    :cond_7
    iget-object v2, v14, Le/a/a/c/a/b;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_8

    const v3, 0x7f120ce3

    .line 33
    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V

    .line 34
    :cond_8
    iget-object v2, v10, Le/a/c/r/j/s;->g:Le/a/c/r/j/o;

    .line 35
    iget-object v2, v2, Le/a/c/r/j/o;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    if-eqz v2, :cond_9

    move-object/from16 v3, v21

    .line 36
    invoke-virtual {v3, v2}, Le/a/a/c/g7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_0

    .line 37
    :cond_9
    iget-object v3, v10, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    .line 38
    iget-object v5, v10, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    move-object v2, v14

    move-object/from16 v4, v17

    move-object/from16 v6, v19

    move-object/from16 v7, p3

    .line 39
    invoke-virtual/range {v2 .. v7}, Le/a/a/c/a/a;->f(Le/a/c/i/e/b;Le/a/c/r/j/h;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Lcom/truecaller/messaging/data/types/Message;Le/a/a/c/a/k$a;)V

    goto :goto_0

    :cond_a
    move-object/from16 v19, v3

    move-object v3, v4

    move-object/from16 v22, v8

    move-object/from16 v20, v14

    move-object/from16 v16, v15

    move-object v14, v5

    move-object v15, v9

    .line 40
    iget-object v2, v14, Le/a/a/c/a/b;->k:Landroid/widget/TextView;

    if-eqz v2, :cond_b

    const v4, 0x7f120cc1

    .line 41
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 42
    :cond_b
    iget-object v2, v14, Le/a/a/c/a/b;->h:Landroid/widget/TextView;

    if-eqz v2, :cond_c

    const v4, 0x7f120ce0

    .line 43
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 44
    :cond_c
    iget-object v2, v14, Le/a/a/c/a/b;->i:Landroid/widget/TextView;

    if-eqz v2, :cond_d

    const v4, 0x7f120ce3

    .line 45
    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(I)V

    .line 46
    :cond_d
    iget-object v2, v10, Le/a/c/r/j/s;->g:Le/a/c/r/j/o;

    .line 47
    iget-object v2, v2, Le/a/c/r/j/o;->a:Lcom/truecaller/insights/models/smartcards/CardFeedBackType;

    if-eqz v2, :cond_e

    .line 48
    invoke-virtual {v3, v2}, Le/a/a/c/g7;->d(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 49
    :cond_e
    iget-object v3, v10, Le/a/c/r/j/s;->h:Le/a/c/i/e/b;

    .line 50
    iget-object v5, v10, Le/a/c/r/j/s;->j:Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;

    move-object v2, v14

    move-object/from16 v4, v17

    move-object/from16 v6, v19

    move-object/from16 v7, p3

    .line 51
    invoke-virtual/range {v2 .. v7}, Le/a/a/c/a/a;->f(Le/a/c/i/e/b;Le/a/c/r/j/h;Lcom/truecaller/insights/models/smartcards/FeedbackGivenState;Lcom/truecaller/messaging/data/types/Message;Le/a/a/c/a/k$a;)V

    goto :goto_0

    :cond_f
    move-object/from16 v22, v8

    move-object/from16 v20, v14

    move-object/from16 v16, v15

    move-object v14, v5

    move-object v15, v9

    :goto_0
    const v2, 0x7f0a103a

    .line 52
    :goto_1
    invoke-virtual {v15, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    if-eqz v3, :cond_11

    .line 53
    iget-object v2, v14, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 54
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 55
    invoke-virtual {v0, v3, v2}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 56
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v14}, Le/a/a/c/d;->y5(Ljava/lang/Object;Le/a/a/c/r8/c;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_3

    :cond_10
    :goto_2
    move-object/from16 v22, v8

    move-object/from16 v20, v14

    move-object/from16 v16, v15

    .line 57
    :cond_11
    :goto_3
    iget-object v2, v10, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    .line 58
    sget-object v3, Le/a/c/r/j/p$f;->b:Le/a/c/r/j/p$f;

    invoke-static {v2, v3}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x1

    xor-int/2addr v2, v3

    if-eqz v2, :cond_26

    .line 59
    invoke-static {v10, v13}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v12}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    move-object/from16 v2, v22

    invoke-static {v11, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 60
    iget-object v2, v10, Le/a/c/r/j/s;->b:Le/a/c/r/j/n;

    .line 61
    iget-object v3, v1, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    move-object/from16 v7, v16

    iput-object v3, v7, Le/a/a/c/a/k;->y:Lcom/truecaller/messaging/data/types/Message;

    .line 62
    iput-object v11, v7, Le/a/a/c/a/k;->z:Le/a/a/c/a/k$a;

    .line 63
    iput-object v10, v7, Le/a/a/c/a/k;->A:Le/a/c/r/j/s;

    const-string v3, "deliveryUiContainer"

    const-string v4, "defaultUiContainer"

    if-eqz v2, :cond_1e

    .line 64
    iget-object v6, v2, Le/a/c/r/j/n;->l:Lcom/truecaller/insights/models/smartcards/InfocardUiType;

    .line 65
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    const v8, 0x7f080289

    const-string v9, "context"

    if-eqz v6, :cond_13

    const/4 v12, 0x1

    if-eq v6, v12, :cond_12

    goto/16 :goto_6

    .line 66
    :cond_12
    iget-object v6, v7, Le/a/a/c/a/k;->p:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v12, "info"

    .line 67
    invoke-static {v6, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 68
    iget-object v12, v2, Le/a/c/r/j/n;->c:Ljava/lang/String;

    .line 69
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 70
    iget-object v6, v7, Le/a/a/c/a/k;->o:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 71
    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 72
    iget-object v13, v2, Le/a/c/r/j/n;->a:Le/a/c/r/j/m;

    .line 73
    iget v14, v13, Le/a/c/r/j/m;->a:I

    .line 74
    iget v13, v13, Le/a/c/r/j/m;->b:I

    .line 75
    invoke-static {v12, v14, v13}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 76
    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 77
    iget-object v2, v2, Le/a/c/r/j/n;->a:Le/a/c/r/j/m;

    .line 78
    iget v2, v2, Le/a/c/r/j/m;->c:I

    .line 79
    invoke-static {v13, v8, v2}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 80
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 81
    invoke-virtual {v7}, Le/a/a/c/a/k;->d()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 82
    invoke-virtual {v7}, Le/a/a/c/a/k;->e()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    goto/16 :goto_6

    .line 83
    :cond_13
    iget-object v6, v7, Le/a/a/c/a/k;->m:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/ImageView;

    .line 84
    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v12

    invoke-static {v12, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 85
    iget-object v13, v2, Le/a/c/r/j/n;->a:Le/a/c/r/j/m;

    .line 86
    iget v14, v13, Le/a/c/r/j/m;->a:I

    .line 87
    iget v13, v13, Le/a/c/r/j/m;->b:I

    .line 88
    invoke-static {v12, v14, v13}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v12

    .line 89
    invoke-virtual {v6}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v13

    invoke-static {v13, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v14, v2, Le/a/c/r/j/n;->a:Le/a/c/r/j/m;

    .line 91
    iget v14, v14, Le/a/c/r/j/m;->c:I

    .line 92
    invoke-static {v13, v8, v14}, Le/a/l4/k;->N(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v6, v8}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 93
    invoke-virtual {v6, v12}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 94
    iget-object v6, v7, Le/a/a/c/a/k;->j:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v8, "contentTitle"

    .line 95
    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    iget-object v8, v2, Le/a/c/r/j/n;->b:Ljava/lang/String;

    .line 97
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 98
    invoke-virtual {v7}, Le/a/a/c/a/k;->c()Landroid/widget/TextView;

    move-result-object v6

    const-string v8, "contentText"

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 99
    iget-object v12, v2, Le/a/c/r/j/n;->c:Ljava/lang/String;

    .line 100
    invoke-static {v12}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v12

    if-eqz v12, :cond_14

    const/16 v12, 0x8

    goto :goto_4

    :cond_14
    const/4 v12, 0x0

    :goto_4
    invoke-virtual {v6, v12}, Landroid/widget/TextView;->setVisibility(I)V

    .line 101
    invoke-virtual {v7}, Le/a/a/c/a/k;->c()Landroid/widget/TextView;

    move-result-object v6

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Le/a/a/c/a/k;->c()Landroid/widget/TextView;

    move-result-object v12

    invoke-static {v12, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v12}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v12

    const-string v13, "contentText.context"

    invoke-static {v12, v13}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 102
    iget-object v13, v2, Le/a/c/r/j/n;->c:Ljava/lang/String;

    .line 103
    iget-object v14, v2, Le/a/c/r/j/n;->j:Ljava/util/List;

    .line 104
    invoke-static {v12, v9}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v13, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v8, "contentTextColor"

    invoke-static {v14, v8}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 105
    new-instance v8, Landroid/text/SpannableString;

    invoke-direct {v8, v13}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V

    .line 106
    invoke-interface {v14}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_15
    :goto_5
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v13

    if-eqz v13, :cond_16

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Le/a/c/r/j/b0;

    .line 107
    iget-object v14, v13, Le/a/c/r/j/b0;->c:Ljava/lang/Integer;

    if-eqz v14, :cond_15

    .line 108
    invoke-virtual {v14}, Ljava/lang/Number;->intValue()I

    move-result v14

    .line 109
    invoke-static {v12, v14}, Le/a/l4/k;->M(Landroid/content/Context;I)I

    move-result v14

    .line 110
    new-instance v15, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v15, v14}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    .line 111
    iget v14, v13, Le/a/c/r/j/b0;->a:I

    .line 112
    iget v13, v13, Le/a/c/r/j/b0;->b:I

    const/16 v5, 0x21

    .line 113
    invoke-virtual {v8, v15, v14, v13, v5}, Landroid/text/SpannableString;->setSpan(Ljava/lang/Object;III)V

    goto :goto_5

    .line 114
    :cond_16
    invoke-virtual {v6, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 115
    invoke-virtual {v7}, Le/a/a/c/a/k;->b()Landroid/widget/TextView;

    move-result-object v5

    const-string v6, "amount"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 116
    iget-object v8, v2, Le/a/c/r/j/n;->d:Ljava/lang/String;

    .line 117
    invoke-virtual {v5, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 118
    iget-object v5, v2, Le/a/c/r/j/n;->e:Ljava/lang/Integer;

    if-eqz v5, :cond_17

    .line 119
    invoke-virtual {v5}, Ljava/lang/Number;->intValue()I

    move-result v5

    invoke-virtual {v7}, Le/a/a/c/a/k;->b()Landroid/widget/TextView;

    move-result-object v8

    invoke-virtual {v7}, Le/a/a/c/a/k;->b()Landroid/widget/TextView;

    move-result-object v9

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v9, "amount.context"

    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6, v5}, Le/a/i5/e/a;->a(Landroid/content/Context;I)I

    move-result v5

    invoke-virtual {v8, v5}, Landroid/widget/TextView;->setTextColor(I)V

    .line 120
    :cond_17
    iget-object v5, v2, Le/a/c/r/j/n;->f:Ls1/k;

    const-string v6, "infoView"

    if-nez v5, :cond_18

    .line 121
    iget-object v5, v2, Le/a/c/r/j/n;->g:Ls1/k;

    if-nez v5, :cond_18

    .line 122
    invoke-virtual {v7}, Le/a/a/c/a/k;->f()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 123
    :cond_18
    iget-object v5, v2, Le/a/c/r/j/n;->h:Ls1/k;

    const-string v8, "moreInfoView"

    if-nez v5, :cond_19

    .line 124
    iget-object v5, v2, Le/a/c/r/j/n;->i:Ls1/k;

    if-nez v5, :cond_19

    .line 125
    invoke-virtual {v7}, Le/a/a/c/a/k;->g()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 126
    :cond_19
    iget-object v5, v2, Le/a/c/r/j/n;->f:Ls1/k;

    if-eqz v5, :cond_1a

    .line 127
    invoke-virtual {v7}, Le/a/a/c/a/k;->f()Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 128
    iget-object v9, v7, Le/a/a/c/a/k;->q:Ls1/g;

    invoke-interface {v9}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v12, "infoTypeLHS"

    .line 129
    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 130
    iget-object v12, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 131
    check-cast v12, Ljava/lang/CharSequence;

    invoke-virtual {v9, v12}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 132
    iget-object v9, v7, Le/a/a/c/a/k;->s:Ls1/g;

    invoke-interface {v9}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/widget/TextView;

    const-string v12, "infoValueLHS"

    .line 133
    invoke-static {v9, v12}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 134
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 135
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v9, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 136
    :cond_1a
    iget-object v5, v2, Le/a/c/r/j/n;->g:Ls1/k;

    if-eqz v5, :cond_1b

    .line 137
    invoke-virtual {v7}, Le/a/a/c/a/k;->f()Landroid/view/View;

    move-result-object v9

    invoke-static {v9, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 138
    iget-object v6, v7, Le/a/a/c/a/k;->r:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v9, "infoTypeRHS"

    .line 139
    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 140
    iget-object v9, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 141
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 142
    iget-object v6, v7, Le/a/a/c/a/k;->t:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v9, "infoValueRHS"

    .line 143
    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 144
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 145
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 146
    :cond_1b
    iget-object v5, v2, Le/a/c/r/j/n;->h:Ls1/k;

    if-eqz v5, :cond_1c

    .line 147
    invoke-virtual {v7}, Le/a/a/c/a/k;->g()Landroid/view/View;

    move-result-object v6

    invoke-static {v6, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v6}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 148
    iget-object v6, v7, Le/a/a/c/a/k;->u:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v9, "moreInfoTypeLHS"

    .line 149
    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 150
    iget-object v9, v5, Ls1/k;->a:Ljava/lang/Object;

    .line 151
    check-cast v9, Ljava/lang/CharSequence;

    invoke-virtual {v6, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 152
    iget-object v6, v7, Le/a/a/c/a/k;->w:Ls1/g;

    invoke-interface {v6}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/widget/TextView;

    const-string v9, "moreInfoValueLHS"

    .line 153
    invoke-static {v6, v9}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 154
    iget-object v5, v5, Ls1/k;->b:Ljava/lang/Object;

    .line 155
    check-cast v5, Ljava/lang/CharSequence;

    invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 156
    :cond_1c
    iget-object v2, v2, Le/a/c/r/j/n;->i:Ls1/k;

    if-eqz v2, :cond_1d

    .line 157
    invoke-virtual {v7}, Le/a/a/c/a/k;->g()Landroid/view/View;

    move-result-object v5

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v5}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 158
    iget-object v5, v7, Le/a/a/c/a/k;->v:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "moreInfoTypeRHS"

    .line 159
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 160
    iget-object v6, v2, Ls1/k;->a:Ljava/lang/Object;

    .line 161
    check-cast v6, Ljava/lang/CharSequence;

    invoke-virtual {v5, v6}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 162
    iget-object v5, v7, Le/a/a/c/a/k;->x:Ls1/g;

    invoke-interface {v5}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/widget/TextView;

    const-string v6, "moreInfoValueRHS"

    .line 163
    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 164
    iget-object v2, v2, Ls1/k;->b:Ljava/lang/Object;

    .line 165
    check-cast v2, Ljava/lang/CharSequence;

    invoke-virtual {v5, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 166
    :cond_1d
    iget-object v2, v7, Le/a/a/c/a/k;->n:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-string v5, "semicardArrow"

    .line 167
    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->Q(Landroid/view/View;)V

    .line 168
    invoke-virtual {v7}, Le/a/a/c/a/k;->d()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 169
    invoke-virtual {v7}, Le/a/a/c/a/k;->e()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    goto :goto_6

    .line 170
    :cond_1e
    invoke-virtual {v7}, Le/a/a/c/a/k;->d()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 171
    invoke-virtual {v7}, Le/a/a/c/a/k;->e()Landroid/view/View;

    move-result-object v2

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 172
    :goto_6
    iget-object v3, v10, Le/a/c/r/j/s;->c:Le/a/c/r/j/a;

    if-eqz v3, :cond_24

    .line 173
    new-instance v8, Ls1/k;

    .line 174
    iget-object v2, v10, Le/a/c/r/j/s;->f:Le/a/c/r/j/r;

    .line 175
    iget-object v4, v10, Le/a/c/r/j/s;->a:Le/a/c/r/j/p;

    .line 176
    invoke-direct {v8, v2, v4}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 177
    iget-object v9, v1, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    .line 178
    iget-boolean v12, v10, Le/a/c/r/j/s;->k:Z

    .line 179
    instance-of v1, v3, Le/a/c/r/j/a$a$b;

    if-eqz v1, :cond_1f

    .line 180
    invoke-virtual {v3}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Le/a/a/c/a/k;->h(Ljava/lang/String;)V

    goto :goto_7

    .line 181
    :cond_1f
    instance-of v1, v3, Le/a/c/r/j/a$f;

    if-eqz v1, :cond_20

    invoke-virtual {v3}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Le/a/a/c/a/k;->h(Ljava/lang/String;)V

    goto :goto_7

    .line 182
    :cond_20
    instance-of v1, v3, Le/a/c/r/j/a$e;

    if-eqz v1, :cond_21

    invoke-virtual {v3}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Le/a/a/c/a/k;->h(Ljava/lang/String;)V

    goto :goto_7

    .line 183
    :cond_21
    instance-of v1, v3, Le/a/c/r/j/a$b;

    if-eqz v1, :cond_22

    invoke-virtual {v3}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Le/a/a/c/a/k;->h(Ljava/lang/String;)V

    goto :goto_7

    .line 184
    :cond_22
    instance-of v1, v3, Le/a/c/r/j/a$h;

    if-eqz v1, :cond_23

    invoke-virtual {v3}, Le/a/c/r/j/a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v7, v1}, Le/a/a/c/a/k;->h(Ljava/lang/String;)V

    .line 185
    :cond_23
    :goto_7
    invoke-virtual {v7}, Le/a/a/c/a/k;->a()Lcom/google/android/material/chip/Chip;

    move-result-object v13

    .line 186
    new-instance v14, Le/a/a/c/a/l;

    move-object v1, v14

    move-object/from16 v2, p3

    move-object v4, v9

    move-object v5, v8

    move v6, v12

    invoke-direct/range {v1 .. v6}, Le/a/a/c/a/l;-><init>(Le/a/a/c/a/k$a;Le/a/c/r/j/a;Lcom/truecaller/messaging/data/types/Message;Ls1/k;Z)V

    invoke-virtual {v13, v14}, Landroid/widget/CheckBox;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 187
    iget-object v1, v7, Le/a/a/c/a/k;->f:Ls1/g;

    invoke-interface {v1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 188
    new-instance v2, Le/a/a/c/a/m;

    invoke-direct {v2, v9, v11, v8, v12}, Le/a/a/c/a/m;-><init>(Lcom/truecaller/messaging/data/types/Message;Le/a/a/c/a/k$a;Ls1/k;Z)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_8

    .line 189
    :cond_24
    invoke-virtual {v7}, Le/a/a/c/a/k;->a()Lcom/google/android/material/chip/Chip;

    move-result-object v1

    if-eqz v1, :cond_25

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setVisibility(I)V

    .line 190
    :cond_25
    :goto_8
    iget-object v1, v10, Le/a/c/r/j/s;->c:Le/a/c/r/j/a;

    .line 191
    instance-of v1, v1, Le/a/c/r/j/a$f;

    .line 192
    iget-object v2, v7, Le/a/a/c/a/k;->f:Ls1/g;

    invoke-interface {v2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    const-string v3, "deleteButton"

    .line 193
    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2, v1}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    move-object/from16 v1, v20

    const v2, 0x7f0a103a

    .line 194
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_27

    .line 195
    iget-object v2, v7, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 196
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    const/4 v2, 0x1

    .line 197
    invoke-virtual {v0, v1, v2}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 198
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v0, v2, v7}, Le/a/a/c/d;->y5(Ljava/lang/Object;Le/a/a/c/r8/c;)Ljava/util/List;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    goto :goto_9

    :cond_26
    move-object/from16 v7, v16

    .line 199
    :cond_27
    :goto_9
    iput-object v7, v0, Le/a/a/c/d;->g0:Le/a/a/c/a/k;

    :cond_28
    return-void
.end method

.method public l5(I)V
    .locals 2

    .line 1
    iput p1, p0, Le/a/a/c/d;->L:I

    .line 2
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    iget v1, p0, Le/a/a/c/d;->K:I

    invoke-static {p1, v1}, Ln3/k/c/a;->g(II)I

    move-result p1

    invoke-virtual {v0, p1}, Landroid/view/View;->setBackgroundColor(I)V

    return-void
.end method

.method public m0(Ls1/z/b/l;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_0

    new-instance v1, Le/a/a/c/d$c;

    const/4 v2, 0x0

    invoke-direct {v1, v2, p1}, Le/a/a/c/d$c;-><init>(ILjava/lang/Object;)V

    .line 2
    new-instance v2, Le/a/a/c/f7;

    invoke-direct {v2, p0, v1}, Le/a/a/c/f7;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v2}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 3
    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v1, "itemView"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Le/a/a/c/d$c;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1}, Le/a/a/c/d$c;-><init>(ILjava/lang/Object;)V

    .line 4
    new-instance p1, Le/a/a/c/f7;

    invoke-direct {p1, p0, v1}, Le/a/a/c/f7;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, p1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public final m5(Landroid/view/View;Le/a/a/c/c3;)V
    .locals 4

    const v0, 0x7f0a0484

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Le/a/a/c/v6;

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "itemView.resources"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget v2, p2, Le/a/a/c/c3;->r:I

    .line 4
    iget v3, p2, Le/a/a/c/c3;->t:I

    .line 5
    iget p2, p2, Le/a/a/c/c3;->I:I

    .line 6
    invoke-direct {v0, v1, v2, v3, p2}, Le/a/a/c/v6;-><init>(Landroid/content/res/Resources;III)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    :cond_0
    return-void
.end method

.method public n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/c/d;->C:Ljava/lang/String;

    return-void
.end method

.method public n1()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->x:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/linkpreviews/LinkPreviewMessageView;

    if-eqz v0, :cond_0

    .line 2
    invoke-static {v0}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :cond_0
    return-void
.end method

.method public n2(Landroid/net/Uri;ILe/a/a/c/c3;)V
    .locals 1

    const-string v0, "videoFrame"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "params"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p1, p2, p2, p3}, Le/a/a/c/d;->D3(Landroid/net/Uri;IILe/a/a/c/c3;)V

    return-void
.end method

.method public n4(Le/a/a/c/c3;II)V
    .locals 2

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    iget-boolean v1, p1, Le/a/a/c/c3;->k:Z

    invoke-interface {v0, v1}, Le/a/a/c/t7;->g(Z)Le/a/a/c/r8/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p1, p2, p3}, Le/a/a/c/d;->Q4(Landroid/view/View;Le/a/a/c/c3;II)V

    .line 4
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->k5(Landroid/view/View;Le/a/a/c/c3;)V

    return-void
.end method

.method public final n5(Landroidx/appcompat/widget/AppCompatImageView;)V
    .locals 2

    .line 1
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    const v1, 0x7f08180d

    .line 3
    invoke-static {v0, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 4
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 5
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04060f

    invoke-static {v0, v1}, Le/a/p5/s0/g;->M(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 6
    invoke-virtual {p1}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f04060e

    invoke-static {v0, v1}, Le/a/p5/s0/g;->M(Landroid/content/Context;I)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageTintList(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public o4(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->b5()Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public final o5(Landroid/view/View;Le/a/a/c/c3;)V
    .locals 1

    const v0, 0x7f0a066f

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const/4 v0, 0x1

    .line 2
    invoke-virtual {p0, p1, v0}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 3
    iget v0, p2, Le/a/a/c/c3;->w:I

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setTextColor(I)V

    const-string v0, "duration"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p2, Le/a/a/c/c3;->v:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget p2, p2, Le/a/a/c/c3;->u:I

    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, p2, v0, v0, v0}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    return-void
.end method

.method public onPreDraw()Z
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/TextView;->getLayout()Landroid/text/Layout;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x1

    if-nez v0, :cond_1

    :cond_1
    return v1
.end method

.method public p3(Le/a/a/c/c3;Le/a/a/c/j8/a;)V
    .locals 1

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "emoji"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    iget-boolean p1, p1, Le/a/a/c/c3;->k:Z

    invoke-interface {v0, p1}, Le/a/a/c/t7;->h(Z)Le/a/a/c/r8/c;

    move-result-object p1

    .line 2
    iget-object p1, p1, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p0, p1}, Le/a/a/c/d;->P4(Landroid/view/View;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Le/a/m0/a1$k;->K1(Landroid/content/Context;)Le/a/z3/e;

    move-result-object v0

    .line 5
    iget p2, p2, Le/a/a/c/j8/a;->b:I

    .line 6
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p2

    invoke-virtual {v0, p2}, Le/a/z3/e;->A(Ljava/lang/Integer;)Le/a/z3/d;

    move-result-object p2

    const v0, 0x7f0a0987

    .line 7
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ImageView;

    invoke-virtual {p2, p1}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    return-void
.end method

.method public final p5(Landroid/view/View;Landroid/net/Uri;IILe/a/a/c/c3;)V
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p5

    const v3, 0x7f0a0987

    move-object/from16 v4, p1

    .line 1
    invoke-virtual {v4, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/ImageView;

    .line 2
    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f060253

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const-string v5, "imageView"

    .line 3
    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v5, 0x0

    .line 4
    invoke-virtual {v3, v5}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 5
    invoke-virtual {v3}, Landroid/widget/ImageView;->getContext()Landroid/content/Context;

    move-result-object v14

    .line 6
    iget-boolean v6, v2, Le/a/a/c/c3;->y:Z

    if-eqz v6, :cond_0

    new-instance v6, Le/a/b0/q/m0;

    invoke-direct {v6, v4}, Le/a/b0/q/m0;-><init>(I)V

    goto :goto_0

    :cond_0
    new-instance v6, Le/a/b0/q/p;

    invoke-direct {v6}, Le/a/b0/q/p;-><init>()V

    :goto_0
    const/4 v4, 0x3

    new-array v4, v4, [Le/f/a/n/q/d/f;

    .line 7
    new-instance v7, Le/f/a/n/q/d/i;

    invoke-direct {v7}, Le/f/a/n/q/d/i;-><init>()V

    aput-object v7, v4, v5

    const/4 v15, 0x1

    aput-object v6, v4, v15

    .line 8
    iget v6, v2, Le/a/a/c/c3;->I:I

    .line 9
    iget-object v7, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v8, "itemView"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v7}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v9, 0x7f070360

    invoke-virtual {v7, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    .line 10
    iget-object v9, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v9, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v9}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    const v10, 0x7f070361

    invoke-virtual {v9, v10}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v9

    .line 11
    iget-object v10, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v10, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v10}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v8

    const-string v10, "itemView.context"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const-string v10, "itemView.context.resources"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v8

    const-string v10, "itemView.context.resources.configuration"

    invoke-static {v8, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v8}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v8

    if-ne v8, v15, :cond_1

    move v5, v15

    .line 12
    :cond_1
    new-instance v8, Le/f/a/n/q/d/s;

    const/16 v10, 0x8

    if-eqz v5, :cond_2

    move v11, v10

    goto :goto_1

    :cond_2
    move v11, v15

    :goto_1
    and-int/2addr v11, v6

    if-eqz v11, :cond_3

    move v11, v9

    goto :goto_2

    :cond_3
    move v11, v7

    :goto_2
    if-eqz v5, :cond_4

    move v10, v15

    :cond_4
    and-int/2addr v10, v6

    if-eqz v10, :cond_5

    move v10, v9

    goto :goto_3

    :cond_5
    move v10, v7

    :goto_3
    const/4 v12, 0x2

    if-eqz v5, :cond_6

    move v13, v12

    goto :goto_4

    :cond_6
    const/4 v13, 0x4

    :goto_4
    and-int/2addr v13, v6

    if-eqz v13, :cond_7

    move v13, v9

    goto :goto_5

    :cond_7
    move v13, v7

    :goto_5
    if-eqz v5, :cond_8

    const/4 v5, 0x4

    goto :goto_6

    :cond_8
    move v5, v12

    :goto_6
    and-int/2addr v5, v6

    if-eqz v5, :cond_9

    move v7, v9

    :cond_9
    invoke-direct {v8, v11, v10, v13, v7}, Le/f/a/n/q/d/s;-><init>(FFFF)V

    aput-object v8, v4, v12

    .line 13
    invoke-static {v4}, Ls1/u/i;->T([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v4

    .line 14
    iget-boolean v5, v2, Le/a/a/c/c3;->o:Z

    if-nez v5, :cond_b

    iget-boolean v5, v2, Le/a/a/c/c3;->n:Z

    if-nez v5, :cond_b

    iget-boolean v5, v2, Le/a/a/c/c3;->m:Z

    if-nez v5, :cond_b

    iget-boolean v5, v2, Le/a/a/c/c3;->l:Z

    if-eqz v5, :cond_a

    goto :goto_7

    :cond_a
    move/from16 v5, p4

    goto :goto_8

    .line 15
    :cond_b
    :goto_7
    iget v5, v0, Le/a/a/c/d;->U:I

    move/from16 v6, p4

    invoke-static {v6, v5}, Ljava/lang/Math;->max(II)I

    move-result v5

    .line 16
    :goto_8
    new-instance v13, Le/a/a/c/j7;

    const-string v6, "context"

    .line 17
    invoke-static {v14, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget v8, v2, Le/a/a/c/c3;->r:I

    .line 19
    iget v9, v2, Le/a/a/c/c3;->f:I

    .line 20
    iget v10, v2, Le/a/a/c/c3;->s:I

    .line 21
    iget-boolean v12, v2, Le/a/a/c/c3;->J:Z

    move-object v6, v13

    move-object v7, v14

    move/from16 v11, p3

    move/from16 v16, v12

    move v12, v5

    move-object/from16 v17, v13

    move/from16 v13, v16

    .line 22
    invoke-direct/range {v6 .. v13}, Le/a/a/c/j7;-><init>(Landroid/content/Context;IIIIIZ)V

    .line 23
    invoke-static {v14}, Le/f/a/c;->e(Landroid/content/Context;)Le/f/a/i;

    move-result-object v6

    check-cast v6, Le/a/z3/e;

    .line 24
    invoke-virtual {v6}, Le/a/z3/e;->k()Le/f/a/h;

    move-result-object v6

    move-object v7, v6

    check-cast v7, Le/a/z3/d;

    .line 25
    iput-object v1, v7, Le/f/a/h;->J:Ljava/lang/Object;

    .line 26
    iput-boolean v15, v7, Le/f/a/h;->N:Z

    .line 27
    check-cast v6, Le/a/z3/d;

    move-object/from16 v7, v17

    .line 28
    invoke-virtual {v6, v7}, Le/a/z3/d;->p0(Landroid/graphics/drawable/Drawable;)Le/a/z3/d;

    move-result-object v6

    move/from16 v7, p3

    .line 29
    invoke-virtual {v6, v7, v5}, Le/a/z3/d;->n0(II)Le/a/z3/d;

    move-result-object v5

    .line 30
    iget-object v2, v2, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    if-eqz v2, :cond_c

    invoke-virtual {v2}, Lcom/truecaller/messaging/data/types/Entity;->h()Z

    move-result v2

    if-ne v2, v15, :cond_c

    sget-object v2, Le/f/a/n/o/k;->c:Le/f/a/n/o/k;

    goto :goto_9

    :cond_c
    sget-object v2, Le/f/a/n/o/k;->d:Le/f/a/n/o/k;

    :goto_9
    invoke-virtual {v5, v2}, Le/a/z3/d;->f0(Le/f/a/n/o/k;)Le/a/z3/d;

    move-result-object v2

    .line 31
    new-instance v5, Le/f/a/n/g;

    invoke-direct {v5, v4}, Le/f/a/n/g;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-virtual {v2, v5, v15}, Le/f/a/r/a;->C(Le/f/a/n/m;Z)Le/f/a/r/a;

    move-result-object v2

    .line 33
    check-cast v2, Le/a/z3/d;

    .line 34
    invoke-virtual {v2, v3}, Le/f/a/h;->O(Landroid/widget/ImageView;)Le/f/a/r/k/l;

    .line 35
    invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    return-void
.end method

.method public q1(Le/a/a/c/c3;Le/a/c/y/f;Le/a/a/c/k/a/j$b;)V
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v9, p3

    const-string v3, "params"

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "infoCardUiModel"

    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "actionListener"

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v10

    if-eqz v10, :cond_11

    .line 2
    iget-object v6, v1, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    invoke-interface {v6}, Le/a/a/c/t7;->j()Le/a/a/c/n8/a;

    move-result-object v11

    const-string v6, "params.viewProvider.acquireInfoCardViewHolder()"

    invoke-static {v11, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-virtual/range {p0 .. p0}, Landroidx/recyclerview/widget/RecyclerView$c0;->getAbsoluteAdapterPosition()I

    move-result v12

    .line 4
    invoke-static {v2, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v1, v3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v3, v1, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    iput-object v3, v11, Le/a/a/c/n8/a;->b:Lcom/truecaller/messaging/data/types/Message;

    .line 6
    iput-object v2, v11, Le/a/a/c/n8/a;->c:Le/a/c/y/f;

    .line 7
    iput-object v9, v11, Le/a/a/c/n8/a;->d:Le/a/c/a/o/b;

    .line 8
    iget-object v3, v11, Le/a/a/c/n8/a;->e:Le/a/m3/d1;

    iget-object v13, v3, Le/a/m3/d1;->b:Le/a/c/a/g/n0;

    const-string v3, "viewInfocardBinding.smartCardContainer"

    invoke-static {v13, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    iget-object v14, v2, Le/a/c/y/f;->c:Le/a/c/y/l;

    .line 10
    iget-object v15, v1, Le/a/a/c/c3;->c:Lcom/truecaller/messaging/data/types/Message;

    .line 11
    iget-object v3, v13, Le/a/c/a/g/n0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v4, "root"

    .line 12
    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "root.context"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "$this$bindSmartCard"

    .line 13
    invoke-static {v13, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "smartCardUiModel"

    invoke-static {v14, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v9, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v4, "context"

    invoke-static {v3, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object v4, v13, Le/a/c/a/g/n0;->f:Landroid/widget/ImageView;

    const-string v5, "imageCategoryIcon"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 15
    iget-object v5, v14, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 16
    invoke-static {v5}, Le/a/c/a/r/f;->a(Lcom/truecaller/insights/smartcards/SmartCardCategory;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v4, v5}, Le/a/c/p/a;->D2(Landroid/widget/ImageView;Ljava/lang/Integer;)V

    .line 17
    iget-object v4, v13, Le/a/c/a/g/n0;->g:Landroid/widget/TextView;

    const-string v5, "textCategory"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 18
    iget-object v5, v14, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 19
    invoke-static {v5, v3}, Le/a/c/a/r/f;->c(Lcom/truecaller/insights/smartcards/SmartCardCategory;Landroid/content/Context;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 20
    iget-object v4, v13, Le/a/c/a/g/n0;->q:Landroid/widget/TextView;

    const-string v5, "textStatus"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 21
    iget-object v6, v14, Le/a/c/y/l;->b:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    const/4 v7, 0x0

    if-eqz v6, :cond_0

    .line 22
    invoke-virtual {v6}, Lcom/truecaller/insights/smartcards/SmartCardStatus;->getLabel()I

    move-result v6

    invoke-virtual {v3, v6}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_0
    move-object v6, v7

    :goto_0
    const/4 v8, 0x2

    invoke-static {v4, v6, v7, v8}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 23
    iget-object v4, v14, Le/a/c/y/l;->b:Lcom/truecaller/insights/smartcards/SmartCardStatus;

    if-eqz v4, :cond_1

    .line 24
    iget-object v6, v13, Le/a/c/a/g/n0;->q:Landroid/widget/TextView;

    invoke-static {v6, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Lcom/truecaller/insights/smartcards/SmartCardStatus;->getColor()I

    move-result v4

    invoke-static {v3, v4}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v4

    invoke-static {v4}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v4

    invoke-virtual {v6, v4}, Landroid/widget/TextView;->setBackgroundTintList(Landroid/content/res/ColorStateList;)V

    .line 25
    :cond_1
    iget-object v4, v13, Le/a/c/a/g/n0;->s:Landroid/widget/TextView;

    const-string v5, "textTitle"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 26
    iget-object v5, v14, Le/a/c/y/l;->c:Ljava/lang/String;

    .line 27
    iget-object v6, v14, Le/a/c/y/l;->f:Le/a/c/r/j/b0;

    .line 28
    invoke-static {v4, v5, v6}, Le/a/c/p/a;->G2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;)V

    .line 29
    iget-object v4, v14, Le/a/c/y/l;->a:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    .line 30
    sget-object v5, Lcom/truecaller/insights/smartcards/SmartCardCategory;->OTP:Lcom/truecaller/insights/smartcards/SmartCardCategory;

    if-ne v4, v5, :cond_2

    .line 31
    iget-object v4, v13, Le/a/c/a/g/n0;->s:Landroid/widget/TextView;

    const/high16 v5, 0x41c00000    # 24.0f

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_1

    .line 32
    :cond_2
    iget-object v4, v13, Le/a/c/a/g/n0;->s:Landroid/widget/TextView;

    const/high16 v5, 0x41800000    # 16.0f

    invoke-virtual {v4, v8, v5}, Landroid/widget/TextView;->setTextSize(IF)V

    .line 33
    :goto_1
    iget-object v4, v13, Le/a/c/a/g/n0;->r:Landroid/widget/TextView;

    const-string v5, "textSubtitle"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 34
    iget-object v5, v14, Le/a/c/y/l;->g:Ljava/lang/String;

    .line 35
    invoke-static {v4, v5, v7, v8}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 36
    iget-object v4, v13, Le/a/c/a/g/n0;->p:Landroid/widget/TextView;

    const-string v5, "textRightTitle"

    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 37
    iget-object v5, v14, Le/a/c/y/l;->h:Ljava/lang/String;

    .line 38
    invoke-static {v4, v5, v7, v8}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 39
    iget-object v4, v14, Le/a/c/y/l;->i:Ljava/lang/Integer;

    if-eqz v4, :cond_3

    .line 40
    invoke-virtual {v4}, Ljava/lang/Number;->intValue()I

    move-result v4

    .line 41
    iget-object v5, v13, Le/a/c/a/g/n0;->p:Landroid/widget/TextView;

    .line 42
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 43
    invoke-static {v3, v4}, Ln3/k/b/a$d;->a(Landroid/content/Context;I)I

    move-result v3

    .line 44
    invoke-virtual {v5, v3}, Landroid/widget/TextView;->setTextColor(I)V

    .line 45
    :cond_3
    iget-object v3, v14, Le/a/c/y/l;->k:Ljava/util/List;

    const/4 v4, 0x0

    .line 46
    invoke-static {v3, v4}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Le/a/c/y/j;

    .line 47
    iget-object v5, v14, Le/a/c/y/l;->k:Ljava/util/List;

    const/4 v6, 0x1

    .line 48
    invoke-static {v5, v6}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Le/a/c/y/j;

    .line 49
    iget-object v6, v14, Le/a/c/y/l;->k:Ljava/util/List;

    .line 50
    invoke-static {v6, v8}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Le/a/c/y/j;

    .line 51
    iget-object v4, v14, Le/a/c/y/l;->k:Ljava/util/List;

    const/4 v7, 0x3

    .line 52
    invoke-static {v4, v7}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Le/a/c/y/j;

    .line 53
    iget-object v7, v13, Le/a/c/a/g/n0;->h:Landroid/widget/TextView;

    const-string v8, "textInfo1Name"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_4

    .line 54
    iget-object v8, v3, Le/a/c/y/j;->a:Ljava/lang/String;

    const/4 v1, 0x0

    goto :goto_2

    :cond_4
    const/4 v1, 0x0

    const/4 v8, 0x0

    :goto_2
    const/4 v9, 0x2

    .line 55
    invoke-static {v7, v8, v1, v9}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 56
    iget-object v7, v13, Le/a/c/a/g/n0;->j:Landroid/widget/TextView;

    const-string v8, "textInfo2Name"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_5

    .line 57
    iget-object v8, v5, Le/a/c/y/j;->a:Ljava/lang/String;

    goto :goto_3

    :cond_5
    move-object v8, v1

    .line 58
    :goto_3
    invoke-static {v7, v8, v1, v9}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 59
    iget-object v7, v13, Le/a/c/a/g/n0;->l:Landroid/widget/TextView;

    const-string v8, "textInfo3Name"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_6

    .line 60
    iget-object v8, v6, Le/a/c/y/j;->a:Ljava/lang/String;

    goto :goto_4

    :cond_6
    move-object v8, v1

    .line 61
    :goto_4
    invoke-static {v7, v8, v1, v9}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 62
    iget-object v7, v13, Le/a/c/a/g/n0;->n:Landroid/widget/TextView;

    const-string v8, "textInfo4Name"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_7

    .line 63
    iget-object v8, v4, Le/a/c/y/j;->a:Ljava/lang/String;

    goto :goto_5

    :cond_7
    move-object v8, v1

    .line 64
    :goto_5
    invoke-static {v7, v8, v1, v9}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 65
    iget-object v7, v13, Le/a/c/a/g/n0;->i:Landroid/widget/TextView;

    const-string v8, "textInfo1Value"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_8

    .line 66
    iget-object v3, v3, Le/a/c/y/j;->b:Ljava/lang/String;

    goto :goto_6

    :cond_8
    move-object v3, v1

    .line 67
    :goto_6
    invoke-static {v7, v3, v1, v9}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 68
    iget-object v3, v13, Le/a/c/a/g/n0;->k:Landroid/widget/TextView;

    const-string v7, "textInfo2Value"

    invoke-static {v3, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v5, :cond_9

    .line 69
    iget-object v5, v5, Le/a/c/y/j;->b:Ljava/lang/String;

    goto :goto_7

    :cond_9
    move-object v5, v1

    .line 70
    :goto_7
    invoke-static {v3, v5, v1, v9}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 71
    iget-object v3, v13, Le/a/c/a/g/n0;->m:Landroid/widget/TextView;

    const-string v5, "textInfo3Value"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v6, :cond_a

    .line 72
    iget-object v5, v6, Le/a/c/y/j;->b:Ljava/lang/String;

    goto :goto_8

    :cond_a
    move-object v5, v1

    .line 73
    :goto_8
    invoke-static {v3, v5, v1, v9}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 74
    iget-object v3, v13, Le/a/c/a/g/n0;->o:Landroid/widget/TextView;

    const-string v5, "textInfo4Value"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v4, :cond_b

    .line 75
    iget-object v4, v4, Le/a/c/y/j;->b:Ljava/lang/String;

    goto :goto_9

    :cond_b
    move-object v4, v1

    .line 76
    :goto_9
    invoke-static {v3, v4, v1, v9}, Le/a/c/p/a;->H2(Landroid/widget/TextView;Ljava/lang/String;Le/a/c/r/j/b0;I)V

    .line 77
    iget-object v1, v14, Le/a/c/y/l;->j:Ljava/util/List;

    const/4 v3, 0x0

    .line 78
    invoke-static {v1, v3}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/a/c/y/i;

    .line 79
    iget-object v1, v14, Le/a/c/y/l;->j:Ljava/util/List;

    const/4 v6, 0x1

    .line 80
    invoke-static {v1, v6}, Ls1/u/i;->G(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/c/y/i;

    .line 81
    iget-object v3, v13, Le/a/c/a/g/n0;->b:Lcom/google/android/material/button/MaterialButton;

    const-string v5, "buttonAction1"

    invoke-static {v3, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 82
    iget-object v7, v14, Le/a/c/y/l;->n:Ljava/lang/String;

    .line 83
    iget-boolean v8, v14, Le/a/c/y/l;->m:Z

    move-object/from16 v5, p3

    move v9, v6

    move-object v6, v7

    move v7, v8

    move v8, v12

    .line 84
    invoke-static/range {v3 .. v8}, Le/a/c/p/a;->A2(Landroid/widget/Button;Le/a/c/y/i;Le/a/c/a/o/b;Ljava/lang/String;ZI)V

    .line 85
    iget-object v3, v13, Le/a/c/a/g/n0;->c:Lcom/google/android/material/button/MaterialButton;

    const-string v4, "buttonAction2"

    invoke-static {v3, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 86
    iget-object v6, v14, Le/a/c/y/l;->n:Ljava/lang/String;

    .line 87
    iget-boolean v7, v14, Le/a/c/y/l;->m:Z

    move-object v4, v1

    .line 88
    invoke-static/range {v3 .. v8}, Le/a/c/p/a;->A2(Landroid/widget/Button;Le/a/c/y/i;Le/a/c/a/o/b;Ljava/lang/String;ZI)V

    .line 89
    iget-object v1, v13, Le/a/c/a/g/n0;->d:Landroid/widget/ImageView;

    const-string v3, "buttonDelete"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 90
    iget-object v4, v14, Le/a/c/y/l;->l:Le/a/c/y/i;

    .line 91
    iget-object v7, v14, Le/a/c/y/l;->n:Ljava/lang/String;

    .line 92
    iget-boolean v8, v14, Le/a/c/y/l;->m:Z

    if-eqz v4, :cond_d

    if-nez v15, :cond_c

    goto :goto_a

    .line 93
    :cond_c
    invoke-static {v1}, Le/a/p5/s0/f;->T(Landroid/view/View;)V

    .line 94
    invoke-virtual {v1}, Landroid/widget/ImageView;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v5, Lcom/truecaller/insights/ui/R$dimen;->dp48:I

    invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const-string v5, "view"

    .line 95
    invoke-static {v1, v5}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 96
    new-instance v5, Le/a/c/c0/a0;

    invoke-direct {v5, v1, v3, v3}, Le/a/c/c0/a0;-><init>(Landroid/view/View;II)V

    invoke-virtual {v1, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 97
    new-instance v12, Le/a/c/a/o/c;

    move-object v3, v12

    move-object/from16 v5, p3

    move-object v6, v15

    invoke-direct/range {v3 .. v8}, Le/a/c/a/o/c;-><init>(Le/a/c/y/i;Le/a/c/a/o/b;Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Z)V

    invoke-virtual {v1, v12}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_b

    .line 98
    :cond_d
    :goto_a
    invoke-static {v1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    :goto_b
    const v1, 0x7f0a103a

    .line 99
    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    if-eqz v1, :cond_e

    .line 100
    iget-object v3, v11, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 101
    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 102
    invoke-virtual {v0, v1, v9}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 103
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v0, v3, v11}, Le/a/a/c/d;->y5(Ljava/lang/Object;Le/a/a/c/r8/c;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->setTag(Ljava/lang/Object;)V

    .line 104
    :cond_e
    iget-object v1, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v1, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f07048a

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 105
    iget-object v4, v0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v4, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070311

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 106
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->e5()Landroid/widget/TextView;

    move-result-object v4

    if-eqz v4, :cond_f

    .line 107
    sget v5, Le/a/o5/j0;->b:I

    .line 108
    new-instance v5, Le/a/o5/b;

    invoke-direct {v5, v4, v3, v1}, Le/a/o5/b;-><init>(Landroid/view/View;II)V

    invoke-virtual {v4, v5}, Landroid/view/View;->post(Ljava/lang/Runnable;)Z

    .line 109
    :cond_f
    invoke-virtual/range {p0 .. p0}, Le/a/a/c/d;->e5()Landroid/widget/TextView;

    move-result-object v1

    if-eqz v1, :cond_10

    new-instance v3, Le/a/a/c/d$h0;

    move-object/from16 v4, p1

    invoke-direct {v3, v0, v4, v2}, Le/a/a/c/d$h0;-><init>(Le/a/a/c/d;Le/a/a/c/c3;Le/a/c/y/f;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 110
    :cond_10
    iput-object v11, v0, Le/a/a/c/d;->h0:Le/a/a/c/n8/a;

    :cond_11
    return-void
.end method

.method public final q5(Landroid/view/View;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Le/a/a/c/d$f0;

    invoke-direct {v0, p0, p2}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {p1, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void
.end method

.method public r4(Le/a/a/c/c3;)V
    .locals 12

    const-string v0, "params"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/a/c/c3;->a:Le/a/a/c/t7;

    iget-boolean v1, p1, Le/a/a/c/c3;->k:Z

    invoke-interface {v0, v1}, Le/a/a/c/t7;->f(Z)Le/a/a/c/r8/c;

    move-result-object v0

    .line 2
    iget-object v0, v0, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 3
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->m5(Landroid/view/View;Le/a/a/c/c3;)V

    .line 4
    iget-boolean v1, p1, Le/a/a/c/c3;->k:Z

    if-nez v1, :cond_0

    const v1, 0x7f0a10c0

    .line 5
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "statusText"

    .line 6
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p1, Le/a/a/c/c3;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget v2, p1, Le/a/a/c/c3;->f:I

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 8
    :cond_0
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->o5(Landroid/view/View;Le/a/a/c/c3;)V

    const v1, 0x7f0a066b

    .line 9
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v7, v1

    check-cast v7, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;

    .line 10
    iget v1, p1, Le/a/a/c/c3;->w:I

    invoke-virtual {v7, v1}, Landroid/widget/Chronometer;->setTextColor(I)V

    const/4 v8, 0x0

    .line 11
    invoke-virtual {p0, v7, v8}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 12
    invoke-virtual {v7}, Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;->a()V

    const v1, 0x7f0a13f8

    .line 13
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;

    .line 14
    iget-object v1, v4, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->c:Landroid/media/audiofx/Visualizer;

    const/4 v2, 0x0

    const/4 v9, 0x1

    if-eqz v1, :cond_1

    .line 15
    invoke-static {}, Landroid/media/audiofx/Visualizer;->getMaxCaptureRate()I

    move-result v3

    invoke-virtual {v1, v2, v3, v9, v9}, Landroid/media/audiofx/Visualizer;->setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I

    .line 16
    :cond_1
    invoke-virtual {p0, v4, v8}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    const v1, 0x7f0a096b

    .line 17
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    move-object v10, v1

    check-cast v10, Landroidx/appcompat/widget/AppCompatImageView;

    .line 18
    iget-boolean v1, p1, Le/a/a/c/c3;->n:Z

    if-eqz v1, :cond_2

    .line 19
    invoke-virtual {p0, v8, v0}, Le/a/a/c/d;->w5(ZLandroid/view/View;)V

    const v1, 0x7f080841

    .line 20
    invoke-virtual {v10, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 21
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 22
    invoke-virtual {v10, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 23
    :cond_2
    iget-boolean v1, p1, Le/a/a/c/c3;->o:Z

    if-eqz v1, :cond_4

    .line 24
    invoke-virtual {p0, v8, v0}, Le/a/a/c/d;->w5(ZLandroid/view/View;)V

    .line 25
    iget-boolean v1, p1, Le/a/a/c/c3;->m:Z

    if-eqz v1, :cond_3

    const v1, 0x7f080844

    goto :goto_0

    :cond_3
    const v1, 0x7f080840

    :goto_0
    invoke-virtual {v10, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 26
    new-instance v1, Le/a/a/c/d$a;

    invoke-direct {v1, v8, p0, p1}, Le/a/a/c/d$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 27
    new-instance v1, Le/a/a/c/d$a;

    invoke-direct {v1, v9, p0, p1}, Le/a/a/c/d$a;-><init>(ILjava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_1

    .line 28
    :cond_4
    new-instance v1, Le/a/a/c/s8/g;

    invoke-virtual {v0}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    const v5, 0x7f0405a1

    invoke-static {v3, v5}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v3

    invoke-direct {v1, v3}, Le/a/a/c/s8/g;-><init>(I)V

    .line 29
    iget-object v3, v4, Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;->d:Ljava/util/Set;

    invoke-interface {v3, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 30
    iget-boolean v1, p1, Le/a/a/c/c3;->l:Z

    xor-int/2addr v1, v9

    invoke-virtual {p0, v1, v0}, Le/a/a/c/d;->w5(ZLandroid/view/View;)V

    const v1, 0x7f080843

    .line 31
    invoke-virtual {v10, v1}, Landroidx/appcompat/widget/AppCompatImageView;->setImageResource(I)V

    .line 32
    invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 33
    new-instance v11, Le/a/a/c/d$e;

    move-object v1, v11

    move-object v2, p0

    move-object v3, p1

    move-object v5, v0

    move-object v6, v10

    invoke-direct/range {v1 .. v7}, Le/a/a/c/d$e;-><init>(Le/a/a/c/d;Le/a/a/c/c3;Lcom/truecaller/messaging/conversation/voice_notes/PlayerVisualizerView;Landroid/view/View;Landroidx/appcompat/widget/AppCompatImageView;Lcom/truecaller/messaging/conversation/voice_notes/CountDownChronometer;)V

    invoke-virtual {v10, v11}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_1
    const-string v1, "iconView"

    .line 34
    invoke-static {v10, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p1, Le/a/a/c/c3;->l:Z

    if-nez v1, :cond_6

    iget-boolean v1, p1, Le/a/a/c/c3;->C:Z

    if-eqz v1, :cond_5

    goto :goto_2

    :cond_5
    move v1, v8

    goto :goto_3

    :cond_6
    :goto_2
    const/4 v1, 0x4

    :goto_3
    invoke-virtual {v10, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    const v1, 0x7f0a01a1

    .line 35
    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_9

    iget-boolean v2, p1, Le/a/a/c/c3;->l:Z

    if-nez v2, :cond_7

    iget-boolean p1, p1, Le/a/a/c/c3;->C:Z

    if-eqz p1, :cond_8

    :cond_7
    move v8, v9

    :cond_8
    invoke-virtual {p0, v1, v8}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 36
    :cond_9
    new-instance p1, Le/a/a/c/d$f;

    invoke-direct {p1, p0}, Le/a/a/c/d$f;-><init>(Le/a/a/c/d;)V

    .line 37
    new-instance v1, Le/a/a/c/f7;

    invoke-direct {v1, p0, p1}, Le/a/a/c/f7;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 38
    invoke-virtual {p0, v0}, Le/a/a/c/d;->P4(Landroid/view/View;)V

    return-void
.end method

.method public final r5(Landroid/view/View;Le/a/a/c/c3;)V
    .locals 4

    const v0, 0x7f0a0b4c

    .line 1
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "frame.findViewById<View>(R.id.loading_progress)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p2, Le/a/a/c/c3;->l:Z

    const/16 v2, 0x8

    const/4 v3, 0x0

    if-eqz v1, :cond_0

    move v1, v3

    goto :goto_0

    :cond_0
    move v1, v2

    .line 2
    :goto_0
    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a09be

    .line 3
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const-string v1, "frame.findViewById<View>(R.id.image_expired)"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-boolean v1, p2, Le/a/a/c/c3;->n:Z

    if-eqz v1, :cond_1

    move v2, v3

    .line 4
    :cond_1
    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    const v0, 0x7f0a0099

    .line 5
    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    const v1, 0x7f0a10c0

    .line 6
    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const-string v2, "imageStatusText"

    .line 7
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p2, Le/a/a/c/c3;->x:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-boolean v1, p2, Le/a/a/c/c3;->o:Z

    const-string v2, "button"

    if-eqz v1, :cond_5

    .line 9
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    iget-object v1, p2, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    const/4 v2, 0x1

    if-eqz v1, :cond_2

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Entity;->o()Z

    move-result v1

    if-ne v1, v2, :cond_2

    iget-boolean v1, p2, Le/a/a/c/c3;->k:Z

    if-eqz v1, :cond_2

    .line 11
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080248

    .line 12
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 13
    invoke-static {p1, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    .line 14
    :cond_2
    iget-object v1, p2, Le/a/a/c/c3;->d:Lcom/truecaller/messaging/data/types/Entity;

    if-eqz v1, :cond_3

    invoke-virtual {v1}, Lcom/truecaller/messaging/data/types/Entity;->o()Z

    move-result v1

    if-ne v1, v2, :cond_3

    iget-boolean v1, p2, Le/a/a/c/c3;->k:Z

    if-nez v1, :cond_3

    .line 15
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080245

    .line 16
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 17
    invoke-static {p1, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    goto :goto_1

    .line 18
    :cond_3
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object p1

    const v1, 0x7f080244

    .line 19
    sget-object v2, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 20
    invoke-static {p1, v1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 21
    :goto_1
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 22
    iget-boolean p1, p2, Le/a/a/c/c3;->m:Z

    if-eqz p1, :cond_4

    const p1, 0x7f08037d

    goto :goto_2

    :cond_4
    const p1, 0x7f08037b

    :goto_2
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setImageResource(I)V

    .line 23
    invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 24
    new-instance p1, Le/a/a/c/d$g0;

    invoke-direct {p1, p0, p2}, Le/a/a/c/d$g0;-><init>(Le/a/a/c/d;Le/a/a/c/c3;)V

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_3

    .line 25
    :cond_5
    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p1, 0x4

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setVisibility(I)V

    const/4 p1, 0x0

    .line 26
    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :goto_3
    return-void
.end method

.method public s4(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->b5()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Le/a/a/c/d$f0;

    invoke-direct {v1, p0, p1}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public final s5(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;Lcom/truecaller/messaging/data/types/Message;Z)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->i0:Le/a/a/c/k/a/j;

    invoke-interface {v0, p3}, Le/a/a/c/k/a/j;->z(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p3

    .line 2
    invoke-virtual {p0}, Le/a/a/c/d;->e5()Landroid/widget/TextView;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;->NORMAL:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    if-eq p1, v1, :cond_1

    if-eqz p3, :cond_1

    sget-object p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;->EXPANDED:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutState;

    if-eq p2, p1, :cond_0

    if-eqz p4, :cond_1

    :cond_0
    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    .line 4
    :goto_0
    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public t0(Ls1/z/b/l;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "listener"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->e:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Le/a/a/c/d$f0;

    invoke-direct {v1, p0, p1}, Le/a/a/c/d$f0;-><init>(Le/a/a/c/d;Ls1/z/b/l;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_0
    return-void
.end method

.method public t3(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/a/c/d;->E:Z

    return-void
.end method

.method public final t5(Landroid/view/View;Z)V
    .locals 0

    if-eqz p1, :cond_1

    if-eqz p2, :cond_0

    const/4 p2, 0x0

    goto :goto_0

    :cond_0
    const/16 p2, 0x8

    .line 1
    :goto_0
    invoke-virtual {p1, p2}, Landroid/view/View;->setVisibility(I)V

    :cond_1
    return-void
.end method

.method public u2()V
    .locals 2

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->X4()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a137f

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    :goto_0
    if-eqz v0, :cond_1

    const/4 v1, 0x0

    .line 2
    invoke-virtual {p0, v0, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    :cond_1
    return-void
.end method

.method public u3(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->c5()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    :cond_0
    return-void
.end method

.method public u5(ILjava/lang/String;)V
    .locals 2

    const-string v0, "word"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Y4()Lcom/truecaller/android/truemoji/widget/EmojiTextView;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0, p1, p2}, Le/a/a/c/d;->i5(Landroid/widget/TextView;ILjava/lang/String;)V

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/a/c/d;->X4()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_1

    const v1, 0x7f0a1245

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    invoke-virtual {p0, v0, p1, p2}, Le/a/a/c/d;->i5(Landroid/widget/TextView;ILjava/lang/String;)V

    :cond_1
    return-void
.end method

.method public v2()V
    .locals 2

    const/4 v0, 0x1

    .line 1
    invoke-virtual {p0, v0}, Le/a/a/c/d;->P2(Z)V

    .line 2
    invoke-virtual {p0}, Le/a/a/c/d;->X4()Landroid/view/ViewGroup;

    move-result-object v0

    const v1, 0x7f0a1387

    if-eqz v0, :cond_0

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/MessageSnippetView;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/truecaller/messaging/conversation/MessageSnippetView;

    :goto_0
    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/truecaller/messaging/conversation/MessageSnippetView;->b()V

    :cond_1
    return-void
.end method

.method public final v5(Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;)V
    .locals 6

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_7

    const v1, 0x7f0a103a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    if-eqz v0, :cond_7

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getTag()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_7

    .line 2
    invoke-virtual {p0, v0}, Le/a/a/c/d;->S4(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/a/c/r8/c;

    instance-of v4, v4, Le/a/a/c/a/a;

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_1
    move-object v2, v3

    :goto_0
    check-cast v2, Le/a/a/c/r8/c;

    if-eqz v2, :cond_7

    .line 4
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    move-object v4, v1

    check-cast v4, Le/a/a/c/r8/c;

    instance-of v4, v4, Le/a/a/c/a/k;

    if-eqz v4, :cond_2

    move-object v3, v1

    :cond_3
    check-cast v3, Le/a/a/c/r8/c;

    .line 5
    instance-of v0, v3, Le/a/a/c/a/k;

    if-nez v0, :cond_4

    return-void

    .line 6
    :cond_4
    iget-object v0, p1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->k:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    sget-object v1, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;->EXPANDABLE:Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView$LayoutStyle;

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ne v0, v1, :cond_5

    move v0, v5

    goto :goto_1

    :cond_5
    move v0, v4

    :goto_1
    if-eqz v0, :cond_6

    .line 7
    invoke-virtual {p1}, Lcom/truecaller/messaging/conversation/ExpandableEmojiTextView;->l()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    iget-object p1, v2, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 9
    invoke-static {p1}, Le/a/p5/s0/f;->O(Landroid/view/View;)V

    .line 10
    check-cast v3, Le/a/a/c/a/k;

    invoke-virtual {v3, v4}, Le/a/a/c/a/k;->i(Z)V

    goto :goto_2

    .line 11
    :cond_6
    iget-object p1, v2, Le/a/a/c/r8/c;->a:Landroid/view/View;

    .line 12
    invoke-virtual {p0, p1, v5}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 13
    check-cast v3, Le/a/a/c/a/k;

    invoke-virtual {v3, v5}, Le/a/a/c/a/k;->i(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method public w0(Lcom/truecaller/messaging/data/types/Message;[Lcom/truecaller/messaging/data/types/QuickAction;)V
    .locals 12

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "quickActions"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->c5()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 2
    :cond_0
    invoke-virtual {p0}, Le/a/a/c/d;->c5()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    array-length v7, p2

    const/4 v8, 0x0

    move v9, v8

    :goto_0
    if-ge v9, v7, :cond_1

    aget-object v2, p2, v9

    .line 4
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v3, 0x7f0d029f

    invoke-virtual {v1, v3, v0, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.widget.TextView"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    move-object v10, v1

    check-cast v10, Landroid/widget/TextView;

    .line 5
    iget-object v1, v2, Lcom/truecaller/messaging/data/types/QuickAction;->d:Ljava/lang/String;

    .line 6
    invoke-virtual {v10, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    new-instance v11, Le/a/a/c/d$u;

    move-object v1, v11

    move-object v3, v0

    move-object v4, p0

    move-object v5, p2

    move-object v6, p1

    invoke-direct/range {v1 .. v6}, Le/a/a/c/d$u;-><init>(Lcom/truecaller/messaging/data/types/QuickAction;Landroid/widget/LinearLayout;Le/a/a/c/d;[Lcom/truecaller/messaging/data/types/QuickAction;Lcom/truecaller/messaging/data/types/Message;)V

    invoke-virtual {v10, v11}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 8
    invoke-virtual {v0, v10}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    :cond_1
    return-void
.end method

.method public w4(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/a/c/d;->J:Z

    return-void
.end method

.method public final w5(ZLandroid/view/View;)V
    .locals 1

    const v0, 0x7f0a13f9

    .line 1
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    const v0, 0x7f0a066f

    .line 2
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    const v0, 0x7f0a13fa

    .line 3
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    xor-int/lit8 p1, p1, 0x1

    invoke-virtual {p0, v0, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    const v0, 0x7f0a10c0

    .line 4
    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p0, p2, p1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public x2(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/a/c/d;->D:Z

    return-void
.end method

.method public x3(Lcom/truecaller/messaging/data/types/Message;Z)V
    .locals 4

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 3
    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "reactionsView.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x7f0d029a

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v0, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 5
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 6
    new-instance v1, Le/a/a/c/d$v;

    invoke-direct {v1, p0, p1, p2}, Le/a/a/c/d$v;-><init>(Le/a/a/c/d;Lcom/truecaller/messaging/data/types/Message;Z)V

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0, p1, p2}, Le/a/a/c/d;->x5(Lcom/truecaller/messaging/data/types/Message;Z)V

    :cond_0
    return-void
.end method

.method public x4(Lcom/truecaller/messaging/data/types/Message;)V
    .locals 6

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/a/c/d;->s:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz v0, :cond_0

    const v1, 0x7f08080d

    .line 2
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    :cond_0
    iget-object v0, p0, Le/a/a/c/d;->r:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f1201e2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget v5, p1, Lcom/truecaller/messaging/data/types/Message;->D:I

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    :cond_1
    invoke-virtual {p0}, Le/a/a/c/d;->Z4()Landroid/view/ViewGroup;

    move-result-object v0

    if-eqz v0, :cond_2

    new-instance v1, Le/a/a/c/d$m;

    invoke-direct {v1, p0, p1}, Le/a/a/c/d$m;-><init>(Le/a/a/c/d;Lcom/truecaller/messaging/data/types/Message;)V

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_2
    return-void
.end method

.method public final x5(Lcom/truecaller/messaging/data/types/Message;Z)V
    .locals 3

    if-eqz p2, :cond_0

    const p2, 0x7f0a0484

    goto :goto_0

    :cond_0
    const p2, 0x7f0a13f3

    .line 1
    :goto_0
    invoke-virtual {p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object v0

    if-eqz v0, :cond_3

    invoke-virtual {p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Landroid/widget/LinearLayout;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    goto :goto_1

    :cond_1
    const/4 v1, 0x0

    :goto_1
    const-string v2, "null cannot be cast to non-null type androidx.constraintlayout.widget.ConstraintLayout.LayoutParams"

    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;

    .line 2
    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->k:I

    .line 3
    invoke-static {p1}, Le/a/c/p/a;->x1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 4
    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->r:I

    goto :goto_2

    .line 5
    :cond_2
    iput p2, v1, Landroidx/constraintlayout/widget/ConstraintLayout$a;->p:I

    .line 6
    :goto_2
    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 7
    :cond_3
    iget-boolean p2, p0, Le/a/a/c/d;->Y:Z

    if-eqz p2, :cond_4

    invoke-static {p1}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p2

    if-eqz p2, :cond_4

    return-void

    .line 8
    :cond_4
    invoke-static {p1}, Le/a/c/p/a;->s1(Lcom/truecaller/messaging/data/types/Message;)Z

    move-result p1

    .line 9
    iget-object p2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v0, "itemView"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object p2

    const-string v0, "itemView.resources"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object p2

    const-string v0, "itemView.resources.configuration"

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result p2

    const/4 v0, 0x1

    if-ne p2, v0, :cond_5

    goto :goto_3

    :cond_5
    const/4 v0, 0x0

    :goto_3
    if-ne p1, v0, :cond_6

    iget p1, p0, Le/a/a/c/d;->S:F

    goto :goto_4

    .line 10
    :cond_6
    iget p1, p0, Le/a/a/c/d;->S:F

    neg-float p1, p1

    .line 11
    :goto_4
    invoke-virtual {p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p2, :cond_7

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTranslationX(F)V

    .line 12
    :cond_7
    invoke-virtual {p0}, Le/a/a/c/d;->d5()Landroid/widget/LinearLayout;

    move-result-object p2

    if-eqz p2, :cond_8

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/LinearLayout;->setTag(Ljava/lang/Object;)V

    :cond_8
    return-void
.end method

.method public y3(Ljava/lang/String;I)V
    .locals 4

    const-string v0, "inviteKey"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->U4()Landroid/widget/TextView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    const v2, 0x7f080723

    const/4 v3, 0x0

    .line 2
    invoke-virtual {v0, v2, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(IIII)V

    .line 3
    iget-object v2, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v3, "itemView"

    invoke-static {v2, v3}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x7f1202ce

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 5
    invoke-static {v0, p2}, Le/a/p5/s0/g;->q1(Landroid/widget/TextView;I)V

    .line 6
    new-instance v2, Le/a/a/c/d$j;

    invoke-direct {v2, p0, p2, p1}, Le/a/a/c/d$j;-><init>(Le/a/a/c/d;ILjava/lang/String;)V

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 7
    invoke-virtual {p0, v0, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    .line 8
    :cond_0
    invoke-virtual {p0}, Le/a/a/c/d;->V4()Landroid/view/View;

    move-result-object p1

    invoke-virtual {p0, p1, v1}, Le/a/a/c/d;->t5(Landroid/view/View;Z)V

    return-void
.end method

.method public y4(Lcom/truecaller/messaging/data/types/Message;Ljava/lang/String;Ljava/lang/String;)V
    .locals 7

    const-string v0, "message"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "statusText"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionText"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Le/a/a/c/d;->h5()Landroid/widget/TextView;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v1, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    const-string v2, "itemView"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v3, 0x7f040611

    invoke-static {v1, v3}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v1

    .line 3
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    .line 4
    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawablesRelative()[Landroid/graphics/drawable/Drawable;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_0

    invoke-virtual {v3, v1}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 5
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1}, Landroid/text/SpannableStringBuilder;-><init>()V

    .line 6
    invoke-virtual {v1, p2}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    const-string v3, " \u2022 "

    .line 7
    invoke-virtual {v1, v3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 8
    invoke-virtual {v1, p3}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 9
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v3

    add-int/lit8 v3, v3, 0x3

    .line 10
    invoke-virtual {p3}, Ljava/lang/String;->length()I

    move-result v4

    add-int/2addr v4, v3

    .line 11
    new-instance v5, Le/a/p5/w0/b;

    .line 12
    iget-object v6, p0, Landroidx/recyclerview/widget/RecyclerView$c0;->itemView:Landroid/view/View;

    invoke-static {v6, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v6}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    const v6, 0x7f0405a1

    invoke-static {v2, v6}, Le/a/p5/s0/g;->L(Landroid/content/Context;I)I

    move-result v2

    .line 13
    new-instance v6, Le/a/a/c/b7;

    invoke-direct {v6, p0, p2, p3, p1}, Le/a/a/c/b7;-><init>(Le/a/a/c/d;Ljava/lang/String;Ljava/lang/String;Lcom/truecaller/messaging/data/types/Message;)V

    .line 14
    invoke-direct {v5, v2, v6}, Le/a/p5/w0/b;-><init>(ILs1/z/b/a;)V

    .line 15
    new-instance p1, Landroid/text/style/StyleSpan;

    const/4 p2, 0x1

    invoke-direct {p1, p2}, Landroid/text/style/StyleSpan;-><init>(I)V

    const/16 p2, 0x21

    invoke-virtual {v1, p1, v3, v4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 16
    invoke-virtual {v1, v5, v3, v4, p2}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 17
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 18
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    :cond_1
    return-void
.end method

.method public final y5(Ljava/lang/Object;Le/a/a/c/r8/c;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Le/a/a/c/r8/c;",
            ")",
            "Ljava/util/List<",
            "Le/a/a/c/r8/c;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Le/a/a/c/d;->S4(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    .line 2
    invoke-static {p1}, Ls1/u/i;->a1(Ljava/util/Collection;)Ljava/util/List;

    move-result-object p1

    .line 3
    move-object v0, p1

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-object p1
.end method
