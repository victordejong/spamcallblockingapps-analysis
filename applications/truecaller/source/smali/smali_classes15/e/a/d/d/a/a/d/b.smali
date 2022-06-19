.class public final Le/a/d/d/a/a/d/b;
.super Le/a/d/d/a/a/d/a;
.source "SourceFile"


# instance fields
.field public b:Z

.field public c:Z

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/a/p5/c0;)V
    .locals 2
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "resourceProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/d/d/a/a/d/a;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Le/a/d/d/a/a/d/b;->c:Z

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const v1, 0x7f121085

    .line 3
    invoke-interface {p1, v1, v0}, Le/a/p5/c0;->b(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const-string v0, "resourceProvider.getStri\u2026dapter_header_frequently)"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Le/a/d/d/a/a/d/b;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public A(Z)V
    .locals 0

    .line 1
    iput-boolean p1, p0, Le/a/d/d/a/a/d/b;->b:Z

    return-void
.end method

.method public B0()V
    .locals 1

    const/4 v0, 0x1

    .line 1
    iput-boolean v0, p0, Le/a/d/d/a/a/d/b;->c:Z

    return-void
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/d/d/a/a/d/c;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/d/d/a/a/d/b;->d:Ljava/lang/String;

    const-string v0, "text"

    .line 4
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, p1, Le/a/d/d/a/a/d/c;->b:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    const-string v1, "header"

    .line 6
    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    iget-boolean p2, p0, Le/a/d/d/a/a/d/b;->c:Z

    if-eqz p2, :cond_0

    .line 8
    iget-object p1, p1, Le/a/d/d/a/a/d/c;->d:Le/a/o2/f;

    invoke-virtual {p1}, Landroidx/recyclerview/widget/RecyclerView$g;->notifyDataSetChanged()V

    const/4 p1, 0x0

    .line 9
    iput-boolean p1, p0, Le/a/d/d/a/a/d/b;->c:Z

    :cond_0
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/d/d/a/a/d/b;->b:Z

    return v0
.end method

.method public getItemId(I)J
    .locals 2

    const-wide/16 v0, 0x1

    return-wide v0
.end method
