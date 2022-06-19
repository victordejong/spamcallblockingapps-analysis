.class abstract Li/a/a/c/g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Li/a/a/c/f;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Li/a/a/c/f<",
        "TT;>;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a(Ljava/lang/String;Li/a/a/c/h;)Li/a/a/c/f;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Li/a/a/c/h;",
            ")",
            "Li/a/a/c/f<",
            "TT;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Li/a/a/c/l;

    invoke-direct {v0, p1, p0}, Li/a/a/c/l;-><init>(Li/a/a/c/h;Ljava/lang/String;)V

    return-object v0
.end method


# virtual methods
.method abstract b()Ljava/lang/String;
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/a/c/g;->b()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Li/a/a/c/g;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
