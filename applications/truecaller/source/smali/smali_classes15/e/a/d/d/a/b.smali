.class public final Le/a/d/d/a/b;
.super Le/a/d/c0/y1/d;
.source "SourceFile"


# instance fields
.field public b:Le/a/p5/h0;

.field public final c:Ls1/g;

.field public final d:Le/a/l4/c;

.field public final e:Le/a/p5/c;


# direct methods
.method public constructor <init>(Le/a/l4/c;Le/a/p5/c;)V
    .locals 1

    const-string v0, "availabilityManager"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "clock"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Le/a/d/c0/y1/d;-><init>()V

    iput-object p1, p0, Le/a/d/d/a/b;->d:Le/a/l4/c;

    iput-object p2, p0, Le/a/d/d/a/b;->e:Le/a/p5/c;

    .line 2
    new-instance p1, Le/a/d/d/a/b$a;

    invoke-direct {p1, p0}, Le/a/d/d/a/b$a;-><init>(Le/a/d/d/a/b;)V

    invoke-static {p1}, Le/q/f/a/d/a;->P1(Ls1/z/b/a;)Ls1/g;

    move-result-object p1

    iput-object p1, p0, Le/a/d/d/a/b;->c:Ls1/g;

    return-void
.end method


# virtual methods
.method public Hj(Z)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/b;->Kj()Le/a/l4/d;

    move-result-object v0

    .line 2
    iput-boolean p1, v0, Le/a/b0/a/s/a;->c:Z

    .line 3
    iget-object p1, v0, Le/a/b0/a/s/a;->b:Le/a/b0/a/s/b;

    invoke-virtual {v0, p1}, Le/a/b0/a/s/a;->Ij(Le/a/b0/a/s/b;)V

    return-void
.end method

.method public Ij(Ljava/lang/String;)V
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/d/d/a/b;->Kj()Le/a/l4/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/a/l4/d;->Kj(Ljava/lang/String;)V

    return-void
.end method

.method public Jj(Le/a/p5/h0;)V
    .locals 1

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iput-object p1, p0, Le/a/d/d/a/b;->b:Le/a/p5/h0;

    return-void
.end method

.method public final Kj()Le/a/l4/d;
    .locals 1

    iget-object v0, p0, Le/a/d/d/a/b;->c:Ls1/g;

    invoke-interface {v0}, Ls1/g;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/a/l4/d;

    return-object v0
.end method

.method public Y0(Ljava/lang/Object;)V
    .locals 1

    .line 1
    check-cast p1, Le/a/b0/a/s/d;

    const-string v0, "presenterView"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iput-object p1, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 4
    invoke-virtual {p0}, Le/a/d/d/a/b;->Kj()Le/a/l4/d;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/a/l4/d;->Jj(Le/a/b0/a/s/d;)V

    return-void
.end method

.method public c()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    .line 2
    invoke-virtual {p0}, Le/a/d/d/a/b;->Kj()Le/a/l4/d;

    move-result-object v0

    invoke-virtual {v0}, Le/a/l4/d;->c()V

    return-void
.end method
