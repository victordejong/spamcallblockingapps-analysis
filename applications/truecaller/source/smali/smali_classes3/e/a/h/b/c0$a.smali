.class public final Le/a/h/b/c0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/a/h/b/c0;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ls1/k<",
        "+",
        "Ljava/lang/String;",
        "+",
        "Le/a/h/b/y0/a/d;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Le/a/h/b/c0;


# direct methods
.method public constructor <init>(Le/a/h/b/c0;)V
    .locals 0

    iput-object p1, p0, Le/a/h/b/c0$a;->a:Le/a/h/b/c0;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/k<",
            "+",
            "Ljava/lang/String;",
            "+",
            "Le/a/h/b/y0/a/d;",
            ">;",
            "Ls1/w/d<",
            "-",
            "Ls1/s;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    check-cast p1, Ls1/k;

    .line 2
    iget-object p2, p1, Ls1/k;->a:Ljava/lang/Object;

    .line 3
    check-cast p2, Ljava/lang/String;

    .line 4
    iget-object p1, p1, Ls1/k;->b:Ljava/lang/Object;

    .line 5
    check-cast p1, Le/a/h/b/y0/a/d;

    .line 6
    iget-object v0, p0, Le/a/h/b/c0$a;->a:Le/a/h/b/c0;

    iget-object v0, v0, Le/a/h/b/c0;->f:Le/a/h/b/y;

    .line 7
    iget-object v1, v0, Le/a/h/b/y;->z:Lq3/a/y;

    new-instance v2, Ljava/util/concurrent/CancellationException;

    const-string v3, "New searchState appeared"

    invoke-direct {v2, v3}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    invoke-static {v1, v2}, Ls1/a/a/a/v0/f/d;->W(Lq3/a/p1;Ljava/util/concurrent/CancellationException;)V

    .line 8
    new-instance v1, Ls1/k;

    invoke-direct {v1, p2, p1}, Ls1/k;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 9
    iput-object v1, v0, Le/a/h/b/y;->x:Ls1/k;

    .line 10
    iget-object p2, v0, Le/a/u2/a/b;->a:Ljava/lang/Object;

    check-cast p2, Le/a/h/b/v;

    if-eqz p2, :cond_0

    instance-of p1, p1, Le/a/h/b/y0/a/d$a;

    invoke-interface {p2, p1}, Le/a/h/b/v;->Xs(Z)V

    .line 11
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
