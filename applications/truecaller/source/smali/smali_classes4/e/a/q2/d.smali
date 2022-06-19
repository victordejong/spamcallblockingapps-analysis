.class public Le/a/q2/d;
.super Le/a/r2/b0;
.source "SourceFile"


# direct methods
.method public constructor <init>(Le/a/q2/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/a/r2/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Class;Le/a/r2/w;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/Class<",
            "TT;>;",
            "Le/a/r2/w;",
            ")TT;"
        }
    .end annotation

    .line 1
    const-class v0, Le/a/q2/a0;

    invoke-virtual {v0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    new-instance p1, Le/a/q2/z;

    invoke-direct {p1, p2}, Le/a/q2/z;-><init>(Le/a/r2/w;)V

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {p0, p1, p2}, Le/a/r2/b0;->b(Ljava/lang/Class;Le/a/r2/w;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
