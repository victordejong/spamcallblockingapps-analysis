.class public Le/k/a/c/l0/s/r;
.super Le/k/a/c/l0/t/q0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/l0/t/q0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final c:Le/k/a/c/i;

.field public final d:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/k/a/c/i;Ljava/lang/String;)V
    .locals 1

    .line 1
    const-class v0, Ljava/lang/Object;

    invoke-direct {p0, v0}, Le/k/a/c/l0/t/q0;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/l0/s/r;->c:Le/k/a/c/i;

    .line 3
    iput-object p2, p0, Le/k/a/c/l0/s/r;->d:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public f(Ljava/lang/Object;Le/k/a/b/g;Le/k/a/c/a0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/l0/s/r;->c:Le/k/a/c/i;

    iget-object p2, p0, Le/k/a/c/l0/s/r;->d:Ljava/lang/String;

    invoke-virtual {p3, p1, p2}, Le/k/a/c/a0;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
