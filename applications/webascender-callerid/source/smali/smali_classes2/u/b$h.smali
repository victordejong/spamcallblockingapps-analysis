.class final Lu/b$h;
.super Lu/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lu/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = "h"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<R:",
        "Ljava/lang/Object;",
        "V:",
        "Ljava/lang/Object;",
        ">",
        "Lu/b$a<",
        "TR;>;"
    }
.end annotation


# instance fields
.field final h:Lu/b$g;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu/b$g<",
            "TV;TR;>;"
        }
    .end annotation
.end field

.field final i:Lu/b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu/b<",
            "TV;>;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lu/b$g;Lu/b;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/b$g<",
            "TV;TR;>;",
            "Lu/b<",
            "TV;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lu/b$a;-><init>()V

    .line 2
    iput-object p1, p0, Lu/b$h;->h:Lu/b$g;

    .line 3
    iput-object p2, p0, Lu/b$h;->i:Lu/b;

    return-void
.end method


# virtual methods
.method protected b(Lu/c;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lu/c<",
            "TR;>;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/b$h;->i:Lu/b;

    new-instance v1, Lu/b$h$a;

    invoke-direct {v1, p0, p1}, Lu/b$h$a;-><init>(Lu/b$h;Lu/c;)V

    invoke-virtual {v0, v1}, Lu/b;->enqueue(Lu/c;)V

    return-void
.end method

.method public clone()Lu/b;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lu/b<",
            "TR;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lu/b$h;

    iget-object v1, p0, Lu/b$h;->h:Lu/b$g;

    iget-object v2, p0, Lu/b$h;->i:Lu/b;

    invoke-virtual {v2}, Lu/b;->clone()Lu/b;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Lu/b$h;-><init>(Lu/b$g;Lu/b;)V

    return-object v0
.end method

.method protected d()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TR;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lu/b$h;->h:Lu/b$g;

    iget-object v1, p0, Lu/b$h;->i:Lu/b;

    invoke-virtual {v1}, Lu/b;->execute()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Lu/b$g;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Mapping{call="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/b$h;->i:Lu/b;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", mapper="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lu/b$h;->h:Lu/b$g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, "}"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
