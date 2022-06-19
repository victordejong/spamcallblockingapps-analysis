.class public Le/k/a/c/d0/y/l;
.super Le/k/a/c/d0/w$a;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 1

    .line 1
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-direct {p0, v0}, Le/k/a/c/d0/w$a;-><init>(Ljava/lang/Class;)V

    .line 2
    iput-object p1, p0, Le/k/a/c/d0/y/l;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public j()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public v(Le/k/a/c/g;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object p1, p0, Le/k/a/c/d0/y/l;->b:Ljava/lang/Object;

    return-object p1
.end method
