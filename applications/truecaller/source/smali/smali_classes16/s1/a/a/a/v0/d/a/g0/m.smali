.class public final Ls1/a/a/a/v0/d/a/g0/m;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Integer;",
        "Ls1/a/a/a/v0/d/a/g0/e;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:[Ls1/a/a/a/v0/d/a/g0/e;


# direct methods
.method public constructor <init>([Ls1/a/a/a/v0/d/a/g0/e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/g0/m;->b:[Ls1/a/a/a/v0/d/a/g0/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/g0/m;->b:[Ls1/a/a/a/v0/d/a/g0/e;

    if-ltz p1, :cond_0

    invoke-static {v0}, Le/q/f/a/d/a;->V0([Ljava/lang/Object;)I

    move-result v1

    if-gt p1, v1, :cond_0

    aget-object p1, v0, p1

    goto :goto_0

    :cond_0
    sget-object p1, Ls1/a/a/a/v0/d/a/g0/e;->f:Ls1/a/a/a/v0/d/a/g0/e;

    .line 3
    sget-object p1, Ls1/a/a/a/v0/d/a/g0/e;->e:Ls1/a/a/a/v0/d/a/g0/e;

    sget-object p1, Ls1/a/a/a/v0/d/a/g0/e;->e:Ls1/a/a/a/v0/d/a/g0/e;

    :goto_0
    return-object p1
.end method
