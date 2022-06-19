.class public final Ls1/a/a/a/v0/b/j1/b/n;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ljava/lang/Class<",
        "*>;",
        "Ls1/a/a/a/v0/f/e;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/b/j1/b/n;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/b/j1/b/n;

    invoke-direct {v0}, Ls1/a/a/a/v0/b/j1/b/n;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/b/j1/b/n;->b:Ls1/a/a/a/v0/b/j1/b/n;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 1
    check-cast p1, Ljava/lang/Class;

    .line 2
    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ls1/a/a/a/v0/f/e;->g(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    move-object p1, v1

    :goto_0
    if-eqz p1, :cond_1

    invoke-static {p1}, Ls1/a/a/a/v0/f/e;->f(Ljava/lang/String;)Ls1/a/a/a/v0/f/e;

    move-result-object v1

    :cond_1
    return-object v1
.end method
