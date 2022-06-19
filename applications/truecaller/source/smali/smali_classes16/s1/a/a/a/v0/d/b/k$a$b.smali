.class public final Ls1/a/a/a/v0/d/b/k$a$b;
.super Ls1/a/a/a/v0/d/b/k$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/b/k$a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/d/b/l;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/b/l;[BI)V
    .locals 0

    const-string p2, "kotlinJvmBinaryClass"

    .line 1
    invoke-static {p1, p2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 p2, 0x0

    .line 2
    invoke-direct {p0, p2}, Ls1/a/a/a/v0/d/b/k$a;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ls1/a/a/a/v0/d/b/k$a$b;->a:Ls1/a/a/a/v0/d/b/l;

    return-void
.end method
