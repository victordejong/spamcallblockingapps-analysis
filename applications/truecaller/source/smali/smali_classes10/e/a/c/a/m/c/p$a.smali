.class public final Le/a/c/a/m/c/p$a;
.super Ls1/w/k/a/i;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/c/a/m/c/p;->s(Ljava/lang/Object;)Ljava/lang/Object;
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
    c = "com.truecaller.insights.ui.qa.view.MalanaSeedDataFragment$setupMalanaLocalSeedData$1$1"
    f = "MalanaSeedDataFragment.kt"
    l = {}
    m = "invokeSuspend"
.end annotation


# instance fields
.field public final synthetic e:Le/a/c/a/m/c/p;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Le/a/c/a/m/c/p;Ls1/z/c/c0;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Le/a/c/a/m/c/p$a;->e:Le/a/c/a/m/c/p;

    iput-object p2, p0, Le/a/c/a/m/c/p$a;->f:Ls1/z/c/c0;

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

    new-instance p1, Le/a/c/a/m/c/p$a;

    iget-object v0, p0, Le/a/c/a/m/c/p$a;->e:Le/a/c/a/m/c/p;

    iget-object v1, p0, Le/a/c/a/m/c/p$a;->f:Ls1/z/c/c0;

    invoke-direct {p1, v0, v1, p2}, Le/a/c/a/m/c/p$a;-><init>(Le/a/c/a/m/c/p;Ls1/z/c/c0;Ls1/w/d;)V

    return-object p1
.end method

.method public final k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    sget-object p1, Ls1/s;->a:Ls1/s;

    check-cast p2, Ls1/w/d;

    const-string v0, "completion"

    .line 1
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v0, p0, Le/a/c/a/m/c/p$a;->e:Le/a/c/a/m/c/p;

    iget-object v1, p0, Le/a/c/a/m/c/p$a;->f:Ls1/z/c/c0;

    .line 2
    invoke-interface {p2}, Ls1/w/d;->getContext()Ls1/w/f;

    .line 3
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 4
    iget-object p2, v0, Le/a/c/a/m/c/p;->f:Le/a/c/a/m/c/o;

    .line 5
    sget-object v2, Le/a/c/a/m/c/o;->i:[Ls1/a/l;

    .line 6
    invoke-virtual {p2}, Le/a/c/a/m/c/o;->OA()Le/a/c/a/g/s1;

    move-result-object p2

    .line 7
    iget-object p2, p2, Le/a/c/a/g/s1;->b:Landroid/widget/TextView;

    const-string v2, "binding.localSeedData"

    invoke-static {p2, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v3, v0, Le/a/c/a/m/c/p;->f:Le/a/c/a/m/c/o;

    iget-object v1, v1, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v1, Ljava/lang/String;

    .line 8
    invoke-virtual {v3, v1}, Le/a/c/a/m/c/o;->PA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 9
    invoke-virtual {p2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 10
    iget-object p2, v0, Le/a/c/a/m/c/p;->f:Le/a/c/a/m/c/o;

    .line 11
    invoke-virtual {p2}, Le/a/c/a/m/c/o;->OA()Le/a/c/a/g/s1;

    move-result-object v0

    .line 12
    iget-object v0, v0, Le/a/c/a/g/s1;->b:Landroid/widget/TextView;

    invoke-static {v0, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 13
    invoke-static {p2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance v1, Le/a/c/a/m/c/q;

    invoke-direct {v1, p2, v0}, Le/a/c/a/m/c/q;-><init>(Le/a/c/a/m/c/o;Landroid/widget/TextView;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 15
    sget-object p2, Le/a/c/a/m/c/r;->a:Le/a/c/a/m/c/r;

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object p1
.end method

.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    invoke-static {p1}, Le/q/f/a/d/a;->a3(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Le/a/c/a/m/c/p$a;->e:Le/a/c/a/m/c/p;

    iget-object p1, p1, Le/a/c/a/m/c/p;->f:Le/a/c/a/m/c/o;

    .line 3
    sget-object v0, Le/a/c/a/m/c/o;->i:[Ls1/a/l;

    .line 4
    invoke-virtual {p1}, Le/a/c/a/m/c/o;->OA()Le/a/c/a/g/s1;

    move-result-object p1

    .line 5
    iget-object p1, p1, Le/a/c/a/g/s1;->b:Landroid/widget/TextView;

    const-string v0, "binding.localSeedData"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v1, p0, Le/a/c/a/m/c/p$a;->e:Le/a/c/a/m/c/p;

    iget-object v1, v1, Le/a/c/a/m/c/p;->f:Le/a/c/a/m/c/o;

    iget-object v2, p0, Le/a/c/a/m/c/p$a;->f:Ls1/z/c/c0;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 6
    invoke-virtual {v1, v2}, Le/a/c/a/m/c/o;->PA(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 8
    iget-object p1, p0, Le/a/c/a/m/c/p$a;->e:Le/a/c/a/m/c/p;

    iget-object p1, p1, Le/a/c/a/m/c/p;->f:Le/a/c/a/m/c/o;

    .line 9
    invoke-virtual {p1}, Le/a/c/a/m/c/o;->OA()Le/a/c/a/g/s1;

    move-result-object v1

    .line 10
    iget-object v1, v1, Le/a/c/a/g/s1;->b:Landroid/widget/TextView;

    invoke-static {v1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 11
    new-instance v0, Le/a/c/a/m/c/q;

    invoke-direct {v0, p1, v1}, Le/a/c/a/m/c/q;-><init>(Le/a/c/a/m/c/o;Landroid/widget/TextView;)V

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 12
    sget-object p1, Le/a/c/a/m/c/r;->a:Le/a/c/a/m/c/r;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
