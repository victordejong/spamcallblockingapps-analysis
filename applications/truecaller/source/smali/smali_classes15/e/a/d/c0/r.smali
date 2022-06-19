.class public Le/a/d/c0/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/i1;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/a/d/c0/r$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lq3/a/x2/i1<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Le/a/d/c0/r$a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Le/a/d/c0/r<",
            "TT;>.a;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/b3/c;

.field public final c:Lq3/a/x2/a1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/x2/a1<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-static {p1}, Lq3/a/x2/k1;->a(Ljava/lang/Object;)Lq3/a/x2/a1;

    move-result-object p1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d/c0/r;->c:Lq3/a/x2/a1;

    .line 3
    new-instance p1, Le/a/d/c0/r$a;

    invoke-direct {p1, p0}, Le/a/d/c0/r$a;-><init>(Le/a/d/c0/r;)V

    iput-object p1, p0, Le/a/d/c0/r;->a:Le/a/d/c0/r$a;

    const/4 p1, 0x0

    const/4 v0, 0x1

    .line 4
    invoke-static {p1, v0}, Lq3/a/b3/g;->a(ZI)Lq3/a/b3/c;

    move-result-object p1

    iput-object p1, p0, Le/a/d/c0/r;->b:Lq3/a/b3/c;

    return-void
.end method


# virtual methods
.method public c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/x2/g<",
            "-TT;>;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/r;->c:Lq3/a/x2/a1;

    invoke-interface {v0, p1, p2}, Lq3/a/x2/f;->c(Lq3/a/x2/g;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public getValue()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object v0, p0, Le/a/d/c0/r;->c:Lq3/a/x2/a1;

    invoke-interface {v0}, Lq3/a/x2/a1;->getValue()Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public h()Le/a/d/c0/r$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Le/a/d/c0/r<",
            "TT;>.a;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/a/d/c0/r;->a:Le/a/d/c0/r$a;

    return-object v0
.end method
