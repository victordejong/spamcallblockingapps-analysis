.class public abstract Lp3/a/x;
.super Lp3/a/w0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<RespT:",
        "Ljava/lang/Object;",
        ">",
        "Lp3/a/w0<",
        "TRespT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/w0;-><init>()V

    return-void
.end method


# virtual methods
.method public c(Ljava/lang/Object;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TRespT;)V"
        }
    .end annotation

    .line 1
    move-object v0, p0

    check-cast v0, Le/a/f4/b/h/f$a$a;

    .line 2
    iget-object v0, v0, Le/a/f4/b/h/f$a$a;->b:Lp3/a/f$a;

    .line 3
    invoke-virtual {v0, p1}, Lp3/a/f$a;->c(Ljava/lang/Object;)V

    return-void
.end method
