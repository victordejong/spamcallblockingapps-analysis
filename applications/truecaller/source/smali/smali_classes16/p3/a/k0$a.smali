.class public final Lp3/a/k0$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/f1;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/k0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lp3/a/f1<",
        "Lp3/a/j0;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Z
    .locals 0

    .line 1
    check-cast p1, Lp3/a/j0;

    .line 2
    invoke-virtual {p1}, Lp3/a/j0;->d()Z

    move-result p1

    return p1
.end method

.method public b(Ljava/lang/Object;)I
    .locals 0

    .line 1
    check-cast p1, Lp3/a/j0;

    .line 2
    invoke-virtual {p1}, Lp3/a/j0;->c()I

    move-result p1

    return p1
.end method
