.class public Le/l/a/d$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/l/a/d;-><init>(Landroid/content/Context;Landroid/view/ViewManager;Landroid/view/ViewGroup;Le/l/a/c;Le/l/a/d$l;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/l/a/d;


# direct methods
.method public constructor <init>(Le/l/a/d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/l/a/d$b;->a:Le/l/a/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 3

    .line 1
    iget-object p1, p0, Le/l/a/d$b;->a:Le/l/a/d;

    iget-object v0, p1, Le/l/a/d;->r0:Le/l/a/d$l;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 2
    :cond_0
    iget-object v0, p1, Le/l/a/d;->r:Landroid/graphics/Rect;

    iget v2, p1, Le/l/a/d;->m0:F

    float-to-int v2, v2

    iget p1, p1, Le/l/a/d;->n0:F

    float-to-int p1, p1

    invoke-virtual {v0, v2, p1}, Landroid/graphics/Rect;->contains(II)Z

    move-result p1

    if-eqz p1, :cond_1

    .line 3
    iget-object p1, p0, Le/l/a/d$b;->a:Le/l/a/d;

    iget-object v0, p1, Le/l/a/d;->r0:Le/l/a/d$l;

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p1, v0}, Le/l/a/d;->b(Z)V

    return v0

    :cond_1
    return v1
.end method
