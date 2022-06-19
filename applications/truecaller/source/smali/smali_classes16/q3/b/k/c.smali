.class public final Lq3/b/k/c;
.super Lq3/b/k/j;
.source "SourceFile"


# direct methods
.method public constructor <init>(Lq3/b/i/d;)V
    .locals 1

    const-string v0, "elementDesc"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lq3/b/k/j;-><init>(Lq3/b/i/d;Ls1/z/c/f;)V

    return-void
.end method


# virtual methods
.method public f()Ljava/lang/String;
    .locals 1

    const-string v0, "kotlin.collections.ArrayList"

    return-object v0
.end method
