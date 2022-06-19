.class public final Lq3/b/k/h;
.super Lq3/b/k/l;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lq3/b/i/d;Lq3/b/i/d;)V
    .locals 2

    const-string v0, "keyDesc"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "valueDesc"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlin.collections.LinkedHashMap"

    const/4 v1, 0x0

    .line 1
    invoke-direct {p0, v0, p1, p2, v1}, Lq3/b/k/l;-><init>(Ljava/lang/String;Lq3/b/i/d;Lq3/b/i/d;Ls1/z/c/f;)V

    return-void
.end method
