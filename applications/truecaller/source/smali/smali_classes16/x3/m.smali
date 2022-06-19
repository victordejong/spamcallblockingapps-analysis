.class public abstract Lx3/m;
.super Lx3/c0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lx3/m$b;,
        Lx3/m$c;,
        Lx3/m$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lx3/c0<",
        "TReturnT;>;"
    }
.end annotation


# instance fields
.field public final a:Lx3/z;

.field public final b:Lu3/f$a;

.field public final c:Lx3/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/j<",
            "Lu3/l0;",
            "TResponseT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lx3/z;Lu3/f$a;Lx3/j;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/z;",
            "Lu3/f$a;",
            "Lx3/j<",
            "Lu3/l0;",
            "TResponseT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lx3/c0;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/m;->a:Lx3/z;

    .line 3
    iput-object p2, p0, Lx3/m;->b:Lu3/f$a;

    .line 4
    iput-object p3, p0, Lx3/m;->c:Lx3/j;

    return-void
.end method


# virtual methods
.method public final a([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 1
    new-instance v0, Lx3/s;

    iget-object v1, p0, Lx3/m;->a:Lx3/z;

    iget-object v2, p0, Lx3/m;->b:Lu3/f$a;

    iget-object v3, p0, Lx3/m;->c:Lx3/j;

    invoke-direct {v0, v1, p1, v2, v3}, Lx3/s;-><init>(Lx3/z;[Ljava/lang/Object;Lu3/f$a;Lx3/j;)V

    .line 2
    invoke-virtual {p0, v0, p1}, Lx3/m;->c(Lx3/b;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public abstract c(Lx3/b;[Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation
.end method
