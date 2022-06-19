.class public Le/k/a/c/n0/s$a;
.super Le/k/a/c/n0/s;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/k/a/c/n0/s;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Le/k/a/c/n0/s;

.field public final c:Le/k/a/c/n0/s;


# direct methods
.method public constructor <init>(Le/k/a/c/n0/s;Le/k/a/c/n0/s;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Le/k/a/c/n0/s;-><init>()V

    .line 2
    iput-object p1, p0, Le/k/a/c/n0/s$a;->b:Le/k/a/c/n0/s;

    .line 3
    iput-object p2, p0, Le/k/a/c/n0/s$a;->c:Le/k/a/c/n0/s;

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2

    .line 1
    iget-object v0, p0, Le/k/a/c/n0/s$a;->b:Le/k/a/c/n0/s;

    iget-object v1, p0, Le/k/a/c/n0/s$a;->c:Le/k/a/c/n0/s;

    invoke-virtual {v1, p1}, Le/k/a/c/n0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/k/a/c/n0/s;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    const-string v0, "[ChainedTransformer("

    .line 1
    invoke-static {v0}, Le/d/c/a/a;->C(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Le/k/a/c/n0/s$a;->b:Le/k/a/c/n0/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/k/a/c/n0/s$a;->c:Le/k/a/c/n0/s;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ")]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
