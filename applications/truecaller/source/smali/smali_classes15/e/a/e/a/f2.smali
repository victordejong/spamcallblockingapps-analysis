.class public final Le/a/e/a/f2;
.super Le/a/e/a/n2;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/e/a/f2$c;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000F\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u00002\u00020\u0001:\u0001$B\u0007\u00a2\u0006\u0004\u0008\"\u0010#J-\u0010\t\u001a\u0004\u0018\u00010\u00082\u0006\u0010\u0003\u001a\u00020\u00022\u0008\u0010\u0005\u001a\u0004\u0018\u00010\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\t\u0010\nJ!\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000b\u001a\u00020\u00082\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016\u00a2\u0006\u0004\u0008\r\u0010\u000eR\u001d\u0010\u0014\u001a\u00020\u000f8F@\u0006X\u0086\u0084\u0002\u00a2\u0006\u000c\n\u0004\u0008\u0010\u0010\u0011\u001a\u0004\u0008\u0012\u0010\u0013R\u001c\u0010\u0019\u001a\u0008\u0012\u0004\u0012\u00020\u00160\u00158\u0002@\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0087.\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006%"
    }
    d2 = {
        "Le/a/e/a/f2;",
        "Ln3/r/a/k;",
        "Landroid/view/LayoutInflater;",
        "inflater",
        "Landroid/view/ViewGroup;",
        "container",
        "Landroid/os/Bundle;",
        "savedInstanceState",
        "Landroid/view/View;",
        "onCreateView",
        "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;",
        "view",
        "Ls1/s;",
        "onViewCreated",
        "(Landroid/view/View;Landroid/os/Bundle;)V",
        "Le/a/m3/s;",
        "f",
        "Lcom/truecaller/utils/viewbinding/ViewBindingProperty;",
        "getBinding",
        "()Le/a/m3/s;",
        "binding",
        "",
        "Le/a/e/a/f2$c;",
        "g",
        "Ljava/util/List;",
        "countryCodes",
        "Le/a/b0/e/r/a;",
        "e",
        "Le/a/b0/e/r/a;",
        "getAccountSettings",
        "()Le/a/b0/e/r/a;",
        "setAccountSettings",
        "(Le/a/b0/e/r/a;)V",
        "accountSettings",
        "<init>",
        "()V",
        "c",
        "truecaller_googlePlayRelease"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final synthetic h:[Ls1/a/l;


# instance fields
.field public e:Le/a/b0/e/r/a;
    .annotation runtime Ljavax/inject/Inject;
    .end annotation
.end field

.field public final f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

.field public final g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Le/a/e/a/f2$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 5

    const/4 v0, 0x1

    new-array v0, v0, [Ls1/a/l;

    const-class v1, Le/a/e/a/f2;

    const-string v2, "binding"

    const-string v3, "getBinding()Lcom/truecaller/databinding/DialogChangeCountryCodeBinding;"

    const/4 v4, 0x0

    invoke-static {v1, v2, v3, v4}, Le/d/c/a/a;->g0(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/String;I)Ls1/a/k;

    move-result-object v1

    aput-object v1, v0, v4

    sput-object v0, Le/a/e/a/f2;->h:[Ls1/a/l;

    return-void
.end method

.method public constructor <init>()V
    .locals 9

    .line 1
    invoke-direct {p0}, Le/a/e/a/n2;-><init>()V

    .line 2
    new-instance v0, Le/a/p5/x0/a;

    new-instance v1, Le/a/e/a/f2$b;

    invoke-direct {v1}, Le/a/e/a/f2$b;-><init>()V

    invoke-direct {v0, v1}, Le/a/p5/x0/a;-><init>(Ls1/z/b/l;)V

    iput-object v0, p0, Le/a/e/a/f2;->f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    .line 3
    invoke-static {}, Ljava/util/Locale;->getAvailableLocales()[Ljava/util/Locale;

    move-result-object v0

    const-string v1, "Locale.getAvailableLocales()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    array-length v2, v0

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 5
    array-length v2, v0

    const/4 v3, 0x0

    move v4, v3

    :goto_0
    if-ge v4, v2, :cond_0

    aget-object v5, v0, v4

    .line 6
    new-instance v6, Le/a/e/a/f2$c;

    const-string v7, "it"

    invoke-static {v5, v7}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getCountry()Ljava/lang/String;

    move-result-object v7

    const-string v8, "it.country"

    invoke-static {v7, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/util/Locale;->getDisplayCountry()Ljava/lang/String;

    move-result-object v5

    const-string v8, "it.displayCountry"

    invoke-static {v5, v8}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {v6, v7, v5}, Le/a/e/a/f2$c;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-interface {v1, v6}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 7
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    move-object v4, v2

    check-cast v4, Le/a/e/a/f2$c;

    .line 9
    iget-object v5, v4, Le/a/e/a/f2$c;->a:Ljava/lang/String;

    .line 10
    invoke-static {v5}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v5

    const/4 v6, 0x1

    xor-int/2addr v5, v6

    if-eqz v5, :cond_2

    .line 11
    iget-object v4, v4, Le/a/e/a/f2$c;->b:Ljava/lang/String;

    .line 12
    invoke-static {v4}, Ls1/f0/r;->p(Ljava/lang/CharSequence;)Z

    move-result v4

    xor-int/2addr v4, v6

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move v6, v3

    :goto_2
    if-eqz v6, :cond_1

    invoke-interface {v0, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_3
    invoke-static {v0}, Ls1/u/i;->r(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    .line 14
    new-instance v1, Le/a/e/a/f2$a;

    invoke-direct {v1}, Le/a/e/a/f2$a;-><init>()V

    invoke-static {v0, v1}, Ls1/u/i;->F0(Ljava/lang/Iterable;Ljava/util/Comparator;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Le/a/e/a/f2;->g:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 1

    const-string p3, "inflater"

    invoke-static {p1, p3}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p1}, Le/a/c/p/a;->d3(Landroid/view/LayoutInflater;)Landroid/view/LayoutInflater;

    move-result-object p1

    const p3, 0x7f0d010b

    const/4 v0, 0x0

    .line 2
    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    return-object p1
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 5

    const-string p2, "view"

    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/e/a/f2;->f:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object p2, Le/a/e/a/f2;->h:[Ls1/a/l;

    const/4 v0, 0x0

    aget-object p2, p2, v0

    invoke-virtual {p1, p0, p2}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object p1

    check-cast p1, Le/a/m3/s;

    .line 2
    iget-object p2, p1, Le/a/m3/s;->a:Landroid/widget/Spinner;

    const-string v1, "countryDropdown"

    invoke-static {p2, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v1, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Landroidx/fragment/app/Fragment;->requireContext()Landroid/content/Context;

    move-result-object v2

    const v3, 0x1090009

    iget-object v4, p0, Le/a/e/a/f2;->g:Ljava/util/List;

    invoke-direct {v1, v2, v3, v4}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 3
    iget-object p2, p0, Le/a/e/a/f2;->e:Le/a/b0/e/r/a;

    if-eqz p2, :cond_3

    const-string v1, "profileCountryIso"

    invoke-interface {p2, v1}, Le/a/b0/e/r/a;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .line 4
    iget-object v1, p0, Le/a/e/a/f2;->g:Ljava/util/List;

    .line 5
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    const/4 v3, -0x1

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 6
    check-cast v2, Le/a/e/a/f2$c;

    .line 7
    iget-object v2, v2, Le/a/e/a/f2$c;->a:Ljava/lang/String;

    .line 8
    invoke-static {v2, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_1

    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_1
    move v0, v3

    :goto_1
    if-eq v0, v3, :cond_2

    .line 9
    iget-object p2, p1, Le/a/m3/s;->a:Landroid/widget/Spinner;

    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setSelection(I)V

    .line 10
    :cond_2
    iget-object p2, p1, Le/a/m3/s;->b:Lcom/google/android/material/button/MaterialButton;

    new-instance v0, Le/a/e/a/f2$d;

    invoke-direct {v0, p1, p0}, Le/a/e/a/f2$d;-><init>(Le/a/m3/s;Le/a/e/a/f2;)V

    invoke-virtual {p2, v0}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-void

    :cond_3
    const-string p1, "accountSettings"

    .line 11
    invoke-static {p1}, Ls1/z/c/l;->l(Ljava/lang/String;)V

    const/4 p1, 0x0

    throw p1
.end method
