.class public final Le/a/i/d/a0;
.super Le/a/i/d/s;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/m;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/i/d/s<",
        "Le/a/i/d/n$f;",
        ">;",
        "Le/a/i/d/m;"
    }
.end annotation


# instance fields
.field public final c:Le/a/i/f0/c;


# direct methods
.method public constructor <init>(Le/a/i/f0/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/i/d/s;-><init>(Le/a/i/f0/c;)V

    iput-object p1, p0, Le/a/i/d/a0;->c:Le/a/i/f0/c;

    return-void
.end method


# virtual methods
.method public A(Le/a/i/d/n;Le/a/i/f0/m/d;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/i/d/n$f;

    const-string p2, "view"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public B(Le/a/i/f0/m/d;)Z
    .locals 0

    .line 1
    iget-object p1, p0, Le/a/i/d/a0;->c:Le/a/i/f0/c;

    invoke-interface {p1}, Le/a/i/f0/c;->h()Z

    move-result p1

    return p1
.end method
