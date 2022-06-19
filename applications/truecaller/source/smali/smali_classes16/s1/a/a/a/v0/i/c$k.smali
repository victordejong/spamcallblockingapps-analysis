.class public final Ls1/a/a/a/v0/i/c$k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/i/c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "k"
.end annotation


# direct methods
.method public static final a(Ls1/z/b/l;)Ls1/a/a/a/v0/i/c;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/i/i;",
            "Ls1/s;",
            ">;)",
            "Ls1/a/a/a/v0/i/c;"
        }
    .end annotation

    const-string v0, "changeOptions"

    invoke-static {p0, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/i/j;

    invoke-direct {v0}, Ls1/a/a/a/v0/i/j;-><init>()V

    .line 2
    invoke-interface {p0, v0}, Ls1/z/b/l;->d(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 p0, 0x1

    .line 3
    iput-boolean p0, v0, Ls1/a/a/a/v0/i/j;->a:Z

    .line 4
    new-instance p0, Ls1/a/a/a/v0/i/d;

    invoke-direct {p0, v0}, Ls1/a/a/a/v0/i/d;-><init>(Ls1/a/a/a/v0/i/j;)V

    return-object p0
.end method
