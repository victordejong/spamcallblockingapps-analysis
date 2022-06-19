.class public final Ls1/a/a/a/i;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/a<",
        "Ls1/a/a/a/v0/b/h0;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/b/b;

.field public final synthetic c:I


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/b/b;I)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/i;->b:Ls1/a/a/a/v0/b/b;

    iput p2, p0, Ls1/a/a/a/i;->c:I

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public invoke()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Ls1/a/a/a/i;->b:Ls1/a/a/a/v0/b/b;

    invoke-interface {v0}, Ls1/a/a/a/v0/b/a;->i()Ljava/util/List;

    move-result-object v0

    iget v1, p0, Ls1/a/a/a/i;->c:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    const-string v1, "descriptor.valueParameters[i]"

    invoke-static {v0, v1}, Ls1/z/c/l;->d(Ljava/lang/Object;Ljava/lang/String;)V

    check-cast v0, Ls1/a/a/a/v0/b/h0;

    return-object v0
.end method
