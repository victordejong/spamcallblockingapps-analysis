.class public final Ls1/a/a/a/v0/d/a/f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/b/b;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/d/a/f;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/d/a/f;

    invoke-direct {v0}, Ls1/a/a/a/v0/d/a/f;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/d/a/f;->b:Ls1/a/a/a/v0/d/a/f;

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
    .locals 1

    .line 1
    check-cast p1, Ls1/a/a/a/v0/b/b;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    instance-of v0, p1, Ls1/a/a/a/v0/b/v;

    if-eqz v0, :cond_0

    sget-object v0, Ls1/a/a/a/v0/d/a/e;->g:Ls1/a/a/a/v0/d/a/e;

    .line 4
    sget-object v0, Ls1/a/a/a/v0/d/a/e;->f:Ljava/util/Set;

    invoke-static {p1}, Ls1/a/a/a/v0/d/b/p;->d(Ls1/a/a/a/v0/b/a;)Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Ls1/u/i;->l(Ljava/lang/Iterable;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 5
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    return-object p1
.end method
