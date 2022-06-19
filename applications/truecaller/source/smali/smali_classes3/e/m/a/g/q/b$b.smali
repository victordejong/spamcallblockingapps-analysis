.class public Le/m/a/g/q/b$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/m/a/g/q/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/a/g/q/b;


# direct methods
.method public constructor <init>(Le/m/a/g/q/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/a/g/q/b$b;->a:Le/m/a/g/q/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .line 1
    iget-object v0, p0, Le/m/a/g/q/b$b;->a:Le/m/a/g/q/b;

    .line 2
    sget v1, Le/m/a/g/q/b;->m:I

    .line 3
    invoke-virtual {v0}, Le/m/a/g/q/b;->getCurrentDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    check-cast v1, Le/m/a/g/q/l;

    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 4
    invoke-virtual {v1, v2, v2, v3}, Le/m/a/g/q/l;->h(ZZZ)Z

    .line 5
    invoke-virtual {v0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {v0}, Le/m/a/g/q/b;->getProgressDrawable()Le/m/a/g/q/i;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    .line 6
    :cond_0
    invoke-virtual {v0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v1

    if-eqz v1, :cond_1

    invoke-virtual {v0}, Le/m/a/g/q/b;->getIndeterminateDrawable()Le/m/a/g/q/o;

    move-result-object v1

    invoke-virtual {v1}, Landroid/graphics/drawable/Drawable;->isVisible()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move v2, v3

    :cond_2
    if-eqz v2, :cond_3

    const/4 v1, 0x4

    .line 7
    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 8
    :cond_3
    iget-object v0, p0, Le/m/a/g/q/b$b;->a:Le/m/a/g/q/b;

    .line 9
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
