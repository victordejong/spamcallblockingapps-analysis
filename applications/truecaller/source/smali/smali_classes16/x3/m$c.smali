.class public final Lx3/m$c;
.super Lx3/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        ">",
        "Lx3/m<",
        "TResponseT;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Lx3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/c<",
            "TResponseT;",
            "Lx3/b<",
            "TResponseT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx3/z;Lu3/f$a;Lx3/j;Lx3/c;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/z;",
            "Lu3/f$a;",
            "Lx3/j<",
            "Lu3/l0;",
            "TResponseT;>;",
            "Lx3/c<",
            "TResponseT;",
            "Lx3/b<",
            "TResponseT;>;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lx3/m;-><init>(Lx3/z;Lu3/f$a;Lx3/j;)V

    .line 2
    iput-object p4, p0, Lx3/m$c;->d:Lx3/c;

    return-void
.end method


# virtual methods
.method public c(Lx3/b;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx3/m$c;->d:Lx3/c;

    invoke-interface {v0, p1}, Lx3/c;->b(Lx3/b;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lx3/b;

    .line 2
    array-length v0, p2

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    aget-object p2, p2, v0

    check-cast p2, Ls1/w/d;

    .line 3
    new-instance v0, Lq3/a/o;

    invoke-static {p2}, Le/q/f/a/d/a;->s1(Ls1/w/d;)Ls1/w/d;

    move-result-object v2

    invoke-direct {v0, v2, v1}, Lq3/a/o;-><init>(Ls1/w/d;I)V

    .line 4
    new-instance v1, Lx3/q;

    invoke-direct {v1, p1}, Lx3/q;-><init>(Lx3/b;)V

    invoke-virtual {v0, v1}, Lq3/a/o;->r(Ls1/z/b/l;)V

    .line 5
    new-instance v1, Lx3/r;

    invoke-direct {v1, v0}, Lx3/r;-><init>(Lq3/a/n;)V

    invoke-interface {p1, v1}, Lx3/b;->enqueue(Lx3/d;)V

    .line 6
    invoke-virtual {v0}, Lq3/a/o;->y()Ljava/lang/Object;

    move-result-object p1

    .line 7
    sget-object v0, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, v0, :cond_0

    const-string v0, "frame"

    .line 8
    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_0
    return-object p1
.end method
