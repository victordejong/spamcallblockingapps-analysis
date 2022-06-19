.class public Le/m/a/g/p/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/b/e/i/g$a;


# instance fields
.field public final synthetic a:Lcom/google/android/material/navigation/NavigationView;


# direct methods
.method public constructor <init>(Lcom/google/android/material/navigation/NavigationView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/p/a;->a:Lcom/google/android/material/navigation/NavigationView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ln3/b/e/i/g;Landroid/view/MenuItem;)Z
    .locals 1

    .line 1
    iget-object p1, p0, Le/m/a/g/p/a;->a:Lcom/google/android/material/navigation/NavigationView;

    iget-object p1, p1, Lcom/google/android/material/navigation/NavigationView;->h:Lcom/google/android/material/navigation/NavigationView$a;

    const/4 v0, 0x0

    if-eqz p1, :cond_0

    check-cast p1, Le/a/e/b0;

    .line 2
    iget-object p1, p1, Le/a/e/b0;->a:Lcom/truecaller/ui/TruecallerInit;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    invoke-interface {p2}, Landroid/view/MenuItem;->getItemId()I

    move-result p2

    iput p2, p1, Lcom/truecaller/ui/TruecallerInit;->B:I

    .line 5
    iget-object p1, p1, Lcom/truecaller/ui/TruecallerInit;->m:Landroidx/drawerlayout/widget/DrawerLayout;

    .line 6
    invoke-virtual {p1, v0}, Landroidx/drawerlayout/widget/DrawerLayout;->e(Z)V

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public b(Ln3/b/e/i/g;)V
    .locals 0

    return-void
.end method
