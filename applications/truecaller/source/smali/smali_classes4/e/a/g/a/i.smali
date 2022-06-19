.class public final Le/a/g/a/i;
.super Le/a/i/n;
.source "SourceFile"


# instance fields
.field public final synthetic a:Le/a/g/a/m;


# direct methods
.method public constructor <init>(Le/a/g/a/m;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Le/a/g/a/i;->a:Le/a/g/a/m;

    invoke-direct {p0}, Le/a/i/n;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Le/a/i/c/a/c;)V
    .locals 2

    const-string v0, "ad"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Le/a/g/a/i;->a:Le/a/g/a/m;

    .line 2
    iget-boolean v1, v0, Le/a/g/a/m;->v:Z

    if-eqz v1, :cond_1

    .line 3
    iget-object v0, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast v0, Le/a/g/a/h;

    if-eqz v0, :cond_0

    .line 4
    invoke-interface {v0}, Le/a/g/a/h;->tq()V

    .line 5
    iget-object v1, p0, Le/a/g/a/i;->a:Le/a/g/a/m;

    .line 6
    iget-object v1, v1, Le/a/g/a/m;->N:Le/a/g/e/a;

    .line 7
    check-cast v1, Le/a/g/e/d;

    invoke-virtual {v1}, Le/a/g/e/d;->a()Le/a/i/g;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Le/a/g/a/h;->I3(Le/a/i/c/a/c;Le/a/i/g;)V

    .line 8
    :cond_0
    iget-object p1, p0, Le/a/g/a/i;->a:Le/a/g/a/m;

    .line 9
    iget-object p1, p1, Le/a/g/a/m;->N:Le/a/g/e/a;

    const/4 v0, 0x1

    .line 10
    check-cast p1, Le/a/g/e/d;

    invoke-virtual {p1, v0}, Le/a/g/e/d;->g(Z)V

    :cond_1
    return-void
.end method

.method public onAdLoaded()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/a/g/a/i;->a:Le/a/g/a/m;

    .line 2
    iget-boolean v1, v0, Le/a/g/a/m;->v:Z

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v0}, Le/a/g/a/m;->pk()V

    :cond_0
    return-void
.end method
