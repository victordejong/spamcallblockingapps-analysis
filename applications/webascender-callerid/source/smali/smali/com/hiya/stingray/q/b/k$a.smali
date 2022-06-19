.class Lcom/hiya/stingray/q/b/k$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/Callable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/hiya/stingray/q/b/k;->i(Ljava/util/List;IJ)Ljava/util/concurrent/Callable;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/concurrent/Callable<",
        "Ljava/util/List<",
        "Lcom/hiya/stingray/q/c/a;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic f:J

.field final synthetic g:Ljava/util/List;

.field final synthetic h:I

.field final synthetic i:Lcom/hiya/stingray/q/b/k;


# direct methods
.method constructor <init>(Lcom/hiya/stingray/q/b/k;JLjava/util/List;I)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/hiya/stingray/q/b/k$a;->i:Lcom/hiya/stingray/q/b/k;

    iput-wide p2, p0, Lcom/hiya/stingray/q/b/k$a;->f:J

    iput-object p4, p0, Lcom/hiya/stingray/q/b/k$a;->g:Ljava/util/List;

    iput p5, p0, Lcom/hiya/stingray/q/b/k$a;->h:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/util/List;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/hiya/stingray/q/c/a;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    .line 1
    iget-wide v1, p0, Lcom/hiya/stingray/q/b/k$a;->f:J

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 2
    iget-object v1, p0, Lcom/hiya/stingray/q/b/k$a;->i:Lcom/hiya/stingray/q/b/k;

    iget-object v2, p0, Lcom/hiya/stingray/q/b/k$a;->g:Ljava/util/List;

    iget v3, p0, Lcom/hiya/stingray/q/b/k$a;->h:I

    const-string v4, "date >? "

    invoke-static {v1, v2, v4, v0, v3}, Lcom/hiya/stingray/q/b/k;->a(Lcom/hiya/stingray/q/b/k;Ljava/util/List;Ljava/lang/String;[Ljava/lang/String;I)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic call()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lcom/hiya/stingray/q/b/k$a;->a()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method
