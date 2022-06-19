.class public final Lx3/m$a;
.super Lx3/m;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/m;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<ResponseT:",
        "Ljava/lang/Object;",
        "ReturnT:",
        "Ljava/lang/Object;",
        ">",
        "Lx3/m<",
        "TResponseT;TReturnT;>;"
    }
.end annotation


# instance fields
.field public final d:Lx3/c;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lx3/c<",
            "TResponseT;TReturnT;>;"
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
            "TResponseT;TReturnT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lx3/m;-><init>(Lx3/z;Lu3/f$a;Lx3/j;)V

    .line 2
    iput-object p4, p0, Lx3/m$a;->d:Lx3/c;

    return-void
.end method


# virtual methods
.method public c(Lx3/b;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lx3/b<",
            "TResponseT;>;[",
            "Ljava/lang/Object;",
            ")TReturnT;"
        }
    .end annotation

    .line 1
    iget-object p2, p0, Lx3/m$a;->d:Lx3/c;

    invoke-interface {p2, p1}, Lx3/c;->b(Lx3/b;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
