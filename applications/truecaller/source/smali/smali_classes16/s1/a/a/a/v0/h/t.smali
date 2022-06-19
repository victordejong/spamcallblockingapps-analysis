.class public final Ls1/a/a/a/v0/h/t;
.super Ls1/a/a/a/v0/h/u;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/a/a/a/v0/h/u<",
        "TFieldDescriptorType;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(I)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Ls1/a/a/a/v0/h/u;-><init>(ILs1/a/a/a/v0/h/t;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ls1/a/a/a/v0/h/g$a;

    invoke-virtual {p0, p1, p2}, Ls1/a/a/a/v0/h/u;->k(Ljava/lang/Comparable;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
