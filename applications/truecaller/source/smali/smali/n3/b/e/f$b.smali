.class public Ln3/b/e/f$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/b/e/f;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "b"
.end annotation


# instance fields
.field public A:Ln3/k/i/b;

.field public B:Ljava/lang/CharSequence;

.field public C:Ljava/lang/CharSequence;

.field public D:Landroid/content/res/ColorStateList;

.field public E:Landroid/graphics/PorterDuff$Mode;

.field public final synthetic F:Ln3/b/e/f;

.field public a:Landroid/view/Menu;

.field public b:I

.field public c:I

.field public d:I

.field public e:I

.field public f:Z

.field public g:Z

.field public h:Z

.field public i:I

.field public j:I

.field public k:Ljava/lang/CharSequence;

.field public l:Ljava/lang/CharSequence;

.field public m:I

.field public n:C

.field public o:I

.field public p:C

.field public q:I

.field public r:I

.field public s:Z

.field public t:Z

.field public u:Z

.field public v:I

.field public w:I

.field public x:Ljava/lang/String;

.field public y:Ljava/lang/String;

.field public z:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ln3/b/e/f;Landroid/view/Menu;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b/e/f$b;->F:Ln3/b/e/f;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-object p1, p0, Ln3/b/e/f$b;->D:Landroid/content/res/ColorStateList;

    .line 3
    iput-object p1, p0, Ln3/b/e/f$b;->E:Landroid/graphics/PorterDuff$Mode;

    .line 4
    iput-object p2, p0, Ln3/b/e/f$b;->a:Landroid/view/Menu;

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Ln3/b/e/f$b;->b:I

    .line 6
    iput p1, p0, Ln3/b/e/f$b;->c:I

    .line 7
    iput p1, p0, Ln3/b/e/f$b;->d:I

    .line 8
    iput p1, p0, Ln3/b/e/f$b;->e:I

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, p0, Ln3/b/e/f$b;->f:Z

    .line 10
    iput-boolean p1, p0, Ln3/b/e/f$b;->g:Z

    return-void
.end method


# virtual methods
.method public a()Landroid/view/SubMenu;
    .locals 5

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Ln3/b/e/f$b;->h:Z

    .line 2
    iget-object v0, p0, Ln3/b/e/f$b;->a:Landroid/view/Menu;

    iget v1, p0, Ln3/b/e/f$b;->b:I

    iget v2, p0, Ln3/b/e/f$b;->i:I

    iget v3, p0, Ln3/b/e/f$b;->j:I

    iget-object v4, p0, Ln3/b/e/f$b;->k:Ljava/lang/CharSequence;

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/view/Menu;->addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;

    move-result-object v0

    .line 3
    invoke-interface {v0}, Landroid/view/SubMenu;->getItem()Landroid/view/MenuItem;

    move-result-object v1

    invoke-virtual {p0, v1}, Ln3/b/e/f$b;->c(Landroid/view/MenuItem;)V

    return-object v0
.end method

.method public final b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Class<",
            "*>;[",
            "Ljava/lang/Object;",
            ")TT;"
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Ln3/b/e/f$b;->F:Ln3/b/e/f;

    iget-object v0, v0, Ln3/b/e/f;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {p1, v1, v0}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object p1

    .line 2
    invoke-virtual {p1, p2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object p1

    const/4 p2, 0x1

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 4
    invoke-virtual {p1, p3}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p1

    :catch_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public final c(Landroid/view/MenuItem;)V
    .locals 8

    .line 1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    iget-boolean v1, p0, Ln3/b/e/f$b;->s:Z

    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setChecked(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Ln3/b/e/f$b;->t:Z

    .line 2
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-boolean v2, p0, Ln3/b/e/f$b;->u:Z

    .line 3
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setEnabled(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, Ln3/b/e/f$b;->r:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-lt v2, v4, :cond_0

    move v2, v4

    goto :goto_0

    :cond_0
    move v2, v3

    .line 4
    :goto_0
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setCheckable(Z)Landroid/view/MenuItem;

    move-result-object v1

    iget-object v2, p0, Ln3/b/e/f$b;->l:Ljava/lang/CharSequence;

    .line 5
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setTitleCondensed(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object v1

    iget v2, p0, Ln3/b/e/f$b;->m:I

    .line 6
    invoke-interface {v1, v2}, Landroid/view/MenuItem;->setIcon(I)Landroid/view/MenuItem;

    .line 7
    iget v1, p0, Ln3/b/e/f$b;->v:I

    if-ltz v1, :cond_1

    .line 8
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setShowAsAction(I)V

    .line 9
    :cond_1
    iget-object v1, p0, Ln3/b/e/f$b;->z:Ljava/lang/String;

    if-eqz v1, :cond_4

    .line 10
    iget-object v1, p0, Ln3/b/e/f$b;->F:Ln3/b/e/f;

    iget-object v1, v1, Ln3/b/e/f;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->isRestricted()Z

    move-result v1

    if-nez v1, :cond_3

    .line 11
    new-instance v1, Ln3/b/e/f$a;

    iget-object v2, p0, Ln3/b/e/f$b;->F:Ln3/b/e/f;

    .line 12
    iget-object v5, v2, Ln3/b/e/f;->d:Ljava/lang/Object;

    if-nez v5, :cond_2

    .line 13
    iget-object v5, v2, Ln3/b/e/f;->c:Landroid/content/Context;

    invoke-virtual {v2, v5}, Ln3/b/e/f;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v5, v2, Ln3/b/e/f;->d:Ljava/lang/Object;

    .line 14
    :cond_2
    iget-object v2, v2, Ln3/b/e/f;->d:Ljava/lang/Object;

    .line 15
    iget-object v5, p0, Ln3/b/e/f$b;->z:Ljava/lang/String;

    invoke-direct {v1, v2, v5}, Ln3/b/e/f$a;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setOnMenuItemClickListener(Landroid/view/MenuItem$OnMenuItemClickListener;)Landroid/view/MenuItem;

    goto :goto_1

    .line 17
    :cond_3
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "The android:onClick attribute cannot be used within a restricted context"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 18
    :cond_4
    :goto_1
    iget v1, p0, Ln3/b/e/f$b;->r:I

    const/4 v2, 0x2

    if-lt v1, v2, :cond_7

    .line 19
    instance-of v1, p1, Ln3/b/e/i/i;

    if-eqz v1, :cond_5

    .line 20
    move-object v1, p1

    check-cast v1, Ln3/b/e/i/i;

    invoke-virtual {v1, v4}, Ln3/b/e/i/i;->k(Z)V

    goto :goto_2

    .line 21
    :cond_5
    instance-of v1, p1, Ln3/b/e/i/j;

    if-eqz v1, :cond_7

    .line 22
    move-object v1, p1

    check-cast v1, Ln3/b/e/i/j;

    .line 23
    :try_start_0
    iget-object v2, v1, Ln3/b/e/i/j;->e:Ljava/lang/reflect/Method;

    if-nez v2, :cond_6

    .line 24
    iget-object v2, v1, Ln3/b/e/i/j;->d:Ln3/k/d/a/b;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    const-string v5, "setExclusiveCheckable"

    new-array v6, v4, [Ljava/lang/Class;

    sget-object v7, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v7, v6, v3

    .line 25
    invoke-virtual {v2, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    iput-object v2, v1, Ln3/b/e/i/j;->e:Ljava/lang/reflect/Method;

    .line 26
    :cond_6
    iget-object v2, v1, Ln3/b/e/i/j;->e:Ljava/lang/reflect/Method;

    iget-object v1, v1, Ln3/b/e/i/j;->d:Ln3/k/d/a/b;

    new-array v5, v4, [Ljava/lang/Object;

    sget-object v6, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    aput-object v6, v5, v3

    invoke-virtual {v2, v1, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 27
    :catch_0
    :cond_7
    :goto_2
    iget-object v1, p0, Ln3/b/e/f$b;->x:Ljava/lang/String;

    if-eqz v1, :cond_8

    .line 28
    sget-object v2, Ln3/b/e/f;->e:[Ljava/lang/Class;

    iget-object v3, p0, Ln3/b/e/f$b;->F:Ln3/b/e/f;

    iget-object v3, v3, Ln3/b/e/f;->a:[Ljava/lang/Object;

    invoke-virtual {p0, v1, v2, v3}, Ln3/b/e/f$b;->b(Ljava/lang/String;[Ljava/lang/Class;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/View;

    .line 29
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(Landroid/view/View;)Landroid/view/MenuItem;

    move v3, v4

    .line 30
    :cond_8
    iget v1, p0, Ln3/b/e/f$b;->w:I

    if-lez v1, :cond_9

    if-nez v3, :cond_9

    .line 31
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setActionView(I)Landroid/view/MenuItem;

    .line 32
    :cond_9
    iget-object v1, p0, Ln3/b/e/f$b;->A:Ln3/k/i/b;

    if-eqz v1, :cond_a

    .line 33
    instance-of v2, p1, Ln3/k/d/a/b;

    if-eqz v2, :cond_a

    .line 34
    move-object v2, p1

    check-cast v2, Ln3/k/d/a/b;

    invoke-interface {v2, v1}, Ln3/k/d/a/b;->b(Ln3/k/i/b;)Ln3/k/d/a/b;

    .line 35
    :cond_a
    iget-object v1, p0, Ln3/b/e/f$b;->B:Ljava/lang/CharSequence;

    .line 36
    instance-of v2, p1, Ln3/k/d/a/b;

    const/16 v3, 0x1a

    if-eqz v2, :cond_b

    .line 37
    move-object v4, p1

    check-cast v4, Ln3/k/d/a/b;

    invoke-interface {v4, v1}, Ln3/k/d/a/b;->setContentDescription(Ljava/lang/CharSequence;)Ln3/k/d/a/b;

    goto :goto_3

    :cond_b
    if-lt v0, v3, :cond_c

    .line 38
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setContentDescription(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 39
    :cond_c
    :goto_3
    iget-object v1, p0, Ln3/b/e/f$b;->C:Ljava/lang/CharSequence;

    if-eqz v2, :cond_d

    .line 40
    move-object v4, p1

    check-cast v4, Ln3/k/d/a/b;

    invoke-interface {v4, v1}, Ln3/k/d/a/b;->setTooltipText(Ljava/lang/CharSequence;)Ln3/k/d/a/b;

    goto :goto_4

    :cond_d
    if-lt v0, v3, :cond_e

    .line 41
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setTooltipText(Ljava/lang/CharSequence;)Landroid/view/MenuItem;

    .line 42
    :cond_e
    :goto_4
    iget-char v1, p0, Ln3/b/e/f$b;->n:C

    iget v4, p0, Ln3/b/e/f$b;->o:I

    if-eqz v2, :cond_f

    .line 43
    move-object v5, p1

    check-cast v5, Ln3/k/d/a/b;

    invoke-interface {v5, v1, v4}, Ln3/k/d/a/b;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    goto :goto_5

    :cond_f
    if-lt v0, v3, :cond_10

    .line 44
    invoke-interface {p1, v1, v4}, Landroid/view/MenuItem;->setAlphabeticShortcut(CI)Landroid/view/MenuItem;

    .line 45
    :cond_10
    :goto_5
    iget-char v1, p0, Ln3/b/e/f$b;->p:C

    iget v4, p0, Ln3/b/e/f$b;->q:I

    if-eqz v2, :cond_11

    .line 46
    move-object v5, p1

    check-cast v5, Ln3/k/d/a/b;

    invoke-interface {v5, v1, v4}, Ln3/k/d/a/b;->setNumericShortcut(CI)Landroid/view/MenuItem;

    goto :goto_6

    :cond_11
    if-lt v0, v3, :cond_12

    .line 47
    invoke-interface {p1, v1, v4}, Landroid/view/MenuItem;->setNumericShortcut(CI)Landroid/view/MenuItem;

    .line 48
    :cond_12
    :goto_6
    iget-object v1, p0, Ln3/b/e/f$b;->E:Landroid/graphics/PorterDuff$Mode;

    if-eqz v1, :cond_14

    if-eqz v2, :cond_13

    .line 49
    move-object v4, p1

    check-cast v4, Ln3/k/d/a/b;

    invoke-interface {v4, v1}, Ln3/k/d/a/b;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    goto :goto_7

    :cond_13
    if-lt v0, v3, :cond_14

    .line 50
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIconTintMode(Landroid/graphics/PorterDuff$Mode;)Landroid/view/MenuItem;

    .line 51
    :cond_14
    :goto_7
    iget-object v1, p0, Ln3/b/e/f$b;->D:Landroid/content/res/ColorStateList;

    if-eqz v1, :cond_16

    if-eqz v2, :cond_15

    .line 52
    check-cast p1, Ln3/k/d/a/b;

    invoke-interface {p1, v1}, Ln3/k/d/a/b;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    goto :goto_8

    :cond_15
    if-lt v0, v3, :cond_16

    .line 53
    invoke-interface {p1, v1}, Landroid/view/MenuItem;->setIconTintList(Landroid/content/res/ColorStateList;)Landroid/view/MenuItem;

    :cond_16
    :goto_8
    return-void
.end method
