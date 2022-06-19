.class public abstract Lw3/d/e/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lw3/d/b;
.implements Ljava/io/Serializable;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getName()Ljava/lang/String;
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method

.method public readResolve()Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/ObjectStreamException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lw3/d/e/d;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lw3/d/c;->c(Ljava/lang/String;)Lw3/d/b;

    move-result-object v0

    return-object v0
.end method
