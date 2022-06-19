.class public final Ls1/a/a/a/v0/k/b/g0/d$a$c;
.super Ls1/a/a/a/v0/j/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/d$a;->s(Ls1/a/a/a/v0/f/e;Ljava/util/Collection;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;


# direct methods
.method public constructor <init>(Ljava/util/List;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/d$a$c;->a:Ljava/util/List;

    invoke-direct {p0}, Ls1/a/a/a/v0/j/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ls1/a/a/a/v0/b/b;)V
    .locals 1

    const-string v0, "fakeOverride"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-static {p1, v0}, Ls1/a/a/a/v0/j/l;->r(Ls1/a/a/a/v0/b/b;Ls1/z/b/l;)V

    .line 2
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/d$a$c;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e(Ls1/a/a/a/v0/b/b;Ls1/a/a/a/v0/b/b;)V
    .locals 1

    const-string v0, "fromSuper"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string p1, "fromCurrent"

    invoke-static {p2, p1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
