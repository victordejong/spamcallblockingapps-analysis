.class public final Lq3/b/k/v$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lq3/b/k/v;->i(Lq3/b/i/d;ILq3/b/a;Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final synthetic b:Lq3/b/k/v;

.field public final synthetic c:Lq3/b/a;

.field public final synthetic d:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Lq3/b/k/v;Lq3/b/a;Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lq3/b/k/v$a;->b:Lq3/b/k/v;

    iput-object p2, p0, Lq3/b/k/v$a;->c:Lq3/b/a;

    iput-object p3, p0, Lq3/b/k/v$a;->d:Ljava/lang/Object;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke()Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lq3/b/k/v$a;->b:Lq3/b/k/v;

    check-cast v0, Lq3/b/l/l/a;

    .line 2
    invoke-virtual {v0}, Lq3/b/l/l/a;->D()Lq3/b/l/e;

    move-result-object v0

    instance-of v0, v0, Lq3/b/l/i;

    xor-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lq3/b/k/v$a;->b:Lq3/b/k/v;

    .line 4
    iget-object v1, p0, Lq3/b/k/v$a;->c:Lq3/b/a;

    .line 5
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v2, "deserializer"

    invoke-static {v1, v2}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    invoke-virtual {v0, v1}, Lq3/b/k/v;->w(Lq3/b/a;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 7
    :cond_0
    iget-object v0, p0, Lq3/b/k/v$a;->b:Lq3/b/k/v;

    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v0, 0x0

    :goto_0
    return-object v0
.end method
