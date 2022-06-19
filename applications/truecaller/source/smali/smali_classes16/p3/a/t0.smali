.class public Lp3/a/t0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator<",
        "Lp3/a/s0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp3/a/u0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lp3/a/s0;

    check-cast p2, Lp3/a/s0;

    .line 2
    invoke-virtual {p1}, Lp3/a/s0;->d()I

    move-result p1

    invoke-virtual {p2}, Lp3/a/s0;->d()I

    move-result p2

    sub-int/2addr p1, p2

    return p1
.end method
