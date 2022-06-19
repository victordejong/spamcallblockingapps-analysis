.class public final Le/a/a/c/i/b$a;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/a/c/i/b;-><init>(Le/a/a/c/i/d;Le/a/r2/f;Le/a/p5/h0;Le/a/o5/b0;Le/a/a/c/j6;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/a/c/i/b$a;->b:I

    iput-object p2, p0, Le/a/a/c/i/b$a;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 4

    iget v0, p0, Le/a/a/c/i/b$a;->b:I

    const v1, 0x7f04056e

    if-eqz v0, :cond_5

    const/4 v2, 0x1

    const v3, 0x7f04068f

    if-eq v0, v2, :cond_4

    const/4 v2, 0x2

    if-eq v0, v2, :cond_3

    const/4 v2, 0x3

    if-eq v0, v2, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/a/c/i/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/i/b;

    .line 2
    iget-object v0, v0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v1, 0x7f080713

    .line 3
    invoke-interface {v0, v1, v3}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 4
    throw v0

    .line 5
    :cond_1
    iget-object v0, p0, Le/a/a/c/i/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/i/b;

    .line 6
    iget-object v0, v0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v1, 0x7f08070d

    .line 7
    invoke-interface {v0, v1, v3}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 8
    :cond_2
    iget-object v0, p0, Le/a/a/c/i/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/i/b;

    .line 9
    iget-object v0, v0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v2, 0x7f080708

    .line 10
    invoke-interface {v0, v2, v1}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 11
    :cond_3
    iget-object v0, p0, Le/a/a/c/i/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/i/b;

    .line 12
    iget-object v0, v0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v1, 0x7f080705

    .line 13
    invoke-interface {v0, v1, v3}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 14
    :cond_4
    iget-object v0, p0, Le/a/a/c/i/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/i/b;

    .line 15
    iget-object v0, v0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v1, 0x7f080704

    .line 16
    invoke-interface {v0, v1, v3}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0

    .line 17
    :cond_5
    iget-object v0, p0, Le/a/a/c/i/b$a;->c:Ljava/lang/Object;

    check-cast v0, Le/a/a/c/i/b;

    .line 18
    iget-object v0, v0, Le/a/a/c/i/b;->j:Le/a/p5/h0;

    const v2, 0x7f080700

    .line 19
    invoke-interface {v0, v2, v1}, Le/a/p5/h0;->f(II)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    return-object v0
.end method
