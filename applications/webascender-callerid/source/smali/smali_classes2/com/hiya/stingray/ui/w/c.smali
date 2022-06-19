.class public final Lcom/hiya/stingray/ui/w/c;
.super Landroidx/recyclerview/widget/RecyclerView$g;
.source "SourceFile"

# interfaces
.implements Lcom/hiya/stingray/ui/common/n$b;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/hiya/stingray/ui/w/c$b;,
        Lcom/hiya/stingray/ui/w/c$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroidx/recyclerview/widget/RecyclerView$g<",
        "Landroidx/recyclerview/widget/RecyclerView$d0;",
        ">;",
        "Lcom/hiya/stingray/ui/common/n$b;"
    }
.end annotation


# static fields
.field private static final z:I


# instance fields
.field private f:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/n0;",
            ">;"
        }
    .end annotation
.end field

.field private g:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z

.field private i:Z

.field private j:Lcom/hiya/stingray/t/h1/i;

.field private k:Z

.field private l:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/n0;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private m:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/n0;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private n:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private o:Lkotlin/w/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private p:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private q:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private r:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private s:Ljava/lang/String;

.field private t:Z

.field private u:Lkotlin/w/b/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation
.end field

.field private v:Ljava/lang/String;

.field private w:Ljava/lang/String;

.field private final x:Landroid/content/Context;

.field private final y:Lcom/squareup/picasso/Picasso;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/hiya/stingray/ui/w/c$b;->values()[Lcom/hiya/stingray/ui/w/c$b;

    move-result-object v0

    array-length v0, v0

    add-int/lit8 v0, v0, 0x1

    sput v0, Lcom/hiya/stingray/ui/w/c;->z:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/hiya/stingray/ui/local/search/f;Lcom/squareup/picasso/Picasso;)V
    .locals 1

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "searchAnalytics"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p2, "picasso"

    invoke-static {p3, p2}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Landroidx/recyclerview/widget/RecyclerView$g;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->x:Landroid/content/Context;

    iput-object p3, p0, Lcom/hiya/stingray/ui/w/c;->y:Lcom/squareup/picasso/Picasso;

    .line 2
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    .line 3
    invoke-static {}, Lkotlin/s/k;->g()Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->g:Ljava/util/List;

    const/4 p1, 0x1

    .line 4
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/w/c;->k:Z

    .line 5
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1}, Ljava/lang/String;-><init>()V

    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->s:Ljava/lang/String;

    return-void
.end method

.method private final c(ILcom/hiya/stingray/ui/w/c$b;)I
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/w/c;->h:Z

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez v0, :cond_1

    iget-boolean v0, p0, Lcom/hiya/stingray/ui/w/c;->t:Z

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->w:Ljava/lang/String;

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    .line 2
    :goto_1
    sget-object v3, Lcom/hiya/stingray/ui/w/d;->a:[I

    invoke-virtual {p2}, Ljava/lang/Enum;->ordinal()I

    move-result p2

    aget p2, v3, p2

    if-eq p2, v2, :cond_5

    const/4 v3, 0x2

    if-eq p2, v3, :cond_2

    goto :goto_2

    .line 3
    :cond_2
    iget-object p2, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p2

    sub-int/2addr p1, p2

    sub-int/2addr p1, v0

    iget-boolean p2, p0, Lcom/hiya/stingray/ui/w/c;->i:Z

    if-nez p2, :cond_3

    iget-object p2, p0, Lcom/hiya/stingray/ui/w/c;->v:Ljava/lang/String;

    if-eqz p2, :cond_4

    :cond_3
    const/4 v1, 0x1

    :cond_4
    sub-int/2addr p1, v1

    goto :goto_2

    :cond_5
    sub-int/2addr p1, v0

    :goto_2
    return p1
.end method

.method private final e()Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->x:Landroid/content/Context;

    const v1, 0x7f1101a4

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private final f()Ljava/lang/String;
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/w/c;->h:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->x:Landroid/content/Context;

    const v1, 0x7f1100a0

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->x:Landroid/content/Context;

    const v1, 0x7f1100a2

    invoke-virtual {v0, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 3

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget v0, Lcom/hiya/stingray/ui/w/c;->z:I

    sget-object v1, Lcom/hiya/stingray/ui/w/c$a;->IDENTITIES:Lcom/hiya/stingray/ui/w/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/w/m;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0068

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(view\u2026n_slim, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/w/m;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 5
    :cond_0
    new-instance p2, Lcom/hiya/stingray/ui/w/e;

    .line 6
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00be

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(view\u2026header, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 7
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/w/e;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2
.end method

.method public b(Landroidx/recyclerview/widget/RecyclerView$d0;Lcom/hiya/stingray/ui/common/n$c;)V
    .locals 3

    const-string v0, "holder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "section"

    invoke-static {p2, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p2}, Lcom/hiya/stingray/ui/common/n$c;->d()Ljava/lang/Integer;

    move-result-object p2

    .line 2
    sget v0, Lcom/hiya/stingray/ui/w/c;->z:I

    sget-object v1, Lcom/hiya/stingray/ui/w/c$a;->IDENTITIES:Lcom/hiya/stingray/ui/w/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v1, v0

    if-nez p2, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    if-ne v2, v1, :cond_1

    check-cast p1, Lcom/hiya/stingray/ui/w/m;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/c;->f()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/w/m;->n(Ljava/lang/String;)V

    goto :goto_1

    .line 3
    :cond_1
    :goto_0
    sget-object v1, Lcom/hiya/stingray/ui/w/c$a;->BUSINESSES:Lcom/hiya/stingray/ui/w/c$a;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    add-int/2addr v0, v1

    if-nez p2, :cond_2

    goto :goto_1

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    if-ne p2, v0, :cond_3

    check-cast p1, Lcom/hiya/stingray/ui/w/e;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/c;->e()Ljava/lang/String;

    move-result-object p2

    iget-boolean v0, p0, Lcom/hiya/stingray/ui/w/c;->k:Z

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/c;->j:Lcom/hiya/stingray/t/h1/i;

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/c;->p:Lkotlin/w/b/a;

    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/hiya/stingray/ui/w/e;->n(Ljava/lang/String;ZLcom/hiya/stingray/t/h1/i;Lkotlin/w/b/a;)V

    :cond_3
    :goto_1
    return-void
.end method

.method public final d()Lkotlin/w/b/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->q:Lkotlin/w/b/a;

    return-object v0
.end method

.method public final g()Ljava/util/List;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/ui/common/n$c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/w/c;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/w/c;->t:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/c;->w:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    add-int/2addr v0, v1

    const/4 v1, 0x2

    new-array v1, v1, [Lcom/hiya/stingray/ui/common/n$c;

    .line 2
    iget-object v4, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    const/4 v5, 0x0

    if-nez v4, :cond_3

    iget-boolean v4, p0, Lcom/hiya/stingray/ui/w/c;->h:Z

    if-nez v4, :cond_3

    iget-object v4, p0, Lcom/hiya/stingray/ui/w/c;->w:Ljava/lang/String;

    if-eqz v4, :cond_2

    goto :goto_2

    :cond_2
    move-object v4, v5

    goto :goto_3

    :cond_3
    :goto_2
    new-instance v4, Lcom/hiya/stingray/ui/common/n$c;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/c;->f()Ljava/lang/String;

    move-result-object v6

    sget v7, Lcom/hiya/stingray/ui/w/c;->z:I

    sget-object v8, Lcom/hiya/stingray/ui/w/c$a;->IDENTITIES:Lcom/hiya/stingray/ui/w/c$a;

    invoke-virtual {v8}, Ljava/lang/Enum;->ordinal()I

    move-result v8

    add-int/2addr v7, v8

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-direct {v4, v2, v6, v7}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;Ljava/lang/Integer;)V

    :goto_3
    aput-object v4, v1, v2

    .line 3
    iget-object v2, p0, Lcom/hiya/stingray/ui/w/c;->g:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    xor-int/2addr v2, v3

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/hiya/stingray/ui/w/c;->i:Z

    if-nez v2, :cond_4

    iget-object v2, p0, Lcom/hiya/stingray/ui/w/c;->v:Ljava/lang/String;

    if-nez v2, :cond_4

    iget-boolean v2, p0, Lcom/hiya/stingray/ui/w/c;->k:Z

    if-eqz v2, :cond_5

    :cond_4
    new-instance v5, Lcom/hiya/stingray/ui/common/n$c;

    invoke-direct {p0}, Lcom/hiya/stingray/ui/w/c;->e()Ljava/lang/String;

    move-result-object v2

    sget v4, Lcom/hiya/stingray/ui/w/c;->z:I

    sget-object v6, Lcom/hiya/stingray/ui/w/c$a;->BUSINESSES:Lcom/hiya/stingray/ui/w/c$a;

    invoke-virtual {v6}, Ljava/lang/Enum;->ordinal()I

    move-result v6

    add-int/2addr v4, v6

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-direct {v5, v0, v2, v4}, Lcom/hiya/stingray/ui/common/n$c;-><init>(ILjava/lang/CharSequence;Ljava/lang/Integer;)V

    :cond_5
    aput-object v5, v1, v3

    .line 4
    invoke-static {v1}, Lkotlin/s/k;->k([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public getItemCount()I
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/c;->g:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/w/c;->h:Z

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_1

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/w/c;->t:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/c;->w:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    add-int/2addr v0, v1

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/w/c;->i:Z

    add-int/2addr v0, v1

    if-nez v1, :cond_2

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/c;->v:Ljava/lang/String;

    if-eqz v1, :cond_2

    const/4 v2, 0x1

    :cond_2
    add-int/2addr v0, v2

    return v0
.end method

.method public getItemViewType(I)I
    .locals 2

    .line 1
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/w/c;->h:Z

    if-nez v0, :cond_1

    iget-boolean v1, p0, Lcom/hiya/stingray/ui/w/c;->t:Z

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/c;->w:Ljava/lang/String;

    if-eqz v1, :cond_0

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v1, 0x1

    :goto_1
    if-eqz v0, :cond_2

    if-nez p1, :cond_2

    .line 2
    sget-object p1, Lcom/hiya/stingray/ui/w/c$b;->CONTACTS_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->w:Ljava/lang/String;

    if-eqz v0, :cond_3

    if-nez p1, :cond_3

    sget-object p1, Lcom/hiya/stingray/ui/w/c$b;->IDENTITIES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_2

    .line 4
    :cond_3
    iget-boolean v0, p0, Lcom/hiya/stingray/ui/w/c;->t:Z

    if-eqz v0, :cond_4

    if-nez p1, :cond_4

    sget-object p1, Lcom/hiya/stingray/ui/w/c$b;->LOOKUP:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_2

    .line 5
    :cond_4
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-ge p1, v0, :cond_5

    sget-object p1, Lcom/hiya/stingray/ui/w/c$b;->IDENTITY:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_2

    .line 6
    :cond_5
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_6

    iget-boolean v0, p0, Lcom/hiya/stingray/ui/w/c;->i:Z

    if-eqz v0, :cond_6

    sget-object p1, Lcom/hiya/stingray/ui/w/c$b;->LOCATION_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_2

    .line 7
    :cond_6
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    if-ne p1, v0, :cond_7

    iget-object p1, p0, Lcom/hiya/stingray/ui/w/c;->v:Ljava/lang/String;

    if-eqz p1, :cond_7

    sget-object p1, Lcom/hiya/stingray/ui/w/c$b;->BUSINESSES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    goto :goto_2

    .line 8
    :cond_7
    sget-object p1, Lcom/hiya/stingray/ui/w/c$b;->BUSINESS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result p1

    :goto_2
    return p1
.end method

.method public final h(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->o:Lkotlin/w/b/l;

    return-void
.end method

.method public final i(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/h1/d;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->n:Lkotlin/w/b/l;

    return-void
.end method

.method public final j(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->v:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final k(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/t/h1/d;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->g:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final l(Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->q:Lkotlin/w/b/a;

    return-void
.end method

.method public final m(Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lcom/hiya/stingray/t/n0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final n(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->w:Ljava/lang/String;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final o(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/n0;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->l:Lkotlin/w/b/l;

    return-void
.end method

.method public onBindViewHolder(Landroidx/recyclerview/widget/RecyclerView$d0;I)V
    .locals 4

    const-string v0, "viewHolder"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/hiya/stingray/ui/w/c;->getItemViewType(I)I

    move-result v0

    .line 2
    sget-object v1, Lcom/hiya/stingray/ui/w/c$b;->IDENTITY:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    const/4 v3, 0x0

    if-ne v0, v2, :cond_1

    instance-of v0, p1, Lcom/hiya/stingray/ui/w/b;

    if-nez v0, :cond_0

    move-object p1, v3

    :cond_0
    check-cast p1, Lcom/hiya/stingray/ui/w/b;

    if-eqz p1, :cond_f

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->f:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Lcom/hiya/stingray/ui/w/c;->c(ILcom/hiya/stingray/ui/w/c$b;)I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/t/n0;

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->s:Ljava/lang/String;

    invoke-virtual {p1, p2, v0}, Lcom/hiya/stingray/ui/w/b;->q(Lcom/hiya/stingray/t/n0;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 3
    :cond_1
    sget-object v1, Lcom/hiya/stingray/ui/w/c$b;->CONTACTS_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_3

    instance-of p2, p1, Lcom/hiya/stingray/ui/w/g;

    if-nez p2, :cond_2

    move-object p1, v3

    :cond_2
    check-cast p1, Lcom/hiya/stingray/ui/w/g;

    if-eqz p1, :cond_f

    invoke-virtual {p1}, Lcom/hiya/stingray/ui/w/g;->o()V

    goto/16 :goto_0

    .line 4
    :cond_3
    sget-object v1, Lcom/hiya/stingray/ui/w/c$b;->LOOKUP:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_5

    instance-of p2, p1, Lcom/hiya/stingray/ui/w/k;

    if-nez p2, :cond_4

    move-object p1, v3

    :cond_4
    check-cast p1, Lcom/hiya/stingray/ui/w/k;

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/hiya/stingray/ui/w/c;->x:Landroid/content/Context;

    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->s:Ljava/lang/String;

    iget-object v1, p0, Lcom/hiya/stingray/ui/w/c;->u:Lkotlin/w/b/a;

    invoke-virtual {p1, p2, v0, v1}, Lcom/hiya/stingray/ui/w/k;->n(Landroid/content/Context;Ljava/lang/String;Lkotlin/w/b/a;)V

    goto/16 :goto_0

    .line 5
    :cond_5
    sget-object v1, Lcom/hiya/stingray/ui/w/c$b;->LOCATION_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_7

    instance-of p2, p1, Lcom/hiya/stingray/ui/w/j;

    if-nez p2, :cond_6

    move-object p1, v3

    :cond_6
    check-cast p1, Lcom/hiya/stingray/ui/w/j;

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/hiya/stingray/ui/w/c;->r:Lkotlin/w/b/a;

    invoke-virtual {p1, p2}, Lcom/hiya/stingray/ui/w/j;->n(Lkotlin/w/b/a;)V

    goto :goto_0

    .line 6
    :cond_7
    sget-object v1, Lcom/hiya/stingray/ui/w/c$b;->BUSINESSES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    const-string v2, ""

    if-ne v0, v1, :cond_a

    instance-of p2, p1, Lcom/hiya/stingray/ui/w/n;

    if-nez p2, :cond_8

    move-object p1, v3

    :cond_8
    check-cast p1, Lcom/hiya/stingray/ui/w/n;

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/hiya/stingray/ui/w/c;->v:Ljava/lang/String;

    if-eqz p2, :cond_9

    move-object v2, p2

    :cond_9
    invoke-virtual {p1, v2}, Lcom/hiya/stingray/ui/w/n;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 7
    :cond_a
    sget-object v1, Lcom/hiya/stingray/ui/w/c$b;->IDENTITIES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    if-ne v0, v1, :cond_d

    instance-of p2, p1, Lcom/hiya/stingray/ui/w/n;

    if-nez p2, :cond_b

    move-object p1, v3

    :cond_b
    check-cast p1, Lcom/hiya/stingray/ui/w/n;

    if-eqz p1, :cond_f

    iget-object p2, p0, Lcom/hiya/stingray/ui/w/c;->w:Ljava/lang/String;

    if-eqz p2, :cond_c

    move-object v2, p2

    :cond_c
    invoke-virtual {p1, v2}, Lcom/hiya/stingray/ui/w/n;->n(Ljava/lang/String;)V

    goto :goto_0

    .line 8
    :cond_d
    sget-object v1, Lcom/hiya/stingray/ui/w/c$b;->BUSINESS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v2

    if-ne v0, v2, :cond_f

    instance-of v0, p1, Lcom/hiya/stingray/ui/local/common/c$a;

    if-nez v0, :cond_e

    move-object p1, v3

    :cond_e
    check-cast p1, Lcom/hiya/stingray/ui/local/common/c$a;

    if-eqz p1, :cond_f

    .line 9
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->g:Ljava/util/List;

    invoke-direct {p0, p2, v1}, Lcom/hiya/stingray/ui/w/c;->c(ILcom/hiya/stingray/ui/w/c$b;)I

    move-result p2

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/hiya/stingray/t/h1/d;

    .line 10
    iget-object v0, p0, Lcom/hiya/stingray/ui/w/c;->x:Landroid/content/Context;

    .line 11
    iget-object v1, p0, Lcom/hiya/stingray/ui/w/c;->n:Lkotlin/w/b/l;

    .line 12
    iget-object v2, p0, Lcom/hiya/stingray/ui/w/c;->o:Lkotlin/w/b/l;

    .line 13
    invoke-virtual {p1, p2, v0, v1, v2}, Lcom/hiya/stingray/ui/local/common/c$a;->n(Lcom/hiya/stingray/t/h1/d;Landroid/content/Context;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    :cond_f
    :goto_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroidx/recyclerview/widget/RecyclerView$d0;
    .locals 8

    const-string v0, "viewGroup"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcom/hiya/stingray/ui/w/c$b;->IDENTITY:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const/4 v1, 0x0

    if-ne p2, v0, :cond_0

    .line 2
    new-instance p2, Lcom/hiya/stingray/ui/w/b;

    .line 3
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00a8

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    const-string v0, "LayoutInflater.from(view\u2026entity, viewGroup, false)"

    invoke-static {v3, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string p1, "viewGroup.context"

    invoke-static {v4, p1}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v5, p0, Lcom/hiya/stingray/ui/w/c;->y:Lcom/squareup/picasso/Picasso;

    .line 6
    iget-object v6, p0, Lcom/hiya/stingray/ui/w/c;->l:Lkotlin/w/b/l;

    .line 7
    iget-object v7, p0, Lcom/hiya/stingray/ui/w/c;->m:Lkotlin/w/b/l;

    move-object v2, p2

    .line 8
    invoke-direct/range {v2 .. v7}, Lcom/hiya/stingray/ui/w/b;-><init>(Landroid/view/View;Landroid/content/Context;Lcom/squareup/picasso/Picasso;Lkotlin/w/b/l;Lkotlin/w/b/l;)V

    goto/16 :goto_0

    .line 9
    :cond_0
    sget-object v0, Lcom/hiya/stingray/ui/w/c$b;->CONTACTS_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "LayoutInflater.from(view\u2026ission, viewGroup, false)"

    if-ne p2, v0, :cond_1

    .line 10
    new-instance p2, Lcom/hiya/stingray/ui/w/g;

    .line 11
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c00a9

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    new-instance v0, Lcom/hiya/stingray/ui/w/c$c;

    invoke-direct {v0, p0}, Lcom/hiya/stingray/ui/w/c$c;-><init>(Lcom/hiya/stingray/ui/w/c;)V

    .line 13
    invoke-direct {p2, p1, v0}, Lcom/hiya/stingray/ui/w/g;-><init>(Landroid/view/View;Lkotlin/w/b/a;)V

    goto/16 :goto_0

    .line 14
    :cond_1
    sget-object v0, Lcom/hiya/stingray/ui/w/c$b;->LOOKUP:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_2

    new-instance p2, Lcom/hiya/stingray/ui/w/k;

    .line 15
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c0125

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(view\u2026lookup, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 16
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/w/k;-><init>(Landroid/view/View;)V

    goto/16 :goto_0

    .line 17
    :cond_2
    sget-object v0, Lcom/hiya/stingray/ui/w/c$b;->LOCATION_PERMISSION:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_3

    new-instance p2, Lcom/hiya/stingray/ui/w/j;

    .line 18
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v3, 0x7f0c00b9

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 19
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/w/j;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 20
    :cond_3
    sget-object v0, Lcom/hiya/stingray/ui/w/c$b;->BUSINESSES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    const-string v2, "LayoutInflater.from(view\u2026status, viewGroup, false)"

    const v3, 0x7f0c0126

    if-ne p2, v0, :cond_4

    new-instance p2, Lcom/hiya/stingray/ui/w/n;

    .line 21
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/w/n;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 23
    :cond_4
    sget-object v0, Lcom/hiya/stingray/ui/w/c$b;->IDENTITIES_STATUS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_5

    new-instance p2, Lcom/hiya/stingray/ui/w/n;

    .line 24
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, v3, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    invoke-static {p1, v2}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    .line 25
    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/w/n;-><init>(Landroid/view/View;)V

    goto :goto_0

    .line 26
    :cond_5
    sget-object v0, Lcom/hiya/stingray/ui/w/c$b;->BUSINESS:Lcom/hiya/stingray/ui/w/c$b;

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-ne p2, v0, :cond_6

    .line 27
    new-instance p2, Lcom/hiya/stingray/ui/local/common/c$a;

    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    const v2, 0x7f0c00b8

    invoke-virtual {v0, v2, p1, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    const-string v0, "LayoutInflater.from(view\u2026y_item, viewGroup, false)"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->c(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p2, p1}, Lcom/hiya/stingray/ui/local/common/c$a;-><init>(Landroid/view/View;)V

    :goto_0
    return-object p2

    .line 28
    :cond_6
    new-instance p1, Ljava/lang/IllegalStateException;

    invoke-direct {p1}, Ljava/lang/IllegalStateException;-><init>()V

    throw p1
.end method

.method public final p(Lkotlin/w/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/l<",
            "-",
            "Lcom/hiya/stingray/t/n0;",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->m:Lkotlin/w/b/l;

    return-void
.end method

.method public final q(Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->r:Lkotlin/w/b/a;

    return-void
.end method

.method public final r(Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->u:Lkotlin/w/b/a;

    return-void
.end method

.method public final s(Lcom/hiya/stingray/t/h1/i;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->j:Lcom/hiya/stingray/t/h1/i;

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final t(Lkotlin/w/b/a;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/w/b/a<",
            "Lkotlin/r;",
            ">;)V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->p:Lkotlin/w/b/a;

    return-void
.end method

.method public final u(Ljava/lang/String;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/ui/w/c;->s:Ljava/lang/String;

    return-void
.end method

.method public final v(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/w/c;->h:Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final w(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/w/c;->i:Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final x(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/w/c;->t:Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method

.method public final y(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/hiya/stingray/ui/w/c;->k:Z

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    return-void
.end method
