.class public Lcom/google/android/material/navigation/NavigationView;
.super Le/m/a/g/o/i;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/material/navigation/NavigationView$SavedState;,
        Lcom/google/android/material/navigation/NavigationView$a;
    }
.end annotation


# static fields
.field public static final m:[I

.field public static final n:[I

.field public static final o:I


# instance fields
.field public final f:Le/m/a/g/o/f;

.field public final g:Le/m/a/g/o/g;

.field public h:Lcom/google/android/material/navigation/NavigationView$a;

.field public final i:I

.field public final j:[I

.field public k:Landroid/view/MenuInflater;

.field public l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# direct methods
.method public static constructor <clinit>()V
    .locals 4

    const/4 v0, 0x1

    new-array v1, v0, [I

    const v2, 0x10100a0

    const/4 v3, 0x0

    aput v2, v1, v3

    .line 1
    sput-object v1, Lcom/google/android/material/navigation/NavigationView;->m:[I

    new-array v0, v0, [I

    const v1, -0x101009e

    aput v1, v0, v3

    .line 2
    sput-object v0, Lcom/google/android/material/navigation/NavigationView;->n:[I

    .line 3
    sget v0, Lcom/google/android/material/R$style;->Widget_Design_NavigationView:I

    sput v0, Lcom/google/android/material/navigation/NavigationView;->o:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 21

    move-object/from16 v0, p0

    move-object/from16 v7, p2

    .line 1
    sget v8, Lcom/google/android/material/R$attr;->navigationViewStyle:I

    .line 2
    sget v9, Lcom/google/android/material/navigation/NavigationView;->o:I

    move-object/from16 v1, p1

    invoke-static {v1, v7, v8, v9}, Le/m/a/g/z/a/a;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, v7, v8}, Le/m/a/g/o/i;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 3
    new-instance v10, Le/m/a/g/o/g;

    invoke-direct {v10}, Le/m/a/g/o/g;-><init>()V

    iput-object v10, v0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    const/4 v1, 0x2

    new-array v1, v1, [I

    .line 4
    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->j:[I

    .line 5
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v11

    .line 6
    new-instance v12, Le/m/a/g/o/f;

    invoke-direct {v12, v11}, Le/m/a/g/o/f;-><init>(Landroid/content/Context;)V

    iput-object v12, v0, Lcom/google/android/material/navigation/NavigationView;->f:Le/m/a/g/o/f;

    .line 7
    sget-object v13, Lcom/google/android/material/R$styleable;->NavigationView:[I

    const/4 v14, 0x0

    new-array v6, v14, [I

    .line 8
    invoke-static {v11, v7, v8, v9}, Le/m/a/g/o/n;->a(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    move-object v1, v11

    move-object/from16 v2, p2

    move-object v3, v13

    move v4, v8

    move v5, v9

    .line 9
    invoke-static/range {v1 .. v6}, Le/m/a/g/o/n;->b(Landroid/content/Context;Landroid/util/AttributeSet;[III[I)V

    .line 10
    new-instance v1, Ln3/b/f/r0;

    .line 11
    invoke-virtual {v11, v7, v13, v8, v9}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v2

    invoke-direct {v1, v11, v2}, Ln3/b/f/r0;-><init>(Landroid/content/Context;Landroid/content/res/TypedArray;)V

    .line 12
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_background:I

    invoke-virtual {v1, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 13
    invoke-virtual {v1, v2}, Ln3/b/f/r0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 14
    invoke-virtual {v0, v2}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 15
    :cond_0
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_1

    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    instance-of v2, v2, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_3

    .line 16
    :cond_1
    new-instance v2, Le/m/a/g/u/a;

    int-to-float v3, v14

    invoke-direct {v2, v3}, Le/m/a/g/u/a;-><init>(F)V

    invoke-static {v11, v7, v8, v9, v2}, Le/m/a/g/u/l;->b(Landroid/content/Context;Landroid/util/AttributeSet;IILe/m/a/g/u/c;)Le/m/a/g/u/l$b;

    move-result-object v2

    .line 17
    invoke-virtual {v2}, Le/m/a/g/u/l$b;->a()Le/m/a/g/u/l;

    move-result-object v2

    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 19
    new-instance v4, Le/m/a/g/u/h;

    invoke-direct {v4, v2}, Le/m/a/g/u/h;-><init>(Le/m/a/g/u/l;)V

    .line 20
    instance-of v2, v3, Landroid/graphics/drawable/ColorDrawable;

    if-eqz v2, :cond_2

    .line 21
    check-cast v3, Landroid/graphics/drawable/ColorDrawable;

    .line 22
    invoke-virtual {v3}, Landroid/graphics/drawable/ColorDrawable;->getColor()I

    move-result v2

    invoke-static {v2}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 23
    invoke-virtual {v4, v2}, Le/m/a/g/u/h;->q(Landroid/content/res/ColorStateList;)V

    .line 24
    :cond_2
    iget-object v2, v4, Le/m/a/g/u/h;->a:Le/m/a/g/u/h$b;

    new-instance v3, Le/m/a/g/l/a;

    invoke-direct {v3, v11}, Le/m/a/g/l/a;-><init>(Landroid/content/Context;)V

    iput-object v3, v2, Le/m/a/g/u/h$b;->b:Le/m/a/g/l/a;

    .line 25
    invoke-virtual {v4}, Le/m/a/g/u/h;->A()V

    .line 26
    invoke-virtual {v0, v4}, Landroid/view/View;->setBackground(Landroid/graphics/drawable/Drawable;)V

    .line 27
    :cond_3
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_elevation:I

    invoke-virtual {v1, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 28
    invoke-virtual {v1, v2, v14}, Ln3/b/f/r0;->f(II)I

    move-result v2

    int-to-float v2, v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->setElevation(F)V

    .line 29
    :cond_4
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_fitsSystemWindows:I

    invoke-virtual {v1, v2, v14}, Ln3/b/f/r0;->a(IZ)Z

    move-result v2

    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->setFitsSystemWindows(Z)V

    .line 30
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_android_maxWidth:I

    invoke-virtual {v1, v2, v14}, Ln3/b/f/r0;->f(II)I

    move-result v2

    iput v2, v0, Lcom/google/android/material/navigation/NavigationView;->i:I

    .line 31
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_itemIconTint:I

    invoke-virtual {v1, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 32
    invoke-virtual {v1, v2}, Ln3/b/f/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    goto :goto_0

    :cond_5
    const v2, 0x1010038

    .line 33
    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v2

    .line 34
    :goto_0
    sget v3, Lcom/google/android/material/R$styleable;->NavigationView_itemTextAppearance:I

    invoke-virtual {v1, v3}, Ln3/b/f/r0;->o(I)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 35
    invoke-virtual {v1, v3, v14}, Ln3/b/f/r0;->l(II)I

    move-result v3

    const/4 v4, 0x1

    goto :goto_1

    :cond_6
    move v3, v14

    move v4, v3

    .line 36
    :goto_1
    sget v6, Lcom/google/android/material/R$styleable;->NavigationView_itemIconSize:I

    invoke-virtual {v1, v6}, Ln3/b/f/r0;->o(I)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 37
    invoke-virtual {v1, v6, v14}, Ln3/b/f/r0;->f(II)I

    move-result v6

    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->setItemIconSize(I)V

    :cond_7
    const/4 v6, 0x0

    .line 38
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemTextColor:I

    invoke-virtual {v1, v7}, Ln3/b/f/r0;->o(I)Z

    move-result v8

    if-eqz v8, :cond_8

    .line 39
    invoke-virtual {v1, v7}, Ln3/b/f/r0;->c(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    :cond_8
    if-nez v4, :cond_9

    if-nez v6, :cond_9

    const v6, 0x1010036

    .line 40
    invoke-virtual {v0, v6}, Lcom/google/android/material/navigation/NavigationView;->b(I)Landroid/content/res/ColorStateList;

    move-result-object v6

    .line 41
    :cond_9
    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemBackground:I

    invoke-virtual {v1, v7}, Ln3/b/f/r0;->g(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-nez v7, :cond_c

    .line 42
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearance:I

    invoke-virtual {v1, v8}, Ln3/b/f/r0;->o(I)Z

    move-result v9

    if-nez v9, :cond_b

    sget v9, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 43
    invoke-virtual {v1, v9}, Ln3/b/f/r0;->o(I)Z

    move-result v9

    if-eqz v9, :cond_a

    goto :goto_2

    :cond_a
    move v9, v14

    goto :goto_3

    :cond_b
    :goto_2
    const/4 v9, 0x1

    :goto_3
    if-eqz v9, :cond_c

    .line 44
    invoke-virtual {v1, v8, v14}, Ln3/b/f/r0;->l(II)I

    move-result v7

    .line 45
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeAppearanceOverlay:I

    .line 46
    invoke-virtual {v1, v8, v14}, Ln3/b/f/r0;->l(II)I

    move-result v8

    .line 47
    new-instance v9, Le/m/a/g/u/h;

    .line 48
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v13

    .line 49
    new-instance v15, Le/m/a/g/u/a;

    int-to-float v5, v14

    invoke-direct {v15, v5}, Le/m/a/g/u/a;-><init>(F)V

    invoke-static {v13, v7, v8, v15}, Le/m/a/g/u/l;->a(Landroid/content/Context;IILe/m/a/g/u/c;)Le/m/a/g/u/l$b;

    move-result-object v5

    .line 50
    invoke-virtual {v5}, Le/m/a/g/u/l$b;->a()Le/m/a/g/u/l;

    move-result-object v5

    invoke-direct {v9, v5}, Le/m/a/g/u/h;-><init>(Le/m/a/g/u/l;)V

    .line 51
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v5

    sget v7, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeFillColor:I

    .line 52
    invoke-static {v5, v1, v7}, Ln3/g0/y;->e0(Landroid/content/Context;Ln3/b/f/r0;I)Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 53
    invoke-virtual {v9, v5}, Le/m/a/g/u/h;->q(Landroid/content/res/ColorStateList;)V

    .line 54
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetStart:I

    invoke-virtual {v1, v5, v14}, Ln3/b/f/r0;->f(II)I

    move-result v17

    .line 55
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetTop:I

    invoke-virtual {v1, v5, v14}, Ln3/b/f/r0;->f(II)I

    move-result v18

    .line 56
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetEnd:I

    invoke-virtual {v1, v5, v14}, Ln3/b/f/r0;->f(II)I

    move-result v19

    .line 57
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemShapeInsetBottom:I

    invoke-virtual {v1, v5, v14}, Ln3/b/f/r0;->f(II)I

    move-result v20

    .line 58
    new-instance v7, Landroid/graphics/drawable/InsetDrawable;

    move-object v15, v7

    move-object/from16 v16, v9

    invoke-direct/range {v15 .. v20}, Landroid/graphics/drawable/InsetDrawable;-><init>(Landroid/graphics/drawable/Drawable;IIII)V

    .line 59
    :cond_c
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemHorizontalPadding:I

    invoke-virtual {v1, v5}, Ln3/b/f/r0;->o(I)Z

    move-result v8

    if-eqz v8, :cond_d

    .line 60
    invoke-virtual {v1, v5, v14}, Ln3/b/f/r0;->f(II)I

    move-result v5

    .line 61
    invoke-virtual {v10, v5}, Le/m/a/g/o/g;->h(I)V

    .line 62
    :cond_d
    sget v5, Lcom/google/android/material/R$styleable;->NavigationView_itemIconPadding:I

    .line 63
    invoke-virtual {v1, v5, v14}, Ln3/b/f/r0;->f(II)I

    move-result v5

    .line 64
    sget v8, Lcom/google/android/material/R$styleable;->NavigationView_itemMaxLines:I

    const/4 v9, 0x1

    invoke-virtual {v1, v8, v9}, Ln3/b/f/r0;->j(II)I

    move-result v8

    invoke-virtual {v0, v8}, Lcom/google/android/material/navigation/NavigationView;->setItemMaxLines(I)V

    .line 65
    new-instance v8, Le/m/a/g/p/a;

    invoke-direct {v8, v0}, Le/m/a/g/p/a;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    .line 66
    iput-object v8, v12, Ln3/b/e/i/g;->e:Ln3/b/e/i/g$a;

    .line 67
    iput v9, v10, Le/m/a/g/o/g;->d:I

    .line 68
    invoke-virtual {v10, v11, v12}, Le/m/a/g/o/g;->g(Landroid/content/Context;Ln3/b/e/i/g;)V

    .line 69
    iput-object v2, v10, Le/m/a/g/o/g;->j:Landroid/content/res/ColorStateList;

    .line 70
    invoke-virtual {v10, v14}, Le/m/a/g/o/g;->d(Z)V

    .line 71
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getOverScrollMode()I

    move-result v2

    .line 72
    iput v2, v10, Le/m/a/g/o/g;->t:I

    .line 73
    iget-object v8, v10, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v8, :cond_e

    .line 74
    invoke-virtual {v8, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_e
    if-eqz v4, :cond_f

    .line 75
    iput v3, v10, Le/m/a/g/o/g;->g:I

    const/4 v2, 0x1

    .line 76
    iput-boolean v2, v10, Le/m/a/g/o/g;->h:Z

    .line 77
    invoke-virtual {v10, v14}, Le/m/a/g/o/g;->d(Z)V

    .line 78
    :cond_f
    iput-object v6, v10, Le/m/a/g/o/g;->i:Landroid/content/res/ColorStateList;

    .line 79
    invoke-virtual {v10, v14}, Le/m/a/g/o/g;->d(Z)V

    .line 80
    iput-object v7, v10, Le/m/a/g/o/g;->k:Landroid/graphics/drawable/Drawable;

    .line 81
    invoke-virtual {v10, v14}, Le/m/a/g/o/g;->d(Z)V

    .line 82
    invoke-virtual {v10, v5}, Le/m/a/g/o/g;->l(I)V

    .line 83
    iget-object v2, v12, Ln3/b/e/i/g;->a:Landroid/content/Context;

    invoke-virtual {v12, v10, v2}, Ln3/b/e/i/g;->b(Ln3/b/e/i/m;Landroid/content/Context;)V

    .line 84
    iget-object v2, v10, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-nez v2, :cond_12

    .line 85
    iget-object v2, v10, Le/m/a/g/o/g;->f:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/R$layout;->design_navigation_menu:I

    .line 86
    invoke-virtual {v2, v3, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/google/android/material/internal/NavigationMenuView;

    iput-object v2, v10, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 87
    new-instance v3, Le/m/a/g/o/g$h;

    iget-object v4, v10, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-direct {v3, v10, v4}, Le/m/a/g/o/g$h;-><init>(Le/m/a/g/o/g;Landroidx/recyclerview/widget/RecyclerView;)V

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAccessibilityDelegateCompat(Ln3/b0/a/w;)V

    .line 88
    iget-object v2, v10, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    if-nez v2, :cond_10

    .line 89
    new-instance v2, Le/m/a/g/o/g$c;

    invoke-direct {v2, v10}, Le/m/a/g/o/g$c;-><init>(Le/m/a/g/o/g;)V

    iput-object v2, v10, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    .line 90
    :cond_10
    iget v2, v10, Le/m/a/g/o/g;->t:I

    const/4 v3, -0x1

    if-eq v2, v3, :cond_11

    .line 91
    iget-object v3, v10, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    .line 92
    :cond_11
    iget-object v2, v10, Le/m/a/g/o/g;->f:Landroid/view/LayoutInflater;

    sget v3, Lcom/google/android/material/R$layout;->design_navigation_item_header:I

    iget-object v4, v10, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 93
    invoke-virtual {v2, v3, v4, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, v10, Le/m/a/g/o/g;->b:Landroid/widget/LinearLayout;

    .line 94
    iget-object v2, v10, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    iget-object v3, v10, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    invoke-virtual {v2, v3}, Landroidx/recyclerview/widget/RecyclerView;->setAdapter(Landroidx/recyclerview/widget/RecyclerView$g;)V

    .line 95
    :cond_12
    iget-object v2, v10, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    .line 96
    invoke-virtual {v0, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;)V

    .line 97
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_menu:I

    invoke-virtual {v1, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 98
    invoke-virtual {v1, v2, v14}, Ln3/b/f/r0;->l(II)I

    move-result v2

    invoke-virtual {v0, v2}, Lcom/google/android/material/navigation/NavigationView;->c(I)V

    .line 99
    :cond_13
    sget v2, Lcom/google/android/material/R$styleable;->NavigationView_headerLayout:I

    invoke-virtual {v1, v2}, Ln3/b/f/r0;->o(I)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 100
    invoke-virtual {v1, v2, v14}, Ln3/b/f/r0;->l(II)I

    move-result v2

    .line 101
    iget-object v3, v10, Le/m/a/g/o/g;->f:Landroid/view/LayoutInflater;

    iget-object v4, v10, Le/m/a/g/o/g;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2, v4, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 102
    iget-object v3, v10, Le/m/a/g/o/g;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 103
    iget-object v2, v10, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v3

    invoke-virtual {v2, v14, v14, v14, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 104
    :cond_14
    iget-object v1, v1, Ln3/b/f/r0;->b:Landroid/content/res/TypedArray;

    invoke-virtual {v1}, Landroid/content/res/TypedArray;->recycle()V

    .line 105
    new-instance v1, Le/m/a/g/p/b;

    invoke-direct {v1, v0}, Le/m/a/g/p/b;-><init>(Lcom/google/android/material/navigation/NavigationView;)V

    iput-object v1, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 106
    invoke-virtual/range {p0 .. p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, v0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    .line 107
    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method private getMenuInflater()Landroid/view/MenuInflater;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Ln3/b/e/f;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Ln3/b/e/f;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->k:Landroid/view/MenuInflater;

    return-object v0
.end method


# virtual methods
.method public a(Ln3/k/i/d0;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    invoke-virtual {p1}, Ln3/k/i/d0;->f()I

    move-result v1

    .line 4
    iget v2, v0, Le/m/a/g/o/g;->r:I

    if-eq v2, v1, :cond_0

    .line 5
    iput v1, v0, Le/m/a/g/o/g;->r:I

    .line 6
    invoke-virtual {v0}, Le/m/a/g/o/g;->n()V

    .line 7
    :cond_0
    iget-object v1, v0, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    invoke-virtual {v1}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v2

    invoke-virtual {p1}, Ln3/k/i/d0;->c()I

    move-result v3

    const/4 v4, 0x0

    invoke-virtual {v1, v4, v2, v4, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 8
    iget-object v0, v0, Le/m/a/g/o/g;->b:Landroid/widget/LinearLayout;

    invoke-static {v0, p1}, Ln3/k/i/s;->c(Landroid/view/View;Ln3/k/i/d0;)Ln3/k/i/d0;

    return-void
.end method

.method public final b(I)Landroid/content/res/ColorStateList;
    .locals 10

    .line 1
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result p1

    const/4 v1, 0x0

    if-nez p1, :cond_0

    return-object v1

    .line 3
    :cond_0
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object p1

    iget v3, v0, Landroid/util/TypedValue;->resourceId:I

    .line 4
    sget-object v4, Ln3/b/b/a/a;->a:Ljava/lang/ThreadLocal;

    .line 5
    invoke-virtual {p1, v3}, Landroid/content/Context;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    .line 6
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 7
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    sget v4, Landroidx/appcompat/R$attr;->colorPrimary:I

    .line 8
    invoke-virtual {v3, v4, v0, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    move-result v3

    if-nez v3, :cond_1

    return-object v1

    .line 9
    :cond_1
    iget v0, v0, Landroid/util/TypedValue;->data:I

    .line 10
    invoke-virtual {p1}, Landroid/content/res/ColorStateList;->getDefaultColor()I

    move-result v1

    .line 11
    new-instance v3, Landroid/content/res/ColorStateList;

    const/4 v4, 0x3

    new-array v5, v4, [[I

    sget-object v6, Lcom/google/android/material/navigation/NavigationView;->n:[I

    const/4 v7, 0x0

    aput-object v6, v5, v7

    sget-object v8, Lcom/google/android/material/navigation/NavigationView;->m:[I

    aput-object v8, v5, v2

    sget-object v8, Landroid/widget/FrameLayout;->EMPTY_STATE_SET:[I

    const/4 v9, 0x2

    aput-object v8, v5, v9

    new-array v4, v4, [I

    .line 12
    invoke-virtual {p1, v6, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result p1

    aput p1, v4, v7

    aput v0, v4, v2

    aput v1, v4, v9

    invoke-direct {v3, v5, v4}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    return-object v3
.end method

.method public c(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Le/m/a/g/o/g;->m(Z)V

    .line 2
    invoke-direct {p0}, Lcom/google/android/material/navigation/NavigationView;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->f:Le/m/a/g/o/f;

    invoke-virtual {v0, p1, v1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 3
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Le/m/a/g/o/g;->m(Z)V

    .line 4
    iget-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    invoke-virtual {p1, v0}, Le/m/a/g/o/g;->d(Z)V

    return-void
.end method

.method public getCheckedItem()Landroid/view/MenuItem;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iget-object v0, v0, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    .line 3
    iget-object v0, v0, Le/m/a/g/o/g$c;->b:Ln3/b/e/i/i;

    return-object v0
.end method

.method public getHeaderCount()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iget-object v0, v0, Le/m/a/g/o/g;->b:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    return v0
.end method

.method public getItemBackground()Landroid/graphics/drawable/Drawable;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iget-object v0, v0, Le/m/a/g/o/g;->k:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getItemHorizontalPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iget v0, v0, Le/m/a/g/o/g;->l:I

    return v0
.end method

.method public getItemIconPadding()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iget v0, v0, Le/m/a/g/o/g;->m:I

    return v0
.end method

.method public getItemIconTintList()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iget-object v0, v0, Le/m/a/g/o/g;->j:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getItemMaxLines()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iget v0, v0, Le/m/a/g/o/g;->q:I

    return v0
.end method

.method public getItemTextColor()Landroid/content/res/ColorStateList;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iget-object v0, v0, Le/m/a/g/o/g;->i:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method public getMenu()Landroid/view/Menu;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Le/m/a/g/o/f;

    return-object v0
.end method

.method public onAttachedToWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/m/a/g/o/i;->onAttachedToWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 3
    instance-of v1, v0, Le/m/a/g/u/h;

    if-eqz v1, :cond_0

    .line 4
    check-cast v0, Le/m/a/g/u/h;

    invoke-static {p0, v0}, Ln3/g0/y;->S1(Landroid/view/View;Le/m/a/g/u/h;)V

    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 2

    .line 1
    invoke-super {p0}, Le/m/a/g/o/i;->onDetachedFromWindow()V

    .line 2
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/material/navigation/NavigationView;->l:Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;

    invoke-virtual {v0, v1}, Landroid/view/ViewTreeObserver;->removeOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    return-void
.end method

.method public onMeasure(II)V
    .locals 3

    .line 1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    const/high16 v1, -0x80000000

    const/high16 v2, 0x40000000    # 2.0f

    if-eq v0, v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget p1, p0, Lcom/google/android/material/navigation/NavigationView;->i:I

    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result p1

    iget v0, p0, Lcom/google/android/material/navigation/NavigationView;->i:I

    invoke-static {p1, v0}, Ljava/lang/Math;->min(II)I

    move-result p1

    .line 4
    invoke-static {p1, v2}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 5
    :goto_0
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4

    .line 1
    instance-of v0, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    if-nez v0, :cond_0

    .line 2
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    return-void

    .line 3
    :cond_0
    check-cast p1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    .line 4
    iget-object v0, p1, Landroidx/customview/view/AbsSavedState;->a:Landroid/os/Parcelable;

    .line 5
    invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 6
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Le/m/a/g/o/f;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView$SavedState;->c:Landroid/os/Bundle;

    .line 7
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "android:menu:presenters"

    .line 8
    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object p1

    if-eqz p1, :cond_4

    .line 9
    iget-object v1, v0, Ln3/b/e/i/g;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 10
    :cond_1
    iget-object v1, v0, Ln3/b/e/i/g;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v1}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/ref/WeakReference;

    .line 11
    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ln3/b/e/i/m;

    if-nez v3, :cond_3

    .line 12
    iget-object v3, v0, Ln3/b/e/i/g;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 13
    :cond_3
    invoke-interface {v3}, Ln3/b/e/i/m;->getId()I

    move-result v2

    if-lez v2, :cond_2

    .line 14
    invoke-virtual {p1, v2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Parcelable;

    if-eqz v2, :cond_2

    .line 15
    invoke-interface {v3, v2}, Ln3/b/e/i/m;->j(Landroid/os/Parcelable;)V

    goto :goto_0

    :cond_4
    :goto_1
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Parcelable;
    .locals 7

    .line 1
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/google/android/material/navigation/NavigationView$SavedState;

    invoke-direct {v1, v0}, Lcom/google/android/material/navigation/NavigationView$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 3
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    iput-object v0, v1, Lcom/google/android/material/navigation/NavigationView$SavedState;->c:Landroid/os/Bundle;

    .line 4
    iget-object v2, p0, Lcom/google/android/material/navigation/NavigationView;->f:Le/m/a/g/o/f;

    .line 5
    iget-object v3, v2, Ln3/b/e/i/g;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v3}, Ljava/util/concurrent/CopyOnWriteArrayList;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    new-instance v3, Landroid/util/SparseArray;

    invoke-direct {v3}, Landroid/util/SparseArray;-><init>()V

    .line 7
    iget-object v4, v2, Ln3/b/e/i/g;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v4}, Ljava/util/concurrent/CopyOnWriteArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_1
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/ref/WeakReference;

    .line 8
    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ln3/b/e/i/m;

    if-nez v6, :cond_2

    .line 9
    iget-object v6, v2, Ln3/b/e/i/g;->u:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v6, v5}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_2
    invoke-interface {v6}, Ln3/b/e/i/m;->getId()I

    move-result v5

    if-lez v5, :cond_1

    .line 11
    invoke-interface {v6}, Ln3/b/e/i/m;->c()Landroid/os/Parcelable;

    move-result-object v6

    if-eqz v6, :cond_1

    .line 12
    invoke-virtual {v3, v5, v6}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    :cond_3
    const-string v2, "android:menu:presenters"

    .line 13
    invoke-virtual {v0, v2, v3}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    :goto_1
    return-object v1
.end method

.method public setCheckedItem(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Le/m/a/g/o/f;

    invoke-virtual {v0, p1}, Ln3/b/e/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    check-cast p1, Ln3/b/e/i/i;

    .line 3
    iget-object v0, v0, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    invoke-virtual {v0, p1}, Le/m/a/g/o/g$c;->g(Ln3/b/e/i/i;)V

    :cond_0
    return-void
.end method

.method public setCheckedItem(Landroid/view/MenuItem;)V
    .locals 1

    .line 4
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->f:Le/m/a/g/o/f;

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result p1

    invoke-virtual {v0, p1}, Ln3/b/e/i/g;->findItem(I)Landroid/view/MenuItem;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 5
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    check-cast p1, Ln3/b/e/i/i;

    .line 6
    iget-object v0, v0, Le/m/a/g/o/g;->e:Le/m/a/g/o/g$c;

    invoke-virtual {v0, p1}, Le/m/a/g/o/g$c;->g(Ln3/b/e/i/i;)V

    return-void

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string v0, "Called setCheckedItem(MenuItem) with an item that is not in the current menu."

    invoke-direct {p1, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public setElevation(F)V
    .locals 0

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setElevation(F)V

    .line 2
    invoke-static {p0, p1}, Ln3/g0/y;->Q1(Landroid/view/View;F)V

    return-void
.end method

.method public setItemBackground(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iput-object p1, v0, Le/m/a/g/o/g;->k:Landroid/graphics/drawable/Drawable;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->d(Z)V

    return-void
.end method

.method public setItemBackgroundResource(I)V
    .locals 2

    .line 1
    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v0

    .line 2
    sget-object v1, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 3
    invoke-static {v0, p1}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object p1

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/material/navigation/NavigationView;->setItemBackground(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public setItemHorizontalPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iput p1, v0, Le/m/a/g/o/g;->l:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->d(Z)V

    return-void
.end method

.method public setItemHorizontalPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->h(I)V

    return-void
.end method

.method public setItemIconPadding(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iput p1, v0, Le/m/a/g/o/g;->m:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->d(Z)V

    return-void
.end method

.method public setItemIconPaddingResource(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    invoke-virtual {p0}, Landroid/widget/FrameLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->l(I)V

    return-void
.end method

.method public setItemIconSize(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iget v1, v0, Le/m/a/g/o/g;->n:I

    if-eq v1, p1, :cond_0

    .line 3
    iput p1, v0, Le/m/a/g/o/g;->n:I

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, v0, Le/m/a/g/o/g;->o:Z

    const/4 p1, 0x0

    .line 5
    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->d(Z)V

    :cond_0
    return-void
.end method

.method public setItemIconTintList(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iput-object p1, v0, Le/m/a/g/o/g;->j:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->d(Z)V

    return-void
.end method

.method public setItemMaxLines(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iput p1, v0, Le/m/a/g/o/g;->q:I

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->d(Z)V

    return-void
.end method

.method public setItemTextAppearance(I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iput p1, v0, Le/m/a/g/o/g;->g:I

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, v0, Le/m/a/g/o/g;->h:Z

    const/4 p1, 0x0

    .line 4
    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->d(Z)V

    return-void
.end method

.method public setItemTextColor(Landroid/content/res/ColorStateList;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    .line 2
    iput-object p1, v0, Le/m/a/g/o/g;->i:Landroid/content/res/ColorStateList;

    const/4 p1, 0x0

    .line 3
    invoke-virtual {v0, p1}, Le/m/a/g/o/g;->d(Z)V

    return-void
.end method

.method public setNavigationItemSelectedListener(Lcom/google/android/material/navigation/NavigationView$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/navigation/NavigationView$a;

    return-void
.end method

.method public setOverScrollMode(I)V
    .locals 1

    .line 1
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setOverScrollMode(I)V

    .line 2
    iget-object v0, p0, Lcom/google/android/material/navigation/NavigationView;->g:Le/m/a/g/o/g;

    if-eqz v0, :cond_0

    .line 3
    iput p1, v0, Le/m/a/g/o/g;->t:I

    .line 4
    iget-object v0, v0, Le/m/a/g/o/g;->a:Lcom/google/android/material/internal/NavigationMenuView;

    if-eqz v0, :cond_0

    .line 5
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->setOverScrollMode(I)V

    :cond_0
    return-void
.end method
