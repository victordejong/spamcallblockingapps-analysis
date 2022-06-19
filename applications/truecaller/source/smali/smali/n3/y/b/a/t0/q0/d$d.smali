.class public final Ln3/y/b/a/t0/q0/d$d;
.super Ln3/y/b/a/t0/p0/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/q0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "d"
.end annotation


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/q0/r/e;JI)V
    .locals 2

    int-to-long p2, p4

    .line 1
    iget-object p1, p1, Ln3/y/b/a/t0/q0/r/e;->o:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    add-int/lit8 p1, p1, -0x1

    int-to-long v0, p1

    invoke-direct {p0, p2, p3, v0, v1}, Ln3/y/b/a/t0/p0/a;-><init>(JJ)V

    return-void
.end method
