.class public Le/a/u3/n;
.super Le/a/u3/g;
.source "SourceFile"


# instance fields
.field public final q6:Le/a/u3/d;


# direct methods
.method public constructor <init>(Le/a/u3/a;Le/a/u3/d;Le/a/s4/a;Ljavax/inject/Provider;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/a/u3/a;",
            "Le/a/u3/d;",
            "Le/a/s4/a;",
            "Ljavax/inject/Provider<",
            "Le/a/u3/f;",
            ">;)V"
        }
    .end annotation

    const-string v0, "environment"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "prefs"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "remoteConfig"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "observer"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p2, p3, p4}, Le/a/u3/g;-><init>(Le/a/u3/a;Le/a/u3/d;Le/a/s4/a;Ljavax/inject/Provider;)V

    iput-object p2, p0, Le/a/u3/n;->q6:Le/a/u3/d;

    .line 2
    invoke-virtual {p0}, Le/a/u3/g;->Y()Ljava/util/List;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/a/u3/b;

    .line 4
    instance-of p4, p2, Le/a/u3/s;

    if-eqz p4, :cond_0

    new-instance p4, Le/a/u3/n$a;

    invoke-direct {p4, p2, p0, p3}, Le/a/u3/n$a;-><init>(Le/a/u3/b;Le/a/u3/n;Le/a/s4/a;)V

    invoke-virtual {p0, p2, p4}, Le/a/u3/g;->j0(Le/a/u3/b;Ls1/z/b/l;)V

    goto :goto_0

    .line 5
    :cond_0
    instance-of p4, p2, Le/a/u3/j;

    if-eqz p4, :cond_1

    new-instance p4, Le/a/u3/n$b;

    invoke-direct {p4, p2, p0, p3}, Le/a/u3/n$b;-><init>(Le/a/u3/b;Le/a/u3/n;Le/a/s4/a;)V

    invoke-virtual {p0, p2, p4}, Le/a/u3/g;->j0(Le/a/u3/b;Ls1/z/b/l;)V

    goto :goto_0

    .line 6
    :cond_1
    new-instance p4, Le/a/u3/n$c;

    invoke-direct {p4, p0, p3}, Le/a/u3/n$c;-><init>(Le/a/u3/n;Le/a/s4/a;)V

    invoke-virtual {p0, p2, p4}, Le/a/u3/g;->j0(Le/a/u3/b;Ls1/z/b/l;)V

    goto :goto_0

    :cond_2
    return-void
.end method
