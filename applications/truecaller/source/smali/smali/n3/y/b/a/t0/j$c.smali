.class public final Ln3/y/b/a/t0/j$c;
.super Ln3/y/b/a/t0/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# direct methods
.method public constructor <init>(Ln3/y/b/a/t0/j$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/t0/b;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    return-void
.end method

.method public c(Ln3/y/b/a/t0/s;)V
    .locals 0

    return-void
.end method

.method public e(Ln3/y/b/a/t0/t$a;Ln3/y/b/a/w0/b;J)Ln3/y/b/a/t0/s;
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public getTag()Ljava/lang/Object;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public m(Ln3/y/b/a/w0/e0;)V
    .locals 0

    return-void
.end method

.method public o()V
    .locals 0

    return-void
.end method
