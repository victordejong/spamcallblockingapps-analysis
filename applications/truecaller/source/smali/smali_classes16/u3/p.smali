.class public final Lu3/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lu3/q;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lu3/a0;)Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/a0;",
            ")",
            "Ljava/util/List<",
            "Lu3/o;",
            ">;"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object p1, Ls1/u/s;->a:Ls1/u/s;

    return-object p1
.end method

.method public b(Lu3/a0;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu3/a0;",
            "Ljava/util/List<",
            "Lu3/o;",
            ">;)V"
        }
    .end annotation

    const-string v0, "url"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "cookies"

    invoke-static {p2, p1}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
