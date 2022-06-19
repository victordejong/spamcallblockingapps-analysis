.class public final Ls1/a/a/a/v0/d/a/d0/n/j$d;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/j;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;Ls1/a/a/a/v0/d/a/d0/n/i;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ljava/util/Set<",
        "+",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/j;

.field public final synthetic c:Ls1/a/a/a/v0/d/a/d0/h;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/j;Ls1/a/a/a/v0/d/a/d0/h;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$d;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/j$d;->c:Ls1/a/a/a/v0/d/a/d0/h;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/j$d;->c:Ls1/a/a/a/v0/d/a/d0/h;

    .line 2
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/h;->c:Ls1/a/a/a/v0/d/a/d0/c;

    .line 3
    iget-object v0, v0, Ls1/a/a/a/v0/d/a/d0/c;->b:Ls1/a/a/a/v0/d/a/p;

    .line 4
    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$d;->b:Ls1/a/a/a/v0/d/a/d0/n/j;

    .line 5
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/n/j;->q:Ls1/a/a/a/v0/d/a/d0/n/i;

    .line 6
    iget-object v1, v1, Ls1/a/a/a/v0/b/h1/c0;->e:Ls1/a/a/a/v0/f/b;

    .line 7
    invoke-interface {v0, v1}, Ls1/a/a/a/v0/d/a/p;->b(Ls1/a/a/a/v0/f/b;)Ljava/util/Set;

    move-result-object v0

    return-object v0
.end method
