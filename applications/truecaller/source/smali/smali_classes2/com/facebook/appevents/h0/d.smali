.class public final Lcom/facebook/appevents/h0/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0016\u0010\u0005\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0016\u0010\n\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0007J\u0016\u0010\u000b\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u0006\u0010\u0008\u001a\u00020\tH\u0002J\u001e\u0010\u000c\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u00072\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0002J$\u0010\u000c\u001a\u00020\r2\u000c\u0010\u0010\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u00062\u000c\u0010\u000f\u001a\u0008\u0012\u0004\u0012\u00020\u00070\u0006H\u0007J\u0018\u0010\u0011\u001a\u00020\r2\u0006\u0010\u0012\u001a\u00020\u00072\u0006\u0010\u0013\u001a\u00020\u0007H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0014"
    }
    d2 = {
        "Lcom/facebook/appevents/aam/MetadataMatcher;",
        "",
        "()V",
        "MAX_INDICATOR_LENGTH",
        "",
        "getAroundViewIndicators",
        "",
        "",
        "view",
        "Landroid/view/View;",
        "getCurrentViewIndicators",
        "getTextIndicators",
        "matchIndicator",
        "",
        "indicator",
        "keys",
        "indicators",
        "matchValue",
        "text",
        "rule",
        "facebook-core_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# static fields
.field public static final a:Lcom/facebook/appevents/h0/d;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/facebook/appevents/h0/d;

    invoke-direct {v0}, Lcom/facebook/appevents/h0/d;-><init>()V

    sput-object v0, Lcom/facebook/appevents/h0/d;->a:Lcom/facebook/appevents/h0/d;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Landroid/view/View;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/h0/d;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "view"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v3, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {p0}, Lcom/facebook/appevents/i0/n/f;->i(Landroid/view/View;)Landroid/view/ViewGroup;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 3
    invoke-static {v3}, Lcom/facebook/appevents/i0/n/f;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_1
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/View;

    if-eq p0, v4, :cond_1

    .line 4
    sget-object v5, Lcom/facebook/appevents/h0/d;->a:Lcom/facebook/appevents/h0/d;

    invoke-virtual {v5, v4}, Lcom/facebook/appevents/h0/d;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :cond_2
    return-object v1

    :catchall_0
    move-exception p0

    .line 5
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final b(Landroid/view/View;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/h0/d;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return-object v2

    :cond_0
    :try_start_0
    const-string v1, "view"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v3, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {p0}, Lcom/facebook/appevents/i0/n/f;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 3
    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    :cond_1
    invoke-virtual {p0}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 6
    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 7
    :try_start_1
    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_4

    .line 8
    invoke-virtual {p0}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {p0}, Landroid/view/View;->getId()I

    move-result p0

    invoke-virtual {v5, p0}, Landroid/content/res/Resources;->getResourceName(I)Ljava/lang/String;

    move-result-object p0

    const-string v5, "resourceName"

    .line 9
    invoke-static {p0, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "/"

    new-instance v6, Ls1/f0/h;

    invoke-direct {v6, v5}, Ls1/f0/h;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p0, v4}, Ls1/f0/h;->f(Ljava/lang/CharSequence;I)Ljava/util/List;

    move-result-object p0

    new-array v5, v4, [Ljava/lang/String;

    .line 10
    invoke-interface {p0, v5}, Ljava/util/Collection;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    if-eqz p0, :cond_3

    .line 11
    check-cast p0, [Ljava/lang/String;

    .line 12
    array-length v5, p0

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    .line 13
    aget-object p0, p0, v3

    invoke-interface {v1, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_3
    new-instance p0, Ljava/lang/NullPointerException;

    const-string v5, "null cannot be cast to non-null type kotlin.Array<T>"

    invoke-direct {p0, v5}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_1
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 15
    :catch_0
    :cond_4
    :goto_0
    :try_start_2
    new-instance p0, Ljava/util/ArrayList;

    invoke-direct {p0}, Ljava/util/ArrayList;-><init>()V

    .line 16
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_5
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_7

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 17
    invoke-interface {v5}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-lez v6, :cond_6

    move v6, v3

    goto :goto_2

    :cond_6
    move v6, v4

    :goto_2
    if-eqz v6, :cond_5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x64

    if-gt v6, v7, :cond_5

    .line 18
    invoke-virtual {v5}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v5

    const-string v6, "(this as java.lang.String).toLowerCase()"

    invoke-static {v5, v6}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p0, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_1

    :cond_7
    return-object p0

    :catchall_0
    move-exception p0

    .line 19
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v2
.end method

.method public static final d(Ljava/util/List;Ljava/util/List;)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    const-class v0, Lcom/facebook/appevents/h0/d;

    invoke-static {v0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    return v2

    :cond_0
    :try_start_0
    const-string v1, "indicators"

    invoke-static {p0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v1, "keys"

    invoke-static {p1, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 2
    sget-object v3, Lcom/facebook/appevents/h0/d;->a:Lcom/facebook/appevents/h0/d;

    .line 3
    invoke-static {v3}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/4 v5, 0x1

    if-eqz v4, :cond_2

    goto :goto_0

    .line 4
    :cond_2
    :try_start_1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_4

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    const/4 v7, 0x2

    .line 5
    invoke-static {v1, v6, v2, v7}, Ls1/f0/v;->B(Ljava/lang/CharSequence;Ljava/lang/CharSequence;ZI)Z

    move-result v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v6, :cond_3

    move v1, v5

    goto :goto_1

    :catchall_0
    move-exception v1

    .line 6
    :try_start_2
    invoke-static {v1, v3}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_4
    :goto_0
    move v1, v2

    :goto_1
    if-eqz v1, :cond_1

    return v5

    :cond_5
    return v2

    :catchall_1
    move-exception p0

    .line 7
    invoke-static {p0, v0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return v2
.end method


# virtual methods
.method public final c(Landroid/view/View;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 1
    :cond_0
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    instance-of v2, p1, Landroid/widget/EditText;

    if-eqz v2, :cond_1

    return-object v0

    .line 3
    :cond_1
    instance-of v2, p1, Landroid/widget/TextView;

    if-eqz v2, :cond_4

    .line 4
    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-lez v2, :cond_2

    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-eqz v2, :cond_3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const/16 v3, 0x64

    if-ge v2, v3, :cond_3

    .line 6
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    const-string v2, "(this as java.lang.String).toLowerCase()"

    invoke-static {p1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_3
    return-object v0

    .line 7
    :cond_4
    sget-object v2, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {p1}, Lcom/facebook/appevents/i0/n/f;->a(Landroid/view/View;)Ljava/util/List;

    move-result-object p1

    .line 8
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/View;

    .line 9
    invoke-virtual {p0, v2}, Lcom/facebook/appevents/h0/d;->c(Landroid/view/View;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_5
    return-object v0

    :catchall_0
    move-exception p1

    .line 10
    invoke-static {p1, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-object v1
.end method
