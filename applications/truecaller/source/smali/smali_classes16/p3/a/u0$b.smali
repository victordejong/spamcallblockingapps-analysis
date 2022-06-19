.class public final Lp3/a/u0$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/f1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/u0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp3/a/f1<",
        "Lp3/a/s0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lp3/a/t0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lp3/a/s0;

    .line 2
    invoke-virtual {p1}, Lp3/a/s0;->c()Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lp3/a/s0;

    .line 2
    invoke-virtual {p1}, Lp3/a/s0;->d()I

    move-result p1

    return p1
.end method
