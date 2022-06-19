.class public Le/a/w4/s/q;
.super Le/a/w4/s/w;
.source "SourceFile"


# instance fields
.field public final i:Le/a/p5/c0;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 1

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Le/a/w4/s/w;-><init>(I)V

    .line 2
    iput-object p1, p0, Le/a/w4/s/q;->i:Le/a/p5/c0;

    .line 3
    invoke-virtual {p0, v0}, Le/a/w4/s/w;->o(I)V

    return-void
.end method


# virtual methods
.method public b(Le/a/e/c2/t$b;I)Z
    .locals 2

    .line 1
    check-cast p1, Le/a/w4/s/n0;

    iget-object p1, p1, Le/a/w4/s/n0;->d:Landroid/widget/TextView;

    iget-object p2, p0, Le/a/w4/s/q;->i:Le/a/p5/c0;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f120cdb

    invoke-interface {p2, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const/4 p1, 0x1

    return p1
.end method

.method public h()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public j()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public k()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public l()I
    .locals 1

    const v0, 0x7f0a08aa

    return v0
.end method

.method public m()Ljava/lang/String;
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/w4/s/q;->i:Le/a/p5/c0;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const v2, 0x7f120be7

    invoke-interface {v0, v2, v1}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public n()I
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
