.class public final Ln3/z/n0$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/n0;-><init>(Lq3/a/g0;Ln3/z/v;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/s;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ln3/z/n0;


# direct methods
.method public constructor <init>(Ln3/z/n0;)V
    .locals 0

    iput-object p1, p0, Ln3/z/n0$b;->b:Ln3/z/n0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Ln3/z/n0$b;->b:Ln3/z/n0;

    .line 2
    iget-object v0, v0, Ln3/z/n0;->e:Ln3/z/v;

    .line 3
    new-instance v1, Ln3/z/o0;

    iget-object v2, p0, Ln3/z/n0$b;->b:Ln3/z/n0;

    invoke-direct {v1, v2}, Ln3/z/o0;-><init>(Ln3/z/n0;)V

    new-instance v2, Ln3/z/p0;

    invoke-direct {v2, v1}, Ln3/z/p0;-><init>(Ls1/z/b/a;)V

    .line 4
    invoke-static {v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "onInvalidatedCallback"

    invoke-static {v2, v1}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    iget-object v0, v0, Ln3/z/v;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    invoke-virtual {v0, v2}, Ljava/util/concurrent/CopyOnWriteArrayList;->remove(Ljava/lang/Object;)Z

    .line 6
    iget-object v0, p0, Ln3/z/n0$b;->b:Ln3/z/n0;

    .line 7
    iget-object v0, v0, Ln3/z/n0;->e:Ln3/z/v;

    .line 8
    invoke-virtual {v0}, Ln3/z/v;->b()V

    .line 9
    sget-object v0, Ls1/s;->a:Ls1/s;

    return-object v0
.end method
