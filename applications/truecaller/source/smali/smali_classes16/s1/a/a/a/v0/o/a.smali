.class public final Ls1/a/a/a/v0/o/a;
.super Ls1/a/a/a/v0/o/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/o/b<",
        "TN;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ls1/z/b/l;

.field public final synthetic b:[Z


# direct methods
.method public constructor <init>(Ls1/z/b/l;[Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/o/a;->a:Ls1/z/b/l;

    iput-object p2, p0, Ls1/a/a/a/v0/o/a;->b:[Z

    invoke-direct {p0}, Ls1/a/a/a/v0/o/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/o/a;->b:[Z

    const/4 v1, 0x0

    aget-boolean v0, v0, v1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method public b(Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TN;)Z"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/o/a;->a:Ls1/z/b/l;

    invoke-interface {v0, p1}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 2
    iget-object p1, p0, Ls1/a/a/a/v0/o/a;->b:[Z

    aput-boolean v0, p1, v1

    .line 3
    :cond_0
    iget-object p1, p0, Ls1/a/a/a/v0/o/a;->b:[Z

    aget-boolean p1, p1, v1

    xor-int/2addr p1, v0

    return p1
.end method
