.class public final Ls1/a/a/a/v0/d/a/g0/l$c;
.super Ls1/a/a/a/v0/d/a/g0/l$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/g0/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public final d:Z


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/m/e0;ZZZ)V
    .locals 1

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1, p3, p4}, Ls1/a/a/a/v0/d/a/g0/l$a;-><init>(Ls1/a/a/a/v0/m/e0;ZZ)V

    iput-boolean p2, p0, Ls1/a/a/a/v0/d/a/g0/l$c;->d:Z

    return-void
.end method
