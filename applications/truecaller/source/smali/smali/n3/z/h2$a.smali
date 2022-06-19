.class public final Ln3/z/h2$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lq3/a/x2/g;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/h2;->s(Ljava/lang/Object;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lq3/a/x2/g<",
        "Ln3/z/c1<",
        "TT;>;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ln3/z/h2;


# direct methods
.method public constructor <init>(Ln3/z/h2;)V
    .locals 0

    iput-object p1, p0, Ln3/z/h2$a;->a:Ln3/z/h2;

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/Object;Ls1/w/d;)Ljava/lang/Object;
    .locals 3

    .line 1
    check-cast p1, Ln3/z/c1;

    .line 2
    iget-object v0, p0, Ln3/z/h2$a;->a:Ln3/z/h2;

    iget-object v0, v0, Ln3/z/h2;->f:Ln3/z/g2;

    .line 3
    iget-object v0, v0, Ln3/z/g2;->k:Lq3/a/g0;

    .line 4
    new-instance v1, Ln3/z/h2$a$a;

    const/4 v2, 0x0

    invoke-direct {v1, p1, v2, p0}, Ln3/z/h2$a$a;-><init>(Ln3/z/c1;Ls1/w/d;Ln3/z/h2$a;)V

    invoke-static {v0, v1, p2}, Ls1/a/a/a/v0/f/d;->a4(Ls1/w/f;Ls1/z/b/p;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    sget-object p2, Ls1/w/j/a;->a:Ls1/w/j/a;

    if-ne p1, p2, :cond_0

    return-object p1

    .line 5
    :cond_0
    sget-object p1, Ls1/s;->a:Ls1/s;

    return-object p1
.end method
