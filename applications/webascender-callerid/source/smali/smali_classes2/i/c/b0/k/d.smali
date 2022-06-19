.class public abstract Li/c/b0/k/d;
.super Li/c/b0/b/v;
.source "SourceFile"

# interfaces
.implements Li/c/b0/b/c0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/v<",
        "TT;>;",
        "Li/c/b0/b/c0<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/v;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()Li/c/b0/k/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/k/d<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/b0/k/c;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Li/c/b0/k/c;

    invoke-direct {v0, p0}, Li/c/b0/k/c;-><init>(Li/c/b0/k/d;)V

    return-object v0
.end method
