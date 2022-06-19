.class public final Lcom/truecaller/truecontext/TrueContext$d;
.super Le/f/a/r/k/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/truecaller/truecontext/TrueContext;->P(Le/a/m5/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/f/a/r/k/c<",
        "Landroid/graphics/drawable/Drawable;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic d:Lcom/truecaller/truecontext/TrueContext;

.field public final synthetic e:Le/a/m5/e;


# direct methods
.method public constructor <init>(Lcom/truecaller/truecontext/TrueContext;Le/a/m5/e;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/m5/e;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lcom/truecaller/truecontext/TrueContext$d;->d:Lcom/truecaller/truecontext/TrueContext;

    iput-object p2, p0, Lcom/truecaller/truecontext/TrueContext$d;->e:Le/a/m5/e;

    const/high16 p1, -0x80000000

    .line 2
    invoke-direct {p0, p1, p1}, Le/f/a/r/k/c;-><init>(II)V

    return-void
.end method


# virtual methods
.method public d(Landroid/graphics/drawable/Drawable;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/truecaller/truecontext/TrueContext$d;->d:Lcom/truecaller/truecontext/TrueContext;

    .line 2
    iget-object v0, v0, Lcom/truecaller/truecontext/TrueContext;->t:Le/a/m5/f/a;

    .line 3
    iget-object v0, v0, Le/a/m5/f/a;->c:Landroid/widget/TextView;

    const-string v1, "binding.label"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const/4 v2, 0x2

    aget-object v1, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2, v1, v2}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method

.method public e(Ljava/lang/Object;Le/f/a/r/l/d;)V
    .locals 5

    .line 1
    check-cast p1, Landroid/graphics/drawable/Drawable;

    const-string p2, "resource"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Lcom/truecaller/truecontext/TrueContext$d;->d:Lcom/truecaller/truecontext/TrueContext;

    iget-object v0, p0, Lcom/truecaller/truecontext/TrueContext$d;->e:Le/a/m5/e;

    .line 4
    iget v0, v0, Le/a/m5/e;->a:I

    .line 5
    invoke-virtual {p1, v0}, Landroid/graphics/drawable/Drawable;->setTint(I)V

    .line 6
    iput-object p1, p2, Lcom/truecaller/truecontext/TrueContext;->J:Landroid/graphics/drawable/Drawable;

    .line 7
    iget-object p2, p0, Lcom/truecaller/truecontext/TrueContext$d;->d:Lcom/truecaller/truecontext/TrueContext;

    .line 8
    iget-object p2, p2, Lcom/truecaller/truecontext/TrueContext;->t:Le/a/m5/f/a;

    .line 9
    iget-object p2, p2, Le/a/m5/f/a;->c:Landroid/widget/TextView;

    const-string v0, "binding.label"

    .line 10
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "binding.label.context"

    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v2, 0x8

    invoke-static {v1, v2}, Le/a/p5/s0/g;->A(Landroid/content/Context;I)I

    move-result v1

    .line 11
    iget-object v2, p0, Lcom/truecaller/truecontext/TrueContext$d;->d:Lcom/truecaller/truecontext/TrueContext;

    .line 12
    iget-object v2, v2, Lcom/truecaller/truecontext/TrueContext;->t:Le/a/m5/f/a;

    .line 13
    iget-object v2, v2, Le/a/m5/f/a;->c:Landroid/widget/TextView;

    invoke-static {v2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v2}, Landroid/widget/TextView;->getPaddingTop()I

    move-result v2

    .line 14
    iget-object v3, p0, Lcom/truecaller/truecontext/TrueContext$d;->d:Lcom/truecaller/truecontext/TrueContext;

    .line 15
    iget-object v3, v3, Lcom/truecaller/truecontext/TrueContext;->t:Le/a/m5/f/a;

    .line 16
    iget-object v3, v3, Le/a/m5/f/a;->c:Landroid/widget/TextView;

    invoke-static {v3, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/widget/TextView;->getPaddingEnd()I

    move-result v3

    .line 17
    iget-object v4, p0, Lcom/truecaller/truecontext/TrueContext$d;->d:Lcom/truecaller/truecontext/TrueContext;

    .line 18
    iget-object v4, v4, Lcom/truecaller/truecontext/TrueContext;->t:Le/a/m5/f/a;

    .line 19
    iget-object v4, v4, Le/a/m5/f/a;->c:Landroid/widget/TextView;

    invoke-static {v4, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v4}, Landroid/widget/TextView;->getPaddingBottom()I

    move-result v4

    .line 20
    invoke-virtual {p2, v1, v2, v3, v4}, Landroid/widget/TextView;->setPaddingRelative(IIII)V

    .line 21
    iget-object p2, p0, Lcom/truecaller/truecontext/TrueContext$d;->d:Lcom/truecaller/truecontext/TrueContext;

    .line 22
    iget-object p2, p2, Lcom/truecaller/truecontext/TrueContext;->t:Le/a/m5/f/a;

    .line 23
    iget-object p2, p2, Le/a/m5/f/a;->c:Landroid/widget/TextView;

    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/widget/TextView;->getCompoundDrawables()[Landroid/graphics/drawable/Drawable;

    move-result-object v0

    const/4 v1, 0x2

    aget-object v0, v0, v1

    const/4 v1, 0x0

    invoke-virtual {p2, p1, v1, v0, v1}, Landroid/widget/TextView;->setCompoundDrawablesRelativeWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    return-void
.end method
