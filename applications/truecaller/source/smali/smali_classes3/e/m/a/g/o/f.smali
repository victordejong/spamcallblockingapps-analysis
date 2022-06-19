.class public Le/m/a/g/o/f;
.super Ln3/b/e/i/g;
.source "SourceFile"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/b/e/i/g;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public addSubMenu(IIILjava/lang/CharSequence;)Landroid/view/SubMenu;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2, p3, p4}, Ln3/b/e/i/g;->a(IIILjava/lang/CharSequence;)Landroid/view/MenuItem;

    move-result-object p1

    check-cast p1, Ln3/b/e/i/i;

    .line 2
    new-instance p2, Le/m/a/g/o/h;

    .line 3
    iget-object p3, p0, Ln3/b/e/i/g;->a:Landroid/content/Context;

    .line 4
    invoke-direct {p2, p3, p0, p1}, Le/m/a/g/o/h;-><init>(Landroid/content/Context;Le/m/a/g/o/f;Ln3/b/e/i/i;)V

    .line 5
    iput-object p2, p1, Ln3/b/e/i/i;->o:Ln3/b/e/i/r;

    .line 6
    iget-object p1, p1, Ln3/b/e/i/i;->e:Ljava/lang/CharSequence;

    .line 7
    invoke-virtual {p2, p1}, Ln3/b/e/i/r;->setHeaderTitle(Ljava/lang/CharSequence;)Landroid/view/SubMenu;

    return-object p2
.end method
