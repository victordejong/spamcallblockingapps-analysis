.class public final Ls1/a/a/a/s$a;
.super Ls1/a/a/a/z$c;
.source "SourceFile"

# interfaces
.implements Ls1/a/f;
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Ls1/a/a/a/z$c<",
        "TV;>;",
        "Ljava/lang/Object<",
        "TT;TV;>;"
    }
.end annotation


# instance fields
.field public final e:Ls1/a/a/a/s;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/a/a/a/s<",
            "TT;TV;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ls1/a/a/a/s;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/s<",
            "TT;TV;>;)V"
        }
    .end annotation

    const-string v0, "property"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ls1/a/a/a/z$c;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/s$a;->e:Ls1/a/a/a/s;

    return-void
.end method


# virtual methods
.method public j()Ls1/a/a/a/z;
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/s$a;->e:Ls1/a/a/a/s;

    return-object v0
.end method

.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/s$a;->e:Ls1/a/a/a/s;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/s;->k:Ls1/a/a/a/l0;

    invoke-virtual {v0}, Ls1/a/a/a/l0;->invoke()Ljava/lang/Object;

    move-result-object v0

    const-string v1, "_setter()"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls1/a/a/a/s$a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    .line 3
    invoke-virtual {v0, v1}, Ls1/a/a/a/g;->a([Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
