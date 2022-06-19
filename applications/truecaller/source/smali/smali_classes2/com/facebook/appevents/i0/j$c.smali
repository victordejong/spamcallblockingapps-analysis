.class public final Lcom/facebook/appevents/i0/j$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;
.implements Landroid/view/ViewTreeObserver$OnScrollChangedListener;
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/appevents/i0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\u0008\u0007\u0018\u0000 \u001f2\u00020\u00012\u00020\u00022\u00020\u0003:\u0001\u001fB7\u0012\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0016\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000b\u0012\u0006\u0010\u000c\u001a\u00020\n\u00a2\u0006\u0002\u0010\rJ\"\u0010\u0012\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u0010H\u0002J \u0010\u0017\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J \u0010\u0018\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J \u0010\u0019\u001a\u00020\u00132\u0006\u0010\u0014\u001a\u00020\u00152\u0006\u0010\u0004\u001a\u00020\u00052\u0006\u0010\u0016\u001a\u00020\u0010H\u0002J\u001c\u0010\u001a\u001a\u00020\u00132\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00102\u0008\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0002J\u0008\u0010\u001b\u001a\u00020\u0013H\u0016J\u0008\u0010\u001c\u001a\u00020\u0013H\u0016J\u0008\u0010\u001d\u001a\u00020\u0013H\u0016J\u0008\u0010\u001e\u001a\u00020\u0013H\u0002R\u000e\u0010\u000c\u001a\u00020\nX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u000e\u001a\n\u0012\u0004\u0012\u00020\u0010\u0018\u00010\u000fX\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u001e\u0010\u0008\u001a\u0012\u0012\u0004\u0012\u00020\n0\tj\u0008\u0012\u0004\u0012\u00020\n`\u000bX\u0082\u0004\u00a2\u0006\u0002\n\u0000R\u0016\u0010\u0004\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00050\u0011X\u0082\u0004\u00a2\u0006\u0002\n\u0000\u00a8\u0006 "
    }
    d2 = {
        "Lcom/facebook/appevents/codeless/CodelessMatcher$ViewMatcher;",
        "Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;",
        "Landroid/view/ViewTreeObserver$OnScrollChangedListener;",
        "Ljava/lang/Runnable;",
        "rootView",
        "Landroid/view/View;",
        "handler",
        "Landroid/os/Handler;",
        "listenerSet",
        "Ljava/util/HashSet;",
        "",
        "Lkotlin/collections/HashSet;",
        "activityName",
        "(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V",
        "eventBindings",
        "",
        "Lcom/facebook/appevents/codeless/internal/EventBinding;",
        "Ljava/lang/ref/WeakReference;",
        "attachListener",
        "",
        "matchedView",
        "Lcom/facebook/appevents/codeless/CodelessMatcher$MatchedView;",
        "mapping",
        "attachOnClickListener",
        "attachOnItemClickListener",
        "attachRCTListener",
        "findView",
        "onGlobalLayout",
        "onScrollChanged",
        "run",
        "startMatch",
        "Companion",
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


# instance fields
.field public final a:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field public b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/facebook/appevents/i0/n/a;",
            ">;"
        }
    .end annotation
.end field

.field public final c:Landroid/os/Handler;

.field public final d:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroid/os/Handler;Ljava/util/HashSet;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "Landroid/os/Handler;",
            "Ljava/util/HashSet<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-string v0, "handler"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "listenerSet"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "activityName"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/facebook/appevents/i0/j$c;->a:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p2, p0, Lcom/facebook/appevents/i0/j$c;->c:Landroid/os/Handler;

    .line 4
    iput-object p3, p0, Lcom/facebook/appevents/i0/j$c;->d:Ljava/util/HashSet;

    .line 5
    iput-object p4, p0, Lcom/facebook/appevents/i0/j$c;->e:Ljava/lang/String;

    const-wide/16 p3, 0xc8

    .line 6
    invoke-virtual {p2, p0, p3, p4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public static final d(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/facebook/appevents/i0/n/a;",
            "Landroid/view/View;",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/i0/n/c;",
            ">;II",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Lcom/facebook/appevents/i0/j$b;",
            ">;"
        }
    .end annotation

    const-string v0, "path"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mapKey"

    invoke-static {p5, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p5, 0x2e

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    .line 2
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-nez p1, :cond_0

    return-object v0

    .line 3
    :cond_0
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-lt p3, v1, :cond_1

    .line 4
    new-instance p4, Lcom/facebook/appevents/i0/j$b;

    invoke-direct {p4, p1, p5}, Lcom/facebook/appevents/i0/j$b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto/16 :goto_6

    .line 5
    :cond_1
    invoke-interface {p2, p3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/appevents/i0/n/c;

    .line 6
    iget-object v4, v1, Lcom/facebook/appevents/i0/n/c;->a:Ljava/lang/String;

    const-string v5, ".."

    .line 7
    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 8
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object p1

    .line 9
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_3

    .line 10
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/facebook/appevents/i0/j$c;->e(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    .line 11
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_3

    move v5, v2

    :goto_0
    add-int/lit8 v7, v5, 0x1

    .line 12
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    add-int/lit8 v4, p3, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v6, p5

    .line 13
    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/i0/j$c;->d(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-lt v7, p4, :cond_2

    goto :goto_1

    :cond_2
    move v5, v7

    goto :goto_0

    :cond_3
    :goto_1
    return-object v0

    .line 15
    :cond_4
    iget-object v4, v1, Lcom/facebook/appevents/i0/n/c;->a:Ljava/lang/String;

    const-string v5, "."

    .line 16
    invoke-static {v4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    .line 17
    new-instance p0, Lcom/facebook/appevents/i0/j$b;

    invoke-direct {p0, p1, p5}, Lcom/facebook/appevents/i0/j$b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0

    .line 18
    :cond_5
    iget v4, v1, Lcom/facebook/appevents/i0/n/c;->b:I

    const/4 v6, -0x1

    if-eq v4, v6, :cond_6

    if-eq p4, v4, :cond_6

    goto/16 :goto_4

    .line 19
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p4

    invoke-virtual {p4}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;

    move-result-object p4

    .line 20
    iget-object v4, v1, Lcom/facebook/appevents/i0/n/c;->a:Ljava/lang/String;

    .line 21
    invoke-static {p4, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    .line 22
    iget-object p4, v1, Lcom/facebook/appevents/i0/n/c;->a:Ljava/lang/String;

    const-string v4, ".*android\\..*"

    .line 23
    invoke-static {v4, p4}, Le/d/c/a/a;->Z0(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p4

    if-eqz p4, :cond_e

    .line 24
    iget-object p4, v1, Lcom/facebook/appevents/i0/n/c;->a:Ljava/lang/String;

    .line 25
    filled-new-array {v5}, [Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x6

    invoke-static {p4, v4, v2, v2, v5}, Ls1/f0/v;->U(Ljava/lang/CharSequence;[Ljava/lang/String;ZII)Ljava/util/List;

    move-result-object p4

    .line 26
    invoke-interface {p4}, Ljava/util/Collection;->isEmpty()Z

    move-result v4

    xor-int/2addr v4, v3

    if-eqz v4, :cond_e

    .line 27
    invoke-static {p4, v3}, Le/d/c/a/a;->G1(Ljava/util/List;I)Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Ljava/lang/String;

    .line 28
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, p4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_7

    goto/16 :goto_4

    .line 29
    :cond_7
    iget p4, v1, Lcom/facebook/appevents/i0/n/c;->h:I

    and-int/2addr p4, v3

    if-lez p4, :cond_8

    .line 30
    iget p4, v1, Lcom/facebook/appevents/i0/n/c;->c:I

    .line 31
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v4

    if-eq p4, v4, :cond_8

    goto/16 :goto_4

    .line 32
    :cond_8
    iget p4, v1, Lcom/facebook/appevents/i0/n/c;->h:I

    and-int/lit8 p4, p4, 0x2

    const-string v4, ""

    if-lez p4, :cond_9

    .line 33
    iget-object p4, v1, Lcom/facebook/appevents/i0/n/c;->d:Ljava/lang/String;

    .line 34
    sget-object v5, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {p1}, Lcom/facebook/appevents/i0/n/f;->j(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 35
    invoke-static {v5}, Lcom/facebook/internal/q0;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/facebook/internal/q0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 36
    invoke-static {p4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    invoke-static {p4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_9

    goto/16 :goto_4

    .line 37
    :cond_9
    iget p4, v1, Lcom/facebook/appevents/i0/n/c;->h:I

    and-int/lit8 p4, p4, 0x8

    if-lez p4, :cond_b

    .line 38
    iget-object p4, v1, Lcom/facebook/appevents/i0/n/c;->f:Ljava/lang/String;

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    if-nez v5, :cond_a

    move-object v5, v4

    goto :goto_2

    .line 40
    :cond_a
    invoke-virtual {p1}, Landroid/view/View;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    .line 41
    :goto_2
    invoke-static {v5}, Lcom/facebook/internal/q0;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/facebook/internal/q0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 42
    invoke-static {p4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    invoke-static {p4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_b

    goto :goto_4

    .line 43
    :cond_b
    iget p4, v1, Lcom/facebook/appevents/i0/n/c;->h:I

    and-int/lit8 p4, p4, 0x10

    if-lez p4, :cond_c

    .line 44
    iget-object p4, v1, Lcom/facebook/appevents/i0/n/c;->g:Ljava/lang/String;

    .line 45
    sget-object v5, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {p1}, Lcom/facebook/appevents/i0/n/f;->h(Landroid/view/View;)Ljava/lang/String;

    move-result-object v5

    .line 46
    invoke-static {v5}, Lcom/facebook/internal/q0;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, v4}, Lcom/facebook/internal/q0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 47
    invoke-static {p4, v5}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_c

    invoke-static {p4, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_c

    goto :goto_4

    .line 48
    :cond_c
    iget p4, v1, Lcom/facebook/appevents/i0/n/c;->h:I

    and-int/lit8 p4, p4, 0x4

    if-lez p4, :cond_f

    .line 49
    iget-object p4, v1, Lcom/facebook/appevents/i0/n/c;->e:Ljava/lang/String;

    .line 50
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_d

    move-object v1, v4

    goto :goto_3

    :cond_d
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 51
    :goto_3
    invoke-static {v1}, Lcom/facebook/internal/q0;->R(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, v4}, Lcom/facebook/internal/q0;->f(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 52
    invoke-static {p4, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_f

    invoke-static {p4, v4}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p4

    if-nez p4, :cond_f

    :cond_e
    :goto_4
    move p4, v2

    goto :goto_5

    :cond_f
    move p4, v3

    :goto_5
    if-nez p4, :cond_10

    return-object v0

    .line 53
    :cond_10
    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result p4

    sub-int/2addr p4, v3

    if-ne p3, p4, :cond_11

    .line 54
    new-instance p4, Lcom/facebook/appevents/i0/j$b;

    invoke-direct {p4, p1, p5}, Lcom/facebook/appevents/i0/j$b;-><init>(Landroid/view/View;Ljava/lang/String;)V

    invoke-interface {v0, p4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_11
    :goto_6
    instance-of p4, p1, Landroid/view/ViewGroup;

    if-eqz p4, :cond_13

    .line 56
    check-cast p1, Landroid/view/ViewGroup;

    invoke-static {p1}, Lcom/facebook/appevents/i0/j$c;->e(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object p1

    .line 57
    check-cast p1, Ljava/util/ArrayList;

    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result p4

    if-lez p4, :cond_13

    move v5, v2

    :goto_7
    add-int/lit8 v7, v5, 0x1

    .line 58
    invoke-virtual {p1, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v2, v1

    check-cast v2, Landroid/view/View;

    add-int/lit8 v4, p3, 0x1

    move-object v1, p0

    move-object v3, p2

    move-object v6, p5

    .line 59
    invoke-static/range {v1 .. v6}, Lcom/facebook/appevents/i0/j$c;->d(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 60
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    if-lt v7, p4, :cond_12

    goto :goto_8

    :cond_12
    move v5, v7

    goto :goto_7

    :cond_13
    :goto_8
    return-object v0
.end method

.method public static final e(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-virtual {p0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-lez v1, :cond_2

    const/4 v2, 0x0

    :goto_0
    add-int/lit8 v3, v2, 0x1

    .line 3
    invoke-virtual {p0, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Landroid/view/View;->getVisibility()I

    move-result v4

    if-nez v4, :cond_0

    const-string v4, "child"

    .line 5
    invoke-static {v2, v4}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    if-lt v3, v1, :cond_1

    goto :goto_1

    :cond_1
    move v2, v3

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0
.end method


# virtual methods
.method public final a(Lcom/facebook/appevents/i0/j$b;Landroid/view/View;Lcom/facebook/appevents/i0/n/a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/facebook/appevents/i0/j$b;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/facebook/appevents/i0/j$b;->b:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {v0}, Lcom/facebook/appevents/i0/n/f;->f(Landroid/view/View;)Landroid/view/View$OnClickListener;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/facebook/appevents/i0/h$a;

    if-eqz v2, :cond_1

    const-string v2, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnClickListener"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/facebook/appevents/i0/h$a;

    .line 6
    iget-boolean v1, v1, Lcom/facebook/appevents/i0/h$a;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/facebook/appevents/i0/j$c;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 8
    const-class v1, Lcom/facebook/appevents/i0/h;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    const-string v2, "mapping"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rootView"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "hostView"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lcom/facebook/appevents/i0/h$a;

    invoke-direct {v2, p3, p2, v0}, Lcom/facebook/appevents/i0/h$a;-><init>(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-static {p2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 10
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 11
    iget-object p2, p0, Lcom/facebook/appevents/i0/j$c;->d:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final b(Lcom/facebook/appevents/i0/j$b;Landroid/view/View;Lcom/facebook/appevents/i0/n/a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/facebook/appevents/i0/j$b;->a()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/AdapterView;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/facebook/appevents/i0/j$b;->b:Ljava/lang/String;

    .line 3
    invoke-virtual {v0}, Landroid/widget/AdapterView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/facebook/appevents/i0/h$b;

    if-eqz v2, :cond_1

    const-string v2, "null cannot be cast to non-null type com.facebook.appevents.codeless.CodelessLoggingEventListener.AutoLoggingOnItemClickListener"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/facebook/appevents/i0/h$b;

    .line 6
    iget-boolean v1, v1, Lcom/facebook/appevents/i0/h$b;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/facebook/appevents/i0/j$c;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 8
    const-class v1, Lcom/facebook/appevents/i0/h;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    const-string v2, "mapping"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rootView"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "hostView"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lcom/facebook/appevents/i0/h$b;

    invoke-direct {v2, p3, p2, v0}, Lcom/facebook/appevents/i0/h$b;-><init>(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Landroid/widget/AdapterView;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-static {p2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 10
    :goto_1
    invoke-virtual {v0, v3}, Landroid/widget/AdapterView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 11
    iget-object p2, p0, Lcom/facebook/appevents/i0/j$c;->d:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final c(Lcom/facebook/appevents/i0/j$b;Landroid/view/View;Lcom/facebook/appevents/i0/n/a;)V
    .locals 4

    .line 1
    invoke-virtual {p1}, Lcom/facebook/appevents/i0/j$b;->a()Landroid/view/View;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object p1, p1, Lcom/facebook/appevents/i0/j$b;->b:Ljava/lang/String;

    .line 3
    sget-object v1, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-static {v0}, Lcom/facebook/appevents/i0/n/f;->g(Landroid/view/View;)Landroid/view/View$OnTouchListener;

    move-result-object v1

    .line 4
    instance-of v2, v1, Lcom/facebook/appevents/i0/k$a;

    if-eqz v2, :cond_1

    const-string v2, "null cannot be cast to non-null type com.facebook.appevents.codeless.RCTCodelessLoggingEventListener.AutoLoggingOnTouchListener"

    .line 5
    invoke-static {v1, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Lcom/facebook/appevents/i0/k$a;

    .line 6
    iget-boolean v1, v1, Lcom/facebook/appevents/i0/k$a;->e:Z

    if-eqz v1, :cond_1

    const/4 v1, 0x1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object v2, p0, Lcom/facebook/appevents/i0/j$c;->d:Ljava/util/HashSet;

    invoke-virtual {v2, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_3

    if-nez v1, :cond_3

    .line 8
    const-class v1, Lcom/facebook/appevents/i0/k;

    invoke-static {v1}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_2

    goto :goto_1

    :cond_2
    :try_start_0
    const-string v2, "mapping"

    invoke-static {p3, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "rootView"

    invoke-static {p2, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v2, "hostView"

    invoke-static {v0, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    new-instance v2, Lcom/facebook/appevents/i0/k$a;

    invoke-direct {v2, p3, p2, v0}, Lcom/facebook/appevents/i0/k$a;-><init>(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Landroid/view/View;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v3, v2

    goto :goto_1

    :catchall_0
    move-exception p2

    invoke-static {p2, v1}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 10
    :goto_1
    invoke-virtual {v0, v3}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 11
    iget-object p2, p0, Lcom/facebook/appevents/i0/j$c;->d:Ljava/util/HashSet;

    invoke-virtual {p2, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_3
    return-void
.end method

.method public final f()V
    .locals 15

    .line 1
    iget-object v0, p0, Lcom/facebook/appevents/i0/j$c;->b:Ljava/util/List;

    if-nez v0, :cond_0

    goto/16 :goto_b

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/facebook/appevents/i0/j$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_12

    .line 3
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ltz v1, :cond_12

    const/4 v2, 0x0

    move v3, v2

    :goto_0
    add-int/lit8 v4, v3, 0x1

    .line 4
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/facebook/appevents/i0/n/a;

    .line 5
    iget-object v5, p0, Lcom/facebook/appevents/i0/j$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v5}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v5

    move-object v11, v5

    check-cast v11, Landroid/view/View;

    if-eqz v3, :cond_10

    if-nez v11, :cond_1

    goto/16 :goto_a

    .line 6
    :cond_1
    iget-object v5, v3, Lcom/facebook/appevents/i0/n/a;->d:Ljava/lang/String;

    if-eqz v5, :cond_3

    .line 7
    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-nez v5, :cond_2

    goto :goto_1

    :cond_2
    move v5, v2

    goto :goto_2

    :cond_3
    :goto_1
    const/4 v5, 0x1

    :goto_2
    if-nez v5, :cond_4

    .line 8
    iget-object v5, v3, Lcom/facebook/appevents/i0/n/a;->d:Ljava/lang/String;

    .line 9
    iget-object v6, p0, Lcom/facebook/appevents/i0/j$c;->e:Ljava/lang/String;

    invoke-static {v5, v6}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto/16 :goto_a

    .line 10
    :cond_4
    iget-object v5, v3, Lcom/facebook/appevents/i0/n/a;->b:Ljava/util/List;

    invoke-static {v5}, Ljava/util/Collections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    move-result-object v7

    const-string v5, "unmodifiableList(path)"

    invoke-static {v7, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v5

    const/16 v6, 0x19

    if-le v5, v6, :cond_5

    goto/16 :goto_a

    :cond_5
    const/4 v8, 0x0

    const/4 v9, -0x1

    .line 12
    iget-object v10, p0, Lcom/facebook/appevents/i0/j$c;->e:Ljava/lang/String;

    move-object v5, v3

    move-object v6, v11

    invoke-static/range {v5 .. v10}, Lcom/facebook/appevents/i0/j$c;->d(Lcom/facebook/appevents/i0/n/a;Landroid/view/View;Ljava/util/List;IILjava/lang/String;)Ljava/util/List;

    move-result-object v5

    .line 13
    check-cast v5, Ljava/util/ArrayList;

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_6
    :goto_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_10

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/appevents/i0/j$b;

    const/4 v7, 0x0

    .line 14
    :try_start_0
    invoke-virtual {v6}, Lcom/facebook/appevents/i0/j$b;->a()Landroid/view/View;

    move-result-object v8

    if-nez v8, :cond_7

    goto :goto_3

    .line 15
    :cond_7
    sget-object v9, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    .line 16
    const-class v9, Lcom/facebook/appevents/i0/n/f;

    invoke-static {v9}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v10
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v10, :cond_8

    goto :goto_7

    :cond_8
    move-object v10, v8

    :goto_4
    if-eqz v10, :cond_b

    .line 17
    :try_start_1
    sget-object v12, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    .line 18
    invoke-static {v12}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v13
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-eqz v13, :cond_9

    goto :goto_5

    .line 19
    :cond_9
    :try_start_2
    invoke-virtual {v10}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v13

    const-string v14, "com.facebook.react.ReactRootView"

    invoke-static {v13, v14}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v12
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_6

    :catchall_0
    move-exception v13

    :try_start_3
    invoke-static {v13, v12}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :goto_5
    move v12, v2

    :goto_6
    if-eqz v12, :cond_a

    goto :goto_8

    .line 20
    :cond_a
    invoke-virtual {v10}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    .line 21
    instance-of v12, v10, Landroid/view/View;

    if-eqz v12, :cond_b

    .line 22
    check-cast v10, Landroid/view/View;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    goto :goto_4

    :catchall_1
    move-exception v10

    .line 23
    :try_start_4
    invoke-static {v10, v9}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    :cond_b
    :goto_7
    move-object v10, v7

    :goto_8
    if-eqz v10, :cond_c

    .line 24
    sget-object v9, Lcom/facebook/appevents/i0/n/f;->a:Lcom/facebook/appevents/i0/n/f;

    invoke-virtual {v9, v8, v10}, Lcom/facebook/appevents/i0/n/f;->m(Landroid/view/View;Landroid/view/View;)Z

    move-result v9

    if-eqz v9, :cond_c

    .line 25
    invoke-virtual {p0, v6, v11, v3}, Lcom/facebook/appevents/i0/j$c;->c(Lcom/facebook/appevents/i0/j$b;Landroid/view/View;Lcom/facebook/appevents/i0/n/a;)V

    goto :goto_3

    .line 26
    :cond_c
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    const-string v10, "view.javaClass.name"

    invoke-static {v9, v10}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v10, "com.facebook.react"

    const/4 v12, 0x2

    invoke-static {v9, v10, v2, v12}, Ls1/f0/r;->y(Ljava/lang/String;Ljava/lang/String;ZI)Z

    move-result v9

    if-eqz v9, :cond_d

    goto :goto_3

    .line 27
    :cond_d
    instance-of v9, v8, Landroid/widget/AdapterView;

    if-nez v9, :cond_e

    .line 28
    invoke-virtual {p0, v6, v11, v3}, Lcom/facebook/appevents/i0/j$c;->a(Lcom/facebook/appevents/i0/j$b;Landroid/view/View;Lcom/facebook/appevents/i0/n/a;)V

    goto :goto_3

    .line 29
    :cond_e
    instance-of v8, v8, Landroid/widget/ListView;

    if-eqz v8, :cond_6

    .line 30
    invoke-virtual {p0, v6, v11, v3}, Lcom/facebook/appevents/i0/j$c;->b(Lcom/facebook/appevents/i0/j$b;Landroid/view/View;Lcom/facebook/appevents/i0/n/a;)V
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_3

    :catch_0
    move-exception v6

    .line 31
    const-class v8, Lcom/facebook/appevents/i0/j;

    invoke-static {v8}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_f

    goto :goto_9

    .line 32
    :cond_f
    :try_start_5
    sget-object v7, Lcom/facebook/appevents/i0/j;->g:Ljava/lang/String;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_2

    goto :goto_9

    :catchall_2
    move-exception v9

    invoke-static {v9, v8}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    .line 33
    :goto_9
    invoke-static {v7, v6}, Lcom/facebook/internal/q0;->F(Ljava/lang/String;Ljava/lang/Exception;)V

    goto/16 :goto_3

    :cond_10
    :goto_a
    if-le v4, v1, :cond_11

    goto :goto_b

    :cond_11
    move v3, v4

    goto/16 :goto_0

    :cond_12
    :goto_b
    return-void
.end method

.method public onGlobalLayout()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/appevents/i0/j$c;->f()V

    return-void
.end method

.method public onScrollChanged()V
    .locals 0

    .line 1
    invoke-virtual {p0}, Lcom/facebook/appevents/i0/j$c;->f()V

    return-void
.end method

.method public run()V
    .locals 6

    invoke-static {p0}, Lcom/facebook/internal/u0/m/a;->b(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 1
    :cond_0
    :try_start_0
    sget-object v0, Le/j/f0;->a:Le/j/f0;

    invoke-static {}, Le/j/f0;->b()Ljava/lang/String;

    move-result-object v0

    .line 2
    sget-object v1, Lcom/facebook/internal/d0;->a:Lcom/facebook/internal/d0;

    invoke-static {v0}, Lcom/facebook/internal/d0;->b(Ljava/lang/String;)Lcom/facebook/internal/c0;

    move-result-object v0

    if-eqz v0, :cond_6

    .line 3
    iget-boolean v1, v0, Lcom/facebook/internal/c0;->h:Z

    if-nez v1, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    iget-object v0, v0, Lcom/facebook/internal/c0;->i:Lorg/json/JSONArray;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v0, :cond_3

    const/4 v2, 0x0

    .line 6
    :try_start_1
    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v3

    if-lez v3, :cond_3

    :goto_0
    add-int/lit8 v4, v2, 0x1

    .line 7
    invoke-virtual {v0, v2}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v2

    const-string v5, "array.getJSONObject(i)"

    invoke-static {v2, v5}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v2}, Lcom/facebook/appevents/i0/n/a;->a(Lorg/json/JSONObject;)Lcom/facebook/appevents/i0/n/a;

    move-result-object v2

    .line 8
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-lt v4, v3, :cond_2

    goto :goto_1

    :cond_2
    move v2, v4

    goto :goto_0

    .line 9
    :catch_0
    :cond_3
    :goto_1
    :try_start_2
    iput-object v1, p0, Lcom/facebook/appevents/i0/j$c;->b:Ljava/util/List;

    if-eqz v1, :cond_6

    .line 10
    iget-object v0, p0, Lcom/facebook/appevents/i0/j$c;->a:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    if-nez v0, :cond_4

    return-void

    .line 11
    :cond_4
    invoke-virtual {v0}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 12
    invoke-virtual {v0}, Landroid/view/ViewTreeObserver;->isAlive()Z

    move-result v1

    if-eqz v1, :cond_5

    .line 13
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 14
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnScrollChangedListener(Landroid/view/ViewTreeObserver$OnScrollChangedListener;)V

    .line 15
    :cond_5
    invoke-virtual {p0}, Lcom/facebook/appevents/i0/j$c;->f()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_6
    :goto_2
    return-void

    :catchall_0
    move-exception v0

    .line 16
    invoke-static {v0, p0}, Lcom/facebook/internal/u0/m/a;->a(Ljava/lang/Throwable;Ljava/lang/Object;)V

    return-void
.end method
