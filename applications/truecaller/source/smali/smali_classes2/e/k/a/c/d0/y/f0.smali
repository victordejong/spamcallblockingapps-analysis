.class public Le/k/a/c/d0/y/f0;
.super Le/k/a/c/d0/z/b0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Le/k/a/c/d0/z/b0<",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation


# instance fields
.field public final d:Le/k/a/c/i;

.field public final e:Ljava/lang/String;


# direct methods
.method public constructor <init>(Le/k/a/c/i;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/k/a/c/d0/z/b0;-><init>(Le/k/a/c/i;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/f0;->d:Le/k/a/c/i;

    .line 3
    iput-object p2, p0, Le/k/a/c/d0/y/f0;->e:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public d(Le/k/a/b/j;Le/k/a/c/g;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/y/f0;->d:Le/k/a/c/i;

    iget-object v0, p0, Le/k/a/c/d0/y/f0;->e:Ljava/lang/String;

    invoke-virtual {p2, p1, v0}, Le/k/a/c/g;->m(Le/k/a/c/i;Ljava/lang/String;)Ljava/lang/Object;

    const/4 p1, 0x0

    throw p1
.end method
