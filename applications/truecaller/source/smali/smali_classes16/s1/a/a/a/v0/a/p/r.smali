.class public final Ls1/a/a/a/v0/a/p/r;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ls1/a/a/a/v0/o/c;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<N:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Ls1/a/a/a/v0/o/c<",
        "Ls1/a/a/a/v0/b/b;",
        ">;"
    }
.end annotation


# static fields
.field public static final a:Ls1/a/a/a/v0/a/p/r;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/a/p/r;

    invoke-direct {v0}, Ls1/a/a/a/v0/a/p/r;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/a/p/r;->a:Ls1/a/a/a/v0/a/p/r;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Ljava/lang/Iterable;
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->a()Ls1/a/a/a/v0/b/b;

    move-result-object p1

    const-string v0, "it.original"

    invoke-static {p1, v0}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p1}, Ls1/a/a/a/v0/b/b;->e()Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
