.class public final Ls1/a/a/a/v0/d/a/d0/g$a;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/g;->c(Ls1/a/a/a/v0/f/b;)Ls1/a/a/a/v0/d/a/d0/n/i;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/d/a/d0/n/i;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/g;

.field public final synthetic c:Ls1/a/a/a/v0/d/a/f0/t;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/g;Ls1/a/a/a/v0/d/a/f0/t;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/g$a;->b:Ls1/a/a/a/v0/d/a/d0/g;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/g$a;->c:Ls1/a/a/a/v0/d/a/f0/t;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance v0, Ls1/a/a/a/v0/d/a/d0/n/i;

    iget-object v1, p0, Ls1/a/a/a/v0/d/a/d0/g$a;->b:Ls1/a/a/a/v0/d/a/d0/g;

    .line 2
    iget-object v1, v1, Ls1/a/a/a/v0/d/a/d0/g;->a:Ls1/a/a/a/v0/d/a/d0/h;

    .line 3
    iget-object v2, p0, Ls1/a/a/a/v0/d/a/d0/g$a;->c:Ls1/a/a/a/v0/d/a/f0/t;

    invoke-direct {v0, v1, v2}, Ls1/a/a/a/v0/d/a/d0/n/i;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/d/a/f0/t;)V

    return-object v0
.end method
