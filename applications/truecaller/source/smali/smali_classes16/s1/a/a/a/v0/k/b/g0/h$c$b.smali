.class public final Ls1/a/a/a/v0/k/b/g0/h$c$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/k/b/g0/h$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "TM;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ljava/io/ByteArrayInputStream;

.field public final synthetic c:Ls1/a/a/a/v0/k/b/g0/h$c;

.field public final synthetic d:Ls1/a/a/a/v0/h/r;


# direct methods
.method public constructor <init>(Ljava/io/ByteArrayInputStream;Ls1/a/a/a/v0/k/b/g0/h$c;Ls1/a/a/a/v0/h/r;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$c$b;->b:Ljava/io/ByteArrayInputStream;

    iput-object p2, p0, Ls1/a/a/a/v0/k/b/g0/h$c$b;->c:Ls1/a/a/a/v0/k/b/g0/h$c;

    iput-object p3, p0, Ls1/a/a/a/v0/k/b/g0/h$c$b;->d:Ls1/a/a/a/v0/h/r;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$c$b;->d:Ls1/a/a/a/v0/h/r;

    iget-object v1, p0, Ls1/a/a/a/v0/k/b/g0/h$c$b;->b:Ljava/io/ByteArrayInputStream;

    iget-object v2, p0, Ls1/a/a/a/v0/k/b/g0/h$c$b;->c:Ls1/a/a/a/v0/k/b/g0/h$c;

    iget-object v2, v2, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    .line 2
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 3
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 4
    iget-object v2, v2, Ls1/a/a/a/v0/k/b/j;->q:Ls1/a/a/a/v0/h/f;

    .line 5
    check-cast v0, Ls1/a/a/a/v0/h/b;

    invoke-virtual {v0, v1, v2}, Ls1/a/a/a/v0/h/b;->c(Ljava/io/InputStream;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ls1/a/a/a/v0/h/p;

    return-object v0
.end method
