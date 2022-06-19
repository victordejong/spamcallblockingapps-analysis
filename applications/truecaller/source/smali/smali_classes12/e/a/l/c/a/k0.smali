.class public final Le/a/l/c/a/k0;
.super Le/a/l/c/a/f;
.source "SourceFile"

# interfaces
.implements Le/a/l/c/a/j1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/l/c/a/f<",
        "Ljava/lang/Object;",
        ">;",
        "Le/a/l/c/a/j1;"
    }
.end annotation


# instance fields
.field public final d:Le/a/l/c/a/j2;


# direct methods
.method public constructor <init>(Le/a/l/c/a/j2;Le/a/l/c/a/l1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "router"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "model"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p2}, Le/a/l/c/a/f;-><init>(Le/a/l/c/a/l1;)V

    iput-object p1, p0, Le/a/l/c/a/k0;->d:Le/a/l/c/a/j2;

    return-void
.end method


# virtual methods
.method public getItemId(I)J
    .locals 2

    const p1, 0x7f0a139e

    int-to-long v0, p1

    return-wide v0
.end method

.method public m(I)Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Le/a/l/c/a/f;->A()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/a/l/c/a/p;

    .line 2
    iget-object p1, p1, Le/a/l/c/a/p;->b:Le/a/l/c/a/t;

    .line 3
    instance-of p1, p1, Le/a/l/c/a/t$f;

    return p1
.end method

.method public v(Le/a/o2/h;)Z
    .locals 1

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Le/a/l/c/a/k0;->d:Le/a/l/c/a/j2;

    invoke-interface {p1}, Le/a/l/c/a/j2;->J4()V

    const/4 p1, 0x1

    return p1
.end method
