.class public final Ls1/a/a/a/v0/b/o0$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/b/o0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ls1/z/c/f;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/m/l1/e;Ls1/z/b/l;)Ls1/a/a/a/v0/b/o0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T::",
            "Ls1/a/a/a/v0/j/y/i;",
            ">(",
            "Ls1/a/a/a/v0/b/e;",
            "Ls1/a/a/a/v0/l/m;",
            "Ls1/a/a/a/v0/m/l1/e;",
            "Ls1/z/b/l<",
            "-",
            "Ls1/a/a/a/v0/m/l1/e;",
            "+TT;>;)",
            "Ls1/a/a/a/v0/b/o0<",
            "TT;>;"
        }
    .end annotation

    const-string v0, "classDescriptor"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "storageManager"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "kotlinTypeRefinerForOwnerModule"

    invoke-static {p3, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "scopeFactory"

    invoke-static {p4, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Ls1/a/a/a/v0/b/o0;

    const/4 v6, 0x0

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p4

    move-object v5, p3

    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/b/o0;-><init>(Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/l/m;Ls1/z/b/l;Ls1/a/a/a/v0/m/l1/e;Ls1/z/c/f;)V

    return-object v0
.end method
