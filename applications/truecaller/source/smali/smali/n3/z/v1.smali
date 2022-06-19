.class public final Ln3/z/v1;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/p<",
        "Ln3/z/q1<",
        "TT;>;",
        "Ln3/z/q1<",
        "TT;>;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/z/w1;


# direct methods
.method public constructor <init>(Ln3/z/w1;)V
    .locals 0

    iput-object p1, p0, Ln3/z/v1;->b:Ln3/z/w1;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public k(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ln3/z/q1;

    check-cast p2, Ln3/z/q1;

    .line 2
    iget-object p1, p0, Ln3/z/v1;->b:Ln3/z/w1;

    .line 3
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object p1, p0, Ln3/z/v1;->b:Ln3/z/w1;

    .line 5
    invoke-static {p1}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 6
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
