.class public final Le/a/c/a/p/d/q/f;
.super Le/a/c/a/p/d/q/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/c/a/p/d/q/a<",
        "Le/a/c/a/p/c/d$c;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Z

.field public final e:Le/a/c/h/h;

.field public final f:Le/a/c/a/i/h;


# direct methods
.method public constructor <init>(Le/a/c/a/g/w0;Le/a/c/h/h;Le/a/c/a/i/h;)V
    .locals 1

    const-string v0, "binding"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "messageLocator"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "analyticsLogger"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p1, Le/a/c/a/g/w0;->a:Landroidx/constraintlayout/widget/ConstraintLayout;

    const-string v0, "binding.root"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 3
    invoke-direct {p0, p1, v0}, Le/a/c/a/p/d/q/a;-><init>(Landroid/view/View;Le/a/c/a/i/h;)V

    .line 4
    iput-object p2, p0, Le/a/c/a/p/d/q/f;->e:Le/a/c/h/h;

    iput-object p3, p0, Le/a/c/a/p/d/q/f;->f:Le/a/c/a/i/h;

    const/4 p1, 0x1

    .line 5
    iput-boolean p1, p0, Le/a/c/a/p/d/q/f;->d:Z

    return-void
.end method


# virtual methods
.method public P4()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public Q4()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Le/a/c/a/p/d/q/f;->d:Z

    return v0
.end method

.method public S4(Le/a/c/a/p/c/d;)V
    .locals 2

    .line 1
    check-cast p1, Le/a/c/a/p/c/d$c;

    const-string v0, "item"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p1, Le/a/c/a/p/c/d$c;->b:Ls1/z/b/l;

    .line 4
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v0, v1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object v0, p0, Le/a/c/a/p/d/q/f;->f:Le/a/c/a/i/h;

    const-string v1, "click"

    .line 6
    invoke-static {p1, v1}, Le/a/c/p/a;->O2(Le/a/c/a/p/c/d;Ljava/lang/String;)Le/a/c/r/d/c;

    move-result-object p1

    invoke-virtual {p1}, Le/a/c/r/d/c;->a()Le/a/c/r/d/b;

    move-result-object p1

    .line 7
    invoke-interface {v0, p1}, Le/a/c/a/i/h;->Zd(Le/a/c/r/d/b;)V

    return-void
.end method

.method public T4()V
    .locals 0

    return-void
.end method
