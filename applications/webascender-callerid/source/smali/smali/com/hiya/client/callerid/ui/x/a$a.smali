.class final Lcom/hiya/client/callerid/ui/x/a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/d/o;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/ui/x/a;->f()V
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
        "Li/c/b0/b/t<",
        "+TR;>;>;"
    }
.end annotation


# instance fields
.field final synthetic f:Lcom/hiya/client/callerid/ui/x/a;

.field final synthetic g:Lcom/hiya/client/callerid/ui/x/d;


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/ui/x/a;Lcom/hiya/client/callerid/ui/x/d;)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/ui/x/a$a;->f:Lcom/hiya/client/callerid/ui/x/a;

    iput-object p2, p0, Lcom/hiya/client/callerid/ui/x/a$a;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Long;)Li/c/b0/b/p;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Long;",
            ")",
            "Li/c/b0/b/p<",
            "Lcom/hiya/client/callerid/ui/b0/c;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object p1, p0, Lcom/hiya/client/callerid/ui/x/a$a;->f:Lcom/hiya/client/callerid/ui/x/a;

    invoke-static {p1}, Lcom/hiya/client/callerid/ui/x/a;->a(Lcom/hiya/client/callerid/ui/x/a;)Lcom/hiya/client/callerid/ui/a0/a;

    move-result-object p1

    iget-object v0, p0, Lcom/hiya/client/callerid/ui/x/a$a;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-virtual {v0}, Lcom/hiya/client/callerid/ui/x/d;->f()Lcom/hiya/client/callerid/ui/b0/j;

    move-result-object v0

    iget-object v1, p0, Lcom/hiya/client/callerid/ui/x/a$a;->g:Lcom/hiya/client/callerid/ui/x/d;

    invoke-virtual {v1}, Lcom/hiya/client/callerid/ui/x/d;->h()J

    move-result-wide v1

    invoke-virtual {p1, v0, v1, v2}, Lcom/hiya/client/callerid/ui/a0/a;->d(Lcom/hiya/client/callerid/ui/b0/j;J)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p0, p1}, Lcom/hiya/client/callerid/ui/x/a$a;->a(Ljava/lang/Long;)Li/c/b0/b/p;

    move-result-object p1

    return-object p1
.end method
