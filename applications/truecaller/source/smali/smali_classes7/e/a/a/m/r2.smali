.class public final Le/a/a/m/r2;
.super Le/a/a/m/i2;
.source "SourceFile"

# interfaces
.implements Le/a/a/m/u0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/a/m/i2<",
        "Le/a/a/m/y1;",
        ">;",
        "Le/a/a/m/u0;"
    }
.end annotation


# instance fields
.field public final c:Le/a/a/m/y1$a;

.field public final d:Le/a/a/k/a/i1;


# direct methods
.method public constructor <init>(Le/a/a/m/j2;Le/a/a/m/y1$a;Le/a/a/k/a/i1;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "promoProvider"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "actionListener"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "imVersionManager"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/a/m/i2;-><init>(Le/a/a/m/j2;)V

    iput-object p2, p0, Le/a/a/m/r2;->c:Le/a/a/m/y1$a;

    iput-object p3, p0, Le/a/a/m/r2;->d:Le/a/a/k/a/i1;

    return-void
.end method


# virtual methods
.method public A(Le/a/a/m/d1;)Z
    .locals 0

    .line 1
    instance-of p1, p1, Le/a/a/m/d1$x;

    return p1
.end method

.method public G(Ljava/lang/Object;I)V
    .locals 2

    .line 1
    check-cast p1, Le/a/a/m/y1;

    const-string p2, "itemView"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object p2, p0, Le/a/a/m/r2;->d:Le/a/a/k/a/i1;

    new-instance v0, Le/a/a/m/p2;

    new-instance v1, Le/a/a/m/q2;

    invoke-direct {v1, p1}, Le/a/a/m/q2;-><init>(Le/a/a/m/y1;)V

    invoke-direct {v0, p1, v1}, Le/a/a/m/p2;-><init>(Le/a/a/m/y1;Ljava/lang/Object;)V

    invoke-interface {p2, v0}, Le/a/a/k/a/i1;->a(Ljava/lang/ref/WeakReference;)V

    return-void
.end method

.method public v(Le/a/o2/h;)Z
    .locals 2

    const-string v0, "event"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v1, "ItemEvent.ACTION_UPDATE_APP"

    .line 2
    invoke-static {v0, v1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object p1, p0, Le/a/a/m/r2;->c:Le/a/a/m/y1$a;

    invoke-interface {p1}, Le/a/a/m/y1$a;->i3()Z

    move-result p1

    goto :goto_0

    .line 3
    :cond_0
    iget-object p1, p1, Le/a/o2/h;->a:Ljava/lang/String;

    const-string v0, "ItemEvent.ACTION_DISMISS_UPDATE_APP"

    .line 4
    invoke-static {p1, v0}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Le/a/a/m/r2;->c:Le/a/a/m/y1$a;

    invoke-interface {p1}, Le/a/a/m/y1$a;->Da()Z

    move-result p1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    :goto_0
    return p1
.end method
