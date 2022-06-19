.class public Le/m/e/e0/a0/t$a;
.super Le/m/e/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/e/e0/a0/t;->create(Le/m/e/k;Le/m/e/f0/a;)Le/m/e/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/m/e/b0<",
        "TT1;>;"
    }
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Class;

.field public final synthetic b:Le/m/e/e0/a0/t;


# direct methods
.method public constructor <init>(Le/m/e/e0/a0/t;Ljava/lang/Class;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/e/e0/a0/t$a;->b:Le/m/e/e0/a0/t;

    iput-object p2, p0, Le/m/e/e0/a0/t$a;->a:Ljava/lang/Class;

    invoke-direct {p0}, Le/m/e/b0;-><init>()V

    return-void
.end method


# virtual methods
.method public read(Le/m/e/g0/a;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/g0/a;",
            ")TT1;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/t$a;->b:Le/m/e/e0/a0/t;

    iget-object v0, v0, Le/m/e/e0/a0/t;->b:Le/m/e/b0;

    invoke-virtual {v0, p1}, Le/m/e/b0;->read(Le/m/e/g0/a;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Le/m/e/e0/a0/t$a;->a:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance v0, Le/m/e/z;

    const-string v1, "Expected a "

    invoke-static {v1}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Le/m/e/e0/a0/t$a;->a:Ljava/lang/Class;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " but was "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 4
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Le/m/e/z;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1
    :goto_0
    return-object p1
.end method

.method public write(Le/m/e/g0/c;Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Le/m/e/g0/c;",
            "TT1;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/m/e/e0/a0/t$a;->b:Le/m/e/e0/a0/t;

    iget-object v0, v0, Le/m/e/e0/a0/t;->b:Le/m/e/b0;

    invoke-virtual {v0, p1, p2}, Le/m/e/b0;->write(Le/m/e/g0/c;Ljava/lang/Object;)V

    return-void
.end method
