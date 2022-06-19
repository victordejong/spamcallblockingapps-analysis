.class Lio/realm/d1/a$b;
.super Ljava/lang/ThreadLocal;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lio/realm/d1/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/ThreadLocal<",
        "Lio/realm/d1/a$d<",
        "Lio/realm/c0;",
        ">;>;"
    }
.end annotation


# direct methods
.method constructor <init>(Lio/realm/d1/a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/ThreadLocal;-><init>()V

    return-void
.end method


# virtual methods
.method protected a()Lio/realm/d1/a$d;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lio/realm/d1/a$d<",
            "Lio/realm/c0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lio/realm/d1/a$d;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lio/realm/d1/a$d;-><init>(Lio/realm/d1/a$a;)V

    return-object v0
.end method

.method protected bridge synthetic initialValue()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lio/realm/d1/a$b;->a()Lio/realm/d1/a$d;

    move-result-object v0

    return-object v0
.end method
