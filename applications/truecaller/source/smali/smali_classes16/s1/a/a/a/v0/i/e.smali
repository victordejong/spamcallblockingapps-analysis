.class public final Ls1/a/a/a/v0/i/e;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/i/i;",
        "Ls1/s;",
        ">;"
    }
.end annotation


# static fields
.field public static final b:Ls1/a/a/a/v0/i/e;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    new-instance v0, Ls1/a/a/a/v0/i/e;

    invoke-direct {v0}, Ls1/a/a/a/v0/i/e;-><init>()V

    sput-object v0, Ls1/a/a/a/v0/i/e;->b:Ls1/a/a/a/v0/i/e;

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
    check-cast p1, Ls1/a/a/a/v0/i/i;

    const-string v0, "$receiver"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p1}, Ls1/a/a/a/v0/i/i;->c()Ljava/util/Set;

    move-result-object v0

    sget-object v1, Ls1/a/a/a/v0/a/k$a;->w:Ls1/a/a/a/v0/f/b;

    invoke-static {v1}, Le/q/f/a/d/a;->T1(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-static {v0, v1}, Ls1/u/i;->q0(Ljava/util/Set;Ljava/lang/Iterable;)Ljava/util/Set;

    move-result-object v0

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/i/i;->e(Ljava/util/Set;)V

    .line 4
    sget-object v0, Ls1/a/a/a/v0/i/a;->d:Ls1/a/a/a/v0/i/a;

    invoke-interface {p1, v0}, Ls1/a/a/a/v0/i/i;->n(Ls1/a/a/a/v0/i/a;)V

    .line 5
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
