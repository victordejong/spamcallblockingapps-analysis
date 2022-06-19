.class public final Le/a/i/d/z;
.super Le/a/i/d/s;
.source "SourceFile"

# interfaces
.implements Le/a/i/d/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/a/i/d/s<",
        "Le/a/i/d/n$e;",
        ">;",
        "Le/a/i/d/l;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/a/i/f0/c;)V
    .locals 1
    .annotation runtime Ljavax/inject/Inject;
    .end annotation

    const-string v0, "loader"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Le/a/i/d/s;-><init>(Le/a/i/f0/c;)V

    return-void
.end method


# virtual methods
.method public A(Le/a/i/d/n;Le/a/i/f0/m/d;)V
    .locals 0

    .line 1
    check-cast p1, Le/a/i/d/n$e;

    const-string p2, "view"

    .line 2
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method

.method public B(Le/a/i/f0/m/d;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method
