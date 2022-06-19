.class public final Ls1/a/a/a/v0/n/d;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Ls1/a/a/a/v0/f/e;

.field public final b:Ls1/f0/h;

.field public final c:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/f/e;",
            ">;"
        }
    .end annotation
.end field

.field public final d:Ls1/z/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ls1/z/b/l<",
            "Ls1/a/a/a/v0/b/v;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final e:[Ls1/a/a/a/v0/n/b;


# direct methods
.method public constructor <init>(Ljava/util/Collection;[Ls1/a/a/a/v0/n/b;Ls1/z/b/l;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/f/e;",
            ">;[",
            "Ls1/a/a/a/v0/n/b;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/b/v;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "nameList"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    move-object v5, p2

    check-cast v5, [Ls1/a/a/a/v0/n/b;

    const/4 v1, 0x0

    const/4 v2, 0x0

    move-object v0, p0

    move-object v3, p1

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Ls1/a/a/a/v0/n/d;-><init>(Ls1/a/a/a/v0/f/e;Ls1/f0/h;Ljava/util/Collection;Ls1/z/b/l;[Ls1/a/a/a/v0/n/b;)V

    return-void
.end method

.method public synthetic constructor <init>(Ljava/util/Collection;[Ls1/a/a/a/v0/n/b;Ls1/z/b/l;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_0

    .line 5
    sget-object p3, Ls1/a/a/a/v0/n/d$b;->b:Ls1/a/a/a/v0/n/d$b;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Ls1/a/a/a/v0/n/d;-><init>(Ljava/util/Collection;[Ls1/a/a/a/v0/n/b;Ls1/z/b/l;)V

    return-void
.end method

.method public varargs constructor <init>(Ls1/a/a/a/v0/f/e;Ls1/f0/h;Ljava/util/Collection;Ls1/z/b/l;[Ls1/a/a/a/v0/n/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "Ls1/f0/h;",
            "Ljava/util/Collection<",
            "Ls1/a/a/a/v0/f/e;",
            ">;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/b/v;",
            "Ljava/lang/String;",
            ">;[",
            "Ls1/a/a/a/v0/n/b;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    iput-object p1, p0, Ls1/a/a/a/v0/n/d;->a:Ls1/a/a/a/v0/f/e;

    iput-object p2, p0, Ls1/a/a/a/v0/n/d;->b:Ls1/f0/h;

    iput-object p3, p0, Ls1/a/a/a/v0/n/d;->c:Ljava/util/Collection;

    iput-object p4, p0, Ls1/a/a/a/v0/n/d;->d:Ls1/z/b/l;

    iput-object p5, p0, Ls1/a/a/a/v0/n/d;->e:[Ls1/a/a/a/v0/n/b;

    return-void
.end method

.method public constructor <init>(Ls1/a/a/a/v0/f/e;[Ls1/a/a/a/v0/n/b;Ls1/z/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/a/a/a/v0/f/e;",
            "[",
            "Ls1/a/a/a/v0/n/b;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/b/v;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "checks"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "additionalChecks"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    array-length v0, p2

    invoke-static {p2, v0}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [Ls1/a/a/a/v0/n/b;

    .line 4
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/n/d;->a:Ls1/a/a/a/v0/f/e;

    const/4 p1, 0x0

    iput-object p1, p0, Ls1/a/a/a/v0/n/d;->b:Ls1/f0/h;

    iput-object p1, p0, Ls1/a/a/a/v0/n/d;->c:Ljava/util/Collection;

    iput-object p3, p0, Ls1/a/a/a/v0/n/d;->d:Ls1/z/b/l;

    iput-object p2, p0, Ls1/a/a/a/v0/n/d;->e:[Ls1/a/a/a/v0/n/b;

    return-void
.end method

.method public synthetic constructor <init>(Ls1/a/a/a/v0/f/e;[Ls1/a/a/a/v0/n/b;Ls1/z/b/l;I)V
    .locals 0

    and-int/lit8 p3, p4, 0x4

    if-eqz p3, :cond_0

    .line 2
    sget-object p3, Ls1/a/a/a/v0/n/d$a;->b:Ls1/a/a/a/v0/n/d$a;

    goto :goto_0

    :cond_0
    const/4 p3, 0x0

    :goto_0
    invoke-direct {p0, p1, p2, p3}, Ls1/a/a/a/v0/n/d;-><init>(Ls1/a/a/a/v0/f/e;[Ls1/a/a/a/v0/n/b;Ls1/z/b/l;)V

    return-void
.end method
