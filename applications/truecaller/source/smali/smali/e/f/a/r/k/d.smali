.class public abstract Le/f/a/r/k/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/f/a/r/k/k;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/f/a/r/k/d$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Landroid/view/View;",
        "Z:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Le/f/a/r/k/k<",
        "TZ;>;"
    }
.end annotation


# static fields
.field public static final c:I


# instance fields
.field public final a:Le/f/a/r/k/d$a;

.field public final b:Landroid/view/View;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    sget v0, Lcom/bumptech/glide/R$id;->glide_custom_view_target_tag:I

    sput v0, Le/f/a/r/k/d;->c:I

    return-void
.end method

.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-string v0, "Argument must not be null"

    .line 2
    invoke-static {p1, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    .line 3
    iput-object p1, p0, Le/f/a/r/k/d;->b:Landroid/view/View;

    .line 4
    new-instance v0, Le/f/a/r/k/d$a;

    invoke-direct {v0, p1}, Le/f/a/r/k/d$a;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Le/f/a/r/k/d;->a:Le/f/a/r/k/d$a;

    return-void
.end method


# virtual methods
.method public abstract a(Landroid/graphics/drawable/Drawable;)V
.end method

.method public final b()Le/f/a/r/d;
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/r/k/d;->b:Landroid/view/View;

    sget v1, Le/f/a/r/k/d;->c:I

    invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    instance-of v1, v0, Le/f/a/r/d;

    if-eqz v1, :cond_0

    .line 3
    check-cast v0, Le/f/a/r/d;

    return-object v0

    .line 4
    :cond_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "You must not pass non-R.id ids to setTag(id)"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    const/4 v0, 0x0

    return-object v0
.end method

.method public final c(Le/f/a/r/k/j;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/r/k/d;->a:Le/f/a/r/k/d$a;

    .line 2
    iget-object v0, v0, Le/f/a/r/k/d$a;->b:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public final d(Landroid/graphics/drawable/Drawable;)V
    .locals 1

    .line 1
    iget-object v0, p0, Le/f/a/r/k/d;->a:Le/f/a/r/k/d$a;

    invoke-virtual {v0}, Le/f/a/r/k/d$a;->a()V

    .line 2
    invoke-virtual {p0, p1}, Le/f/a/r/k/d;->a(Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public final g(Landroid/graphics/drawable/Drawable;)V
    .locals 0

    return-void
.end method

.method public final h(Le/f/a/r/d;)V
    .locals 2

    .line 1
    iget-object v0, p0, Le/f/a/r/k/d;->b:Landroid/view/View;

    sget v1, Le/f/a/r/k/d;->c:I

    invoke-virtual {v0, v1, p1}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    return-void
.end method

.method public final j(Le/f/a/r/k/j;)V
    .locals 4

    .line 1
    iget-object v0, p0, Le/f/a/r/k/d;->a:Le/f/a/r/k/d$a;

    .line 2
    invoke-virtual {v0}, Le/f/a/r/k/d$a;->d()I

    move-result v1

    .line 3
    invoke-virtual {v0}, Le/f/a/r/k/d$a;->c()I

    move-result v2

    .line 4
    invoke-virtual {v0, v1, v2}, Le/f/a/r/k/d$a;->e(II)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    check-cast p1, Le/f/a/r/j;

    invoke-virtual {p1, v1, v2}, Le/f/a/r/j;->a(II)V

    goto :goto_0

    .line 6
    :cond_0
    iget-object v1, v0, Le/f/a/r/k/d$a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 7
    iget-object v1, v0, Le/f/a/r/k/d$a;->b:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    :cond_1
    iget-object p1, v0, Le/f/a/r/k/d$a;->c:Le/f/a/r/k/d$a$a;

    if-nez p1, :cond_2

    .line 9
    iget-object p1, v0, Le/f/a/r/k/d$a;->a:Landroid/view/View;

    invoke-virtual {p1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object p1

    .line 10
    new-instance v1, Le/f/a/r/k/d$a$a;

    invoke-direct {v1, v0}, Le/f/a/r/k/d$a$a;-><init>(Le/f/a/r/k/d$a;)V

    iput-object v1, v0, Le/f/a/r/k/d$a;->c:Le/f/a/r/k/d$a$a;

    .line 11
    invoke-virtual {p1, v1}, Landroid/view/ViewTreeObserver;->addOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onDestroy()V
    .locals 0

    return-void
.end method

.method public onStart()V
    .locals 0

    return-void
.end method

.method public onStop()V
    .locals 0

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "Target for: "

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/f/a/r/k/d;->b:Landroid/view/View;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
