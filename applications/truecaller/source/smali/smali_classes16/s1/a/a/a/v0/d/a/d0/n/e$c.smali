.class public final Ls1/a/a/a/v0/d/a/d0/n/e$c;
.super Ls1/z/c/m;
.source "SourceFile"

# interfaces
.implements Ls1/z/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ls1/a/a/a/v0/d/a/d0/n/e;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/k;Ls1/a/a/a/v0/d/a/f0/g;Ls1/a/a/a/v0/b/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ls1/z/c/m;",
        "Ls1/z/b/l<",
        "Ls1/a/a/a/v0/m/l1/e;",
        "Ls1/a/a/a/v0/d/a/d0/n/g;",
        ">;"
    }
.end annotation


# instance fields
.field public final synthetic b:Ls1/a/a/a/v0/d/a/d0/n/e;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/d/a/d0/n/e;)V
    .locals 0

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/e$c;->b:Ls1/a/a/a/v0/d/a/d0/n/e;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Ls1/z/c/m;-><init>(I)V

    return-void
.end method


# virtual methods
.method public d(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .line 1
    check-cast p1, Ls1/a/a/a/v0/m/l1/e;

    const-string v0, "it"

    .line 2
    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    new-instance p1, Ls1/a/a/a/v0/d/a/d0/n/g;

    .line 4
    iget-object v3, p0, Ls1/a/a/a/v0/d/a/d0/n/e$c;->b:Ls1/a/a/a/v0/d/a/d0/n/e;

    .line 5
    iget-object v2, v3, Ls1/a/a/a/v0/d/a/d0/n/e;->h:Ls1/a/a/a/v0/d/a/d0/h;

    .line 6
    iget-object v4, v3, Ls1/a/a/a/v0/d/a/d0/n/e;->u:Ls1/a/a/a/v0/d/a/f0/g;

    .line 7
    iget-object v0, v3, Ls1/a/a/a/v0/d/a/d0/n/e;->v:Ls1/a/a/a/v0/b/e;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    move v5, v0

    .line 8
    iget-object v6, v3, Ls1/a/a/a/v0/d/a/d0/n/e;->n:Ls1/a/a/a/v0/d/a/d0/n/g;

    move-object v1, p1

    .line 9
    invoke-direct/range {v1 .. v6}, Ls1/a/a/a/v0/d/a/d0/n/g;-><init>(Ls1/a/a/a/v0/d/a/d0/h;Ls1/a/a/a/v0/b/e;Ls1/a/a/a/v0/d/a/f0/g;ZLs1/a/a/a/v0/d/a/d0/n/g;)V

    return-object p1
.end method
