.class public final Le/a/d/a/i$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d/a/i;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Le/a/d/a/a0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/d/a/i;


# direct methods
.method public constructor <init>(Le/a/d/a/i;)V
    .locals 0

    iput-object p1, p0, Le/a/d/a/i$a;->a:Le/a/d/a/i;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 8

    .line 1
    check-cast p1, Le/a/d/a/a0;

    .line 2
    iget-object p2, p0, Le/a/d/a/i$a;->a:Le/a/d/a/i;

    iget-object p2, p2, Le/a/d/a/i;->f:Le/a/d/a/b;

    .line 3
    iget-object v0, p2, Le/a/d/a/b;->h:Lcom/truecaller/utils/viewbinding/ViewBindingProperty;

    sget-object v1, Le/a/d/a/b;->j:[Ls1/a/l;

    const/4 v2, 0x0

    aget-object v1, v1, v2

    invoke-virtual {v0, p2, v1}, Lcom/truecaller/utils/viewbinding/ViewBindingProperty;->b(Ljava/lang/Object;Ls1/a/l;)Ln3/j0/a;

    move-result-object p2

    check-cast p2, Le/a/d/s/j;

    const-string v0, "binding"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "$this$populateView"

    .line 5
    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Le/a/d/a/k;->values()[Le/a/d/a/k;

    move-result-object v0

    .line 7
    new-instance v1, Ljava/util/ArrayList;

    const/4 v3, 0x7

    invoke-direct {v1, v3}, Ljava/util/ArrayList;-><init>(I)V

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_0

    .line 8
    aget-object v5, v0, v4

    .line 9
    invoke-virtual {v5}, Ljava/lang/Enum;->name()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 10
    :cond_0
    new-instance v0, Landroid/widget/ArrayAdapter;

    .line 11
    iget-object v4, p2, Le/a/d/s/j;->a:Landroidx/core/widget/NestedScrollView;

    const-string v5, "root"

    .line 12
    invoke-static {v4, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/FrameLayout;->getContext()Landroid/content/Context;

    move-result-object v4

    sget v5, Lcom/truecaller/voip/R$layout;->voip_debug_spinner_item:I

    invoke-direct {v0, v4, v5, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    .line 13
    invoke-virtual {v0, v5}, Landroid/widget/ArrayAdapter;->setDropDownViewResource(I)V

    .line 14
    iget-object p2, p2, Le/a/d/s/j;->d:Landroid/widget/Spinner;

    .line 15
    invoke-virtual {p2, v0}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 16
    sget-object v1, Le/a/d/a/k;->c:Le/a/d/a/k$a;

    .line 17
    iget-object v1, p1, Le/a/d/a/a0;->c:Lq3/a/x2/a1;

    .line 18
    invoke-interface {v1}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Le/a/d/w/h;

    const-string v4, "state"

    .line 19
    invoke-static {v1, v4}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 20
    invoke-static {}, Le/a/d/a/k;->values()[Le/a/d/a/k;

    move-result-object v4

    move v5, v2

    :goto_1
    if-ge v5, v3, :cond_2

    aget-object v6, v4, v5

    .line 21
    iget-object v7, v6, Le/a/d/a/k;->a:Le/a/d/w/h;

    .line 22
    invoke-static {v7, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_1

    goto :goto_2

    :cond_1
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    :cond_2
    const/4 v6, 0x0

    :goto_2
    if-eqz v6, :cond_3

    .line 23
    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    .line 24
    :cond_3
    invoke-virtual {p2, v2}, Landroid/widget/Spinner;->setSelection(I)V

    .line 25
    new-instance v1, Le/a/d/a/c0;

    invoke-direct {v1, v0, p1}, Le/a/d/a/c0;-><init>(Landroid/widget/ArrayAdapter;Le/a/d/a/a0;)V

    invoke-virtual {p2, v1}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 26
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
