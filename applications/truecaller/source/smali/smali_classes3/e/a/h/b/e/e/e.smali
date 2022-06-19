.class public final Le/a/h/b/e/e/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Landroid/util/SparseArray<",
        "Landroid/graphics/drawable/Drawable;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;


# direct methods
.method public constructor <init>(Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/e/e/e;->b:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    .line 2
    sget-object v1, Lcom/truecaller/calling/dialer/DialpadState;->DIALPAD_DOWN:Lcom/truecaller/calling/dialer/DialpadState;

    invoke-virtual {v1}, Lcom/truecaller/calling/dialer/DialpadState;->getDrawable()I

    move-result v2

    .line 3
    iget-object v3, p0, Le/a/h/b/e/e/e;->b:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/calling/dialer/DialpadState;->getDrawable()I

    move-result v1

    const v4, 0x7f0405a1

    invoke-static {v3, v1, v4}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 5
    sget-object v1, Lcom/truecaller/calling/dialer/DialpadState;->NUMBER_ENTERED:Lcom/truecaller/calling/dialer/DialpadState;

    invoke-virtual {v1}, Lcom/truecaller/calling/dialer/DialpadState;->getDrawable()I

    move-result v2

    .line 6
    iget-object v3, p0, Le/a/h/b/e/e/e;->b:Lcom/truecaller/calling/dialer/util/ui/DialpadFloatingActionButton;

    invoke-virtual {v3}, Landroid/widget/ImageButton;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v1}, Lcom/truecaller/calling/dialer/DialpadState;->getDrawable()I

    move-result v1

    const v4, 0x7f04056c

    invoke-static {v3, v1, v4}, Le/a/p5/s0/g;->l0(Landroid/content/Context;II)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 7
    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method
