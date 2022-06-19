.class public final Ls1/a/a/a/v0/k/b/g0/h$c$f;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/k/b/g0/h$c;-><init>(Ls1/a/a/a/v0/k/b/g0/h;Ljava/util/List;Ljava/util/List;Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/f/e;",
        "Ls1/a/a/a/v0/b/v0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/k/b/g0/h$c;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/k/b/g0/h$c;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/k/b/g0/h$c$f;->b:Ls1/a/a/a/v0/k/b/g0/h$c;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 4

    .line 1
    check-cast p1, Ls1/a/a/a/v0/f/e;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    iget-object v0, p0, Ls1/a/a/a/v0/k/b/g0/h$c$f;->b:Ls1/a/a/a/v0/k/b/g0/h$c;

    .line 4
    iget-object v1, v0, Ls1/a/a/a/v0/k/b/g0/h$c;->c:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    .line 5
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p1}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    iget-object p1, v0, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    .line 6
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 7
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/l;->c:Ls1/a/a/a/v0/k/b/j;

    .line 8
    iget-object p1, p1, Ls1/a/a/a/v0/k/b/j;->q:Ls1/a/a/a/v0/h/f;

    .line 9
    sget-object v3, Ls1/a/a/a/v0/e/r;->p:Ls1/a/a/a/v0/h/r;

    check-cast v3, Ls1/a/a/a/v0/h/b;

    invoke-virtual {v3, v2, p1}, Ls1/a/a/a/v0/h/b;->c(Ljava/io/InputStream;Ls1/a/a/a/v0/h/f;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ls1/a/a/a/v0/e/r;

    if-eqz p1, :cond_0

    .line 10
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/h$c;->i:Ls1/a/a/a/v0/k/b/g0/h;

    .line 11
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/g0/h;->e:Ls1/a/a/a/v0/k/b/l;

    .line 12
    iget-object v0, v0, Ls1/a/a/a/v0/k/b/l;->b:Ls1/a/a/a/v0/k/b/v;

    .line 13
    invoke-virtual {v0, p1}, Ls1/a/a/a/v0/k/b/v;->k(Ls1/a/a/a/v0/e/r;)Ls1/a/a/a/v0/b/v0;

    move-result-object v1

    :cond_0
    return-object v1
.end method
