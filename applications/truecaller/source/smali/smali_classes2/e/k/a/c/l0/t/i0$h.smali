.class public abstract Le/k/a/c/l0/t/i0$h;
.super Le/k/a/c/l0/t/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/l0/t/i0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Le/k/a/c/l0/t/a<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Le/k/a/c/l0/t/i0$h;Le/k/a/c/d;Ljava/lang/Boolean;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/l0/t/i0$h<",
            "TT;>;",
            "Le/k/a/c/d;",
            "Ljava/lang/Boolean;",
            ")V"
        }
    .end annotation

    .line 2
    invoke-direct {p0, p1, p2, p3}, Le/k/a/c/l0/t/a;-><init>(Le/k/a/c/l0/t/a;Le/k/a/c/d;Ljava/lang/Boolean;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "TT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/l0/t/a;-><init>(Ljava/lang/Class;)V

    return-void
.end method


# virtual methods
.method public final p(Le/k/a/c/j0/h;)Le/k/a/c/l0/h;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/k/a/c/j0/h;",
            ")",
            "Le/k/a/c/l0/h<",
            "*>;"
        }
    .end annotation

    return-object p0
.end method
