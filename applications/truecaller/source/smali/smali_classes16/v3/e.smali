.class public final Lv3/e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lv3/z;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public close()V
    .locals 0

    return-void
.end method

.method public flush()V
    .locals 0

    return-void
.end method

.method public h1(Lv3/f;J)V
    .locals 1

    const-string v0, "source"

    invoke-static {p1, v0}, Ls1/z/c/l;->f(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1, p2, p3}, Lv3/f;->skip(J)V

    return-void
.end method

.method public i()Lv3/c0;
    .locals 1

    .line 1
    sget-object v0, Lv3/c0;->d:Lv3/c0;

    return-object v0
.end method
