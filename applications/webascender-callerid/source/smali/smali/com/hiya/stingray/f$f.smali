.class final Lcom/hiya/stingray/f$f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/f;->q(Lcom/hiya/client/callerid/ui/b0/j;Lg/g/b/c/k;J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "R:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/d/o<",
        "TT;",
        "Li/c/b0/b/a0<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/stingray/f;

.field final synthetic g:Lcom/hiya/client/callerid/ui/b0/j;

.field final synthetic h:J

.field final synthetic i:Lg/g/b/c/k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/f;Lcom/hiya/client/callerid/ui/b0/j;JLg/g/b/c/k;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/stingray/f$f;->f:Lcom/hiya/stingray/f;

    iput-object p2, p0, Lcom/hiya/stingray/f$f;->g:Lcom/hiya/client/callerid/ui/b0/j;

    iput-wide p3, p0, Lcom/hiya/stingray/f$f;->h:J

    iput-object p5, p0, Lcom/hiya/stingray/f$f;->i:Lg/g/b/c/k;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/hiya/stingray/f$b;)Li/c/b0/b/v;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/hiya/stingray/f$b;",
            ")",
            "Li/c/b0/b/v<",
            "Lcom/hiya/stingray/f$b;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/hiya/stingray/f;->r:Lcom/hiya/stingray/f$a;

    iget-object v1, p0, Lcom/hiya/stingray/f$f;->f:Lcom/hiya/stingray/f;

    invoke-static {v1}, Lcom/hiya/stingray/f;->c(Lcom/hiya/stingray/f;)Lcom/hiya/stingray/manager/o1;

    move-result-object v1

    iget-object v2, p0, Lcom/hiya/stingray/f$f;->g:Lcom/hiya/client/callerid/ui/b0/j;

    invoke-virtual {v2}, Lcom/hiya/client/callerid/ui/b0/j;->c()Ljava/lang/String;

    move-result-object v2

    iget-wide v3, p0, Lcom/hiya/stingray/f$f;->h:J

    const/4 v5, 0x0

    const/16 v6, 0x8

    const/4 v7, 0x0

    invoke-static/range {v0 .. v7}, Lcom/hiya/stingray/f$a;->b(Lcom/hiya/stingray/f$a;Lcom/hiya/stingray/manager/o1;Ljava/lang/String;JLi/c/b0/b/d0;ILjava/lang/Object;)Li/c/b0/b/p;

    move-result-object v0

    .line 2
    new-instance v1, Lcom/hiya/stingray/f$f$a;

    invoke-direct {v1, p0, p1}, Lcom/hiya/stingray/f$f$a;-><init>(Lcom/hiya/stingray/f$f;Lcom/hiya/stingray/f$b;)V

    invoke-virtual {v0, v1}, Li/c/b0/b/p;->k(Li/c/b0/d/o;)Li/c/b0/b/p;

    move-result-object v0

    .line 3
    invoke-virtual {v0, p1}, Li/c/b0/b/p;->f(Ljava/lang/Object;)Li/c/b0/b/e0;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Li/c/b0/b/e0;->K()Li/c/b0/b/v;

    move-result-object p1

    .line 5
    sget-object v0, Lcom/hiya/stingray/f$f$b;->f:Lcom/hiya/stingray/f$f$b;

    invoke-virtual {p1, v0}, Li/c/b0/b/v;->doOnError(Li/c/b0/d/g;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcom/hiya/stingray/f$b;

    invoke-virtual {p0, p1}, Lcom/hiya/stingray/f$f;->a(Lcom/hiya/stingray/f$b;)Li/c/b0/b/v;

    move-result-object p1

    return-object p1
.end method
