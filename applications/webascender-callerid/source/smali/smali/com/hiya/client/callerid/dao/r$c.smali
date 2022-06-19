.class final Lcom/hiya/client/callerid/dao/r$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/h0;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/client/callerid/dao/r;->g(J)Li/c/b0/b/e0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/c/b0/b/h0<",
        "TT;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/hiya/client/callerid/dao/r;

.field final synthetic b:J


# direct methods
.method constructor <init>(Lcom/hiya/client/callerid/dao/r;J)V
    .locals 0

    iput-object p1, p0, Lcom/hiya/client/callerid/dao/r$c;->a:Lcom/hiya/client/callerid/dao/r;

    iput-wide p2, p0, Lcom/hiya/client/callerid/dao/r$c;->b:J

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Li/c/b0/b/f0;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Li/c/b0/b/f0<",
            "Ljava/util/List<",
            "Lg/g/b/c/m;",
            ">;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/hiya/client/callerid/dao/r$c;->a:Lcom/hiya/client/callerid/dao/r;

    invoke-static {v0}, Lcom/hiya/client/callerid/dao/r;->b(Lcom/hiya/client/callerid/dao/r;)Lg/g/b/b/d/d;

    move-result-object v0

    iget-wide v1, p0, Lcom/hiya/client/callerid/dao/r$c;->b:J

    invoke-virtual {v0, v1, v2}, Lg/g/b/b/d/d;->d(J)Ljava/util/List;

    move-result-object v0

    invoke-interface {p1, v0}, Li/c/b0/b/f0;->onSuccess(Ljava/lang/Object;)V

    return-void
.end method
