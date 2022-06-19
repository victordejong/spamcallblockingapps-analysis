.class public final Le/a/r/a0/t;
.super Landroid/text/style/ClickableSpan;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/r/a0/u;

.field public final synthetic b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/r/a0/u;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/r/a0/t;->a:Le/a/r/a0/u;

    iput-object p2, p0, Le/a/r/a0/t;->b:Ljava/lang/String;

    invoke-direct {p0}, Landroid/text/style/ClickableSpan;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    const-string v0, "widget"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/r/a0/t;->a:Le/a/r/a0/u;

    iget-object p1, p1, Le/a/r/a0/u;->b:Le/a/r/a0/r;

    invoke-virtual {p1}, Le/a/r/a0/r;->RA()Le/a/r/a0/w;

    move-result-object p1

    iget-object v0, p0, Le/a/r/a0/t;->b:Ljava/lang/String;

    const-string v1, "url"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast p1, Le/a/r/a0/z;

    .line 2
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {v0, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v1, p1, Le/a/r/a0/z;->m:Le/a/r/q/h;

    invoke-interface {v1, v0}, Le/a/r/q/h;->d(Ljava/lang/String;)V

    .line 4
    iget-object v1, p1, Le/a/r/a0/z;->l:Le/a/p5/u;

    invoke-interface {v1}, Le/a/p5/u;->d()Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v1, Le/a/r/a0/x;

    if-eqz v1, :cond_3

    iget-object p1, p1, Le/a/r/a0/z;->r:Le/a/r/c/y;

    invoke-virtual {p1, v1, v0}, Le/a/r/c/y;->a(Ln3/v/b0;Ljava/lang/String;)V

    goto :goto_1

    .line 5
    :cond_0
    sget-object v1, Le/a/b0/d;->b:[Ljava/lang/String;

    invoke-static {v1, v0}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    sget v1, Lcom/truecaller/wizard/R$string;->Welcome_offlineToSTitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 6
    :cond_1
    sget-object v1, Le/a/b0/d;->a:[Ljava/lang/String;

    invoke-static {v1, v0}, Le/q/f/a/d/a;->Q([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    sget v1, Lcom/truecaller/wizard/R$string;->Welcome_offlinePPTitle:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    :cond_2
    const/4 v1, 0x0

    .line 7
    :goto_0
    iget-object p1, p1, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p1, Le/a/r/a0/x;

    if-eqz p1, :cond_3

    invoke-interface {p1, v1, v0}, Le/a/r/a0/x;->yv(Ljava/lang/Integer;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return-void
.end method
