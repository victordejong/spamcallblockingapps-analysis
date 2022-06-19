.class public final Le/a/o/l;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/w/k/a/i;",
        "Ls1/z/b/p<",
        "Lq3/a/i0;",
        "Ls1/w/d<",
        "-",
        "Ls1/s;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "com.truecaller.contextcall.ContextCallUtilsImpl$isContextCallCapable$3"
    f = "ContextCallUtils.kt"
    l = {
        0x47
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field public e:I

.field public final synthetic f:Le/a/o/k;

.field public final synthetic g:Lcom/truecaller/data/entity/Number;

.field public final synthetic h:Le/a/e/c/i0;


# direct methods
.method public constructor <init>(Le/a/o/k;Lcom/truecaller/data/entity/Number;Le/a/e/c/i0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/o/l;->f:Le/a/o/k;

    iput-object p2, p0, Le/a/o/l;->g:Lcom/truecaller/data/entity/Number;

    iput-object p3, p0, Le/a/o/l;->h:Le/a/e/c/i0;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Ls1/w/d<",
            "*>;)",
            "Ls1/w/d<",
            "Ls1/s;",
            ">;"
        }
    .end annotation

    const-string p1, "completion"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/l;

    iget-object v0, p0, Le/a/o/l;->f:Le/a/o/k;

    iget-object v1, p0, Le/a/o/l;->g:Lcom/truecaller/data/entity/Number;

    iget-object v2, p0, Le/a/o/l;->h:Le/a/e/c/i0;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/o/l;-><init>(Le/a/o/k;Lcom/truecaller/data/entity/Number;Le/a/e/c/i0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    check-cast p2, Ls1/w/d;

    const-string p1, "completion"

    .line 1
    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance p1, Le/a/o/l;

    iget-object v0, p0, Le/a/o/l;->f:Le/a/o/k;

    iget-object v1, p0, Le/a/o/l;->g:Lcom/truecaller/data/entity/Number;

    iget-object v2, p0, Le/a/o/l;->h:Le/a/e/c/i0;

    invoke-direct {p1, v0, v1, v2, p2}, Le/a/o/l;-><init>(Le/a/o/k;Lcom/truecaller/data/entity/Number;Le/a/e/c/i0;Ls1/w/d;)V

    .line 2
    sget-object p2, Ls1/s;->a:Ls1/s;

    invoke-virtual {p1, p2}, Le/a/o/l;->s(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    .line 1
    iget v1, p0, Le/a/o/l;->e:I

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    if-ne v1, v2, :cond_0

    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p1, p0, Le/a/o/l;->f:Le/a/o/k;

    .line 5
    iget-object p1, p1, Le/a/o/k;->b:Ls1/w/f;

    .line 6
    new-instance v1, Le/a/o/l$a;

    const/4 v3, 0x0

    invoke-direct {v1, p0, v3}, Le/a/o/l$a;-><init>(Le/a/o/l;Ls1/w/d;)V

    iput v2, p0, Le/a/o/l;->e:I

    invoke-static {p1, v1, p0}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_2

    return-object v0

    :cond_2
    :goto_0
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    .line 7
    iget-object v0, p0, Le/a/o/l;->h:Le/a/e/c/i0;

    .line 8
    iget-object v1, v0, Le/a/e/c/i0;->a:Le/a/e/c/s1;

    iget-object v3, v0, Le/a/e/c/i0;->b:Le/a/e/c2/u;

    iget-object v0, v0, Le/a/e/c/i0;->c:Lcom/truecaller/data/entity/Number;

    .line 9
    invoke-virtual {v1}, Le/a/e/x0;->SA()Z

    move-result v4

    if-nez v4, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v1}, Le/a/e/c/j2;->getContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f080439

    .line 11
    sget-object v6, Ln3/k/b/a;->a:Ljava/lang/Object;

    .line 12
    invoke-static {v4, v5}, Ln3/k/b/a$c;->b(Landroid/content/Context;I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    .line 13
    new-instance v5, Le/a/e/c/e1;

    invoke-direct {v5, v1, v0}, Le/a/e/c/e1;-><init>(Le/a/e/c/s1;Lcom/truecaller/data/entity/Number;)V

    const v0, 0x7f0a02c5

    .line 14
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_4

    const/4 v6, 0x0

    goto :goto_1

    :cond_4
    const/16 v6, 0x8

    .line 15
    :goto_1
    invoke-virtual {v0, v6}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 16
    invoke-virtual {v0, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    xor-int/lit8 v0, p1, 0x1

    .line 18
    invoke-virtual {v3, v0}, Le/a/e/c2/u;->setShowButtonDividers(Z)V

    .line 19
    iget v0, v1, Le/a/e/c/s1;->H1:I

    invoke-virtual {v3, v0}, Le/a/e/c2/u;->setImageTint(I)V

    if-eqz p1, :cond_5

    .line 20
    invoke-virtual {v3}, Le/a/e/c2/u;->getExtraRightButton()Landroid/widget/ImageView;

    move-result-object p1

    const/16 v0, 0xd

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V

    .line 21
    iget-boolean p1, v1, Le/a/e/c/s1;->F1:Z

    if-nez p1, :cond_5

    iget-object p1, v1, Le/a/e/c/s1;->m1:Le/a/e/c/s1$f;

    if-eqz p1, :cond_5

    .line 22
    iget-object p1, p1, Le/a/e/c/s1$f;->b:Le/a/q2/a;

    const-string v0, "ContextCallOnDemand"

    .line 23
    invoke-static {v0}, Le/a/q2/y0/a/a;->b(Ljava/lang/String;)Le/a/q2/y0/a/a;

    move-result-object v0

    invoke-interface {p1, v0}, Le/a/q2/a;->b(Le/a/q2/v;)V

    .line 24
    iput-boolean v2, v1, Le/a/e/c/s1;->F1:Z

    .line 25
    :cond_5
    :goto_2
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
