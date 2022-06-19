.class public final Le/a/e/a/c4$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/e/a/c4;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

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
    c = "com.truecaller.ui.dialogs.QaSetBusinessFlagsDialog$onViewCreated$1$1$1"
    f = "QaSetBusinessFlagsDialog.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/e/a/c4;

.field public final synthetic f:Ljava/lang/Integer;


# direct methods
.method public constructor <init>(Le/a/e/a/c4;Ljava/lang/Integer;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/e/a/c4$a;->e:Le/a/e/a/c4;

    iput-object p2, p0, Le/a/e/a/c4$a;->f:Ljava/lang/Integer;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Ls1/w/k/a/i;-><init>(ILs1/w/d;)V

    return-void
.end method


# virtual methods
.method public final i(Ljava/lang/Object;Ls1/w/d;)Ls1/w/d;
    .locals 2
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

    new-instance p1, Le/a/e/a/c4$a;

    iget-object v0, p0, Le/a/e/a/c4$a;->e:Le/a/e/a/c4;

    iget-object v1, p0, Le/a/e/a/c4$a;->f:Ljava/lang/Integer;

    invoke-direct {p1, v0, v1, p2}, Le/a/e/a/c4$a;-><init>(Le/a/e/a/c4;Ljava/lang/Integer;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/e/a/c4$a;->e:Le/a/e/a/c4;

    iget-object v1, p0, Le/a/e/a/c4$a;->f:Ljava/lang/Integer;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    iget-object p2, p2, Le/a/e/a/d4$a;->b:Le/a/e/a/d4;

    .line 5
    iget-object p2, p2, Le/a/e/a/d4;->k:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/TextView;

    const-string v2, "flagsValue"

    .line 6
    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Current flag value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-object p2, v0, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    iget-object p2, p2, Le/a/e/a/d4$a;->b:Le/a/e/a/d4;

    .line 8
    iget-object p2, p2, Le/a/e/a/d4;->j:Ls1/g;

    invoke-interface {p2}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/widget/LinearLayout;

    const-string v0, "flagsList"

    .line 9
    invoke-static {p2, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p2, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/e/a/c4$a;->e:Le/a/e/a/c4;

    iget-object p1, p1, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    iget-object p1, p1, Le/a/e/a/d4$a;->b:Le/a/e/a/d4;

    .line 3
    iget-object p1, p1, Le/a/e/a/d4;->k:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const-string v0, "flagsValue"

    const-string v1, "Current flag value: "

    .line 4
    invoke-static {p1, v0, v1}, Le/d/c/a/a;->B(Landroid/widget/TextView;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/a/e/a/c4$a;->f:Ljava/lang/Integer;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 5
    iget-object p1, p0, Le/a/e/a/c4$a;->e:Le/a/e/a/c4;

    iget-object p1, p1, Le/a/e/a/c4;->g:Le/a/e/a/d4$a;

    iget-object p1, p1, Le/a/e/a/d4$a;->b:Le/a/e/a/d4;

    .line 6
    iget-object p1, p1, Le/a/e/a/d4;->j:Ls1/g;

    invoke-interface {p1}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/widget/LinearLayout;

    const-string v0, "flagsList"

    .line 7
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/e/a/c4$a;->f:Ljava/lang/Integer;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-static {p1, v0}, Le/a/p5/s0/f;->U(Landroid/view/View;Z)V

    .line 8
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
