.class public final Le/a/d0/a/a$c;
.super Ls1/z/c/m;
.source "kotlin-style lambda group"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/d0/a/a;-><init>(Landroid/content/Context;Le/a/d0/a/y$b;Lcom/truecaller/settings/CallingSettings;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:I

.field public final synthetic c:Ljava/lang/Object;


# direct methods
.method public constructor <init>(ILjava/lang/Object;)V
    .locals 0

    iput p1, p0, Le/a/d0/a/a$c;->b:I

    iput-object p2, p0, Le/a/d0/a/a$c;->c:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 2

    iget v0, p0, Le/a/d0/a/a$c;->b:I

    if-eqz v0, :cond_5

    const/4 v1, 0x1

    if-eq v0, v1, :cond_4

    const/4 v1, 0x2

    if-eq v0, v1, :cond_3

    const/4 v1, 0x3

    if-eq v0, v1, :cond_2

    const/4 v1, 0x4

    if-eq v0, v1, :cond_1

    const/4 v1, 0x5

    if-ne v0, v1, :cond_0

    .line 1
    iget-object v0, p0, Le/a/d0/a/a$c;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a10ce

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    throw v0

    .line 3
    :cond_1
    iget-object v0, p0, Le/a/d0/a/a$c;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0ce9

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 4
    :cond_2
    iget-object v0, p0, Le/a/d0/a/a$c;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a1d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 5
    :cond_3
    iget-object v0, p0, Le/a/d0/a/a$c;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0a17

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 6
    :cond_4
    iget-object v0, p0, Le/a/d0/a/a$c;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0624

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0

    .line 7
    :cond_5
    iget-object v0, p0, Le/a/d0/a/a$c;->c:Ljava/lang/Object;

    check-cast v0, Le/a/d0/a/a;

    invoke-static {v0}, Le/a/d0/a/a;->r(Le/a/d0/a/a;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a035e

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
