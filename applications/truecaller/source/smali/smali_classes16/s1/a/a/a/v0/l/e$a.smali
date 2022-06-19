.class public final Ls1/a/a/a/v0/l/e$a;
.super Ls1/a/a/a/v0/l/e;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/l/e;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = null
.end annotation


# direct methods
.method public constructor <init>(Ljava/lang/String;Ls1/a/a/a/v0/l/e$f;Ls1/a/a/a/v0/l/k;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Ls1/a/a/a/v0/l/e;-><init>(Ljava/lang/String;Ls1/a/a/a/v0/l/e$f;Ls1/a/a/a/v0/l/k;)V

    return-void
.end method


# virtual methods
.method public l()Ls1/a/a/a/v0/l/e$o;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">()",
            "Ls1/a/a/a/v0/l/e$o<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Ls1/a/a/a/v0/l/e$o;

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/l/e$o;-><init>(Ljava/lang/Object;Z)V

    return-object v0
.end method
