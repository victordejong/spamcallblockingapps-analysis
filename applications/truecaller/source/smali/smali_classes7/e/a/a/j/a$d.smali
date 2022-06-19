.class public final Le/a/a/j/a$d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Le/a/a/j/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/j/a;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/a/a/j/a;


# direct methods
.method public constructor <init>(Le/a/a/j/a;)V
    .locals 0

    iput-object p1, p0, Le/a/a/j/a$d;->a:Le/a/a/j/a;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/j/a$d;->a:Le/a/a/j/a;

    invoke-virtual {v0}, Le/a/a/j/a;->PA()Le/a/a/j/h;

    move-result-object v0

    check-cast v0, Le/a/a/j/l;

    .line 2
    iget v1, v0, Le/a/a/j/l;->e:F

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Le/a/a/j/l;->f:I

    int-to-float v2, v2

    cmpl-float v1, v1, v2

    if-lez v1, :cond_0

    const/4 v1, 0x1

    .line 3
    iput-boolean v1, v0, Le/a/a/j/l;->h:Z

    .line 4
    invoke-virtual {v0}, Le/a/a/j/l;->finish()V

    :cond_0
    return-void
.end method

.method public b(F)Z
    .locals 6

    .line 1
    iget-object v0, p0, Le/a/a/j/a$d;->a:Le/a/a/j/a;

    invoke-virtual {v0}, Le/a/a/j/a;->PA()Le/a/a/j/h;

    move-result-object v0

    check-cast v0, Le/a/a/j/l;

    .line 2
    iget-object v1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/a/j/i;

    if-eqz v1, :cond_0

    const/high16 v2, 0x3f800000    # 1.0f

    const/high16 v3, 0x3f000000    # 0.5f

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v5, v0, Le/a/a/j/l;->f:I

    int-to-float v5, v5

    div-float/2addr v4, v5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(FF)F

    move-result v3

    sub-float/2addr v2, v3

    invoke-interface {v1, v2}, Le/a/a/j/i;->hu(F)V

    .line 3
    :cond_0
    iput p1, v0, Le/a/a/j/l;->e:F

    .line 4
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    iget v1, v0, Le/a/a/j/l;->f:I

    div-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    cmpl-float p1, p1, v1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez p1, :cond_3

    .line 5
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Le/a/a/j/i;->qa()V

    .line 6
    :cond_1
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_2

    invoke-interface {p1, v1}, Le/a/a/j/i;->r2(Z)V

    .line 7
    :cond_2
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_6

    invoke-interface {p1, v1}, Le/a/a/j/i;->l9(Z)V

    goto :goto_0

    .line 8
    :cond_3
    iget-boolean p1, v0, Le/a/a/j/l;->h:Z

    if-nez p1, :cond_6

    .line 9
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_5

    iget-boolean v3, v0, Le/a/a/j/l;->d:Z

    if-eqz v3, :cond_4

    iget-object v3, v0, Le/a/a/j/l;->p:Lcom/truecaller/messaging/data/types/BinaryEntity;

    invoke-virtual {v3}, Lcom/truecaller/messaging/data/types/BinaryEntity;->w()Z

    move-result v3

    if-eqz v3, :cond_4

    move v1, v2

    :cond_4
    invoke-interface {p1, v1}, Le/a/a/j/i;->r2(Z)V

    .line 10
    :cond_5
    iget-object p1, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/a/j/i;

    if-eqz p1, :cond_6

    iget-boolean v0, v0, Le/a/a/j/l;->d:Z

    invoke-interface {p1, v0}, Le/a/a/j/i;->l9(Z)V

    :cond_6
    :goto_0
    return v2
.end method

.method public c(F)Z
    .locals 0

    const/4 p1, 0x0

    return p1
.end method
