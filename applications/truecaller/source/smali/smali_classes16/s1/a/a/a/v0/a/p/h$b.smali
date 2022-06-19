.class public final Ls1/a/a/a/v0/a/p/h$b;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/a/p/h;-><init>(Ls1/a/a/a/v0/l/m;Ls1/a/a/a/v0/a/p/h$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/a/p/l;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/a/p/h;

.field public final synthetic c:Ls1/a/a/a/v0/l/m;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/a/p/h;Ls1/a/a/a/v0/l/m;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/a/p/h$b;->b:Ls1/a/a/a/v0/a/p/h;

    iput-object p2, p0, Ls1/a/a/a/v0/a/p/h$b;->c:Ls1/a/a/a/v0/l/m;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 5

    .line 1
    new-instance v0, Ls1/a/a/a/v0/a/p/l;

    .line 2
    iget-object v1, p0, Ls1/a/a/a/v0/a/p/h$b;->b:Ls1/a/a/a/v0/a/p/h;

    .line 3
    iget-object v1, v1, Ls1/a/a/a/v0/a/g;->a:Ls1/a/a/a/v0/b/h1/a0;

    if-eqz v1, :cond_0

    const-string v2, "builtInsModule"

    .line 4
    invoke-static {v1, v2}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    iget-object v2, p0, Ls1/a/a/a/v0/a/p/h$b;->c:Ls1/a/a/a/v0/l/m;

    .line 5
    new-instance v3, Ls1/a/a/a/v0/a/p/i;

    invoke-direct {v3, p0}, Ls1/a/a/a/v0/a/p/i;-><init>(Ls1/a/a/a/v0/a/p/h$b;)V

    .line 6
    new-instance v4, Ls1/a/a/a/v0/a/p/j;

    invoke-direct {v4, p0}, Ls1/a/a/a/v0/a/p/j;-><init>(Ls1/a/a/a/v0/a/p/h$b;)V

    .line 7
    invoke-direct {v0, v1, v2, v3, v4}, Ls1/a/a/a/v0/a/p/l;-><init>(Ls1/a/a/a/v0/b/a0;Ls1/a/a/a/v0/l/m;Ls1/z/b/a;Ls1/z/b/a;)V

    return-object v0

    :cond_0
    const/4 v0, 0x6

    .line 8
    invoke-static {v0}, Ls1/a/a/a/v0/a/g;->a(I)V

    const/4 v0, 0x0

    throw v0
.end method
