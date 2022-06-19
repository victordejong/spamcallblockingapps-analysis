.class public abstract Li/c/b0/i/a;
.super Li/c/b0/b/l;
.source "SourceFile"

# interfaces
.implements Lo/a/b;
.implements Lo/a/a;
.implements Li/c/b0/b/o;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Li/c/b0/b/l<",
        "TT;>;",
        "Ljava/lang/Object<",
        "TT;TT;>;",
        "Li/c/b0/b/o<",
        "TT;>;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Li/c/b0/b/l;-><init>()V

    return-void
.end method


# virtual methods
.method public final x()Li/c/b0/i/a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Li/c/b0/i/a<",
            "TT;>;"
        }
    .end annotation

    .line 1
    instance-of v0, p0, Li/c/b0/i/b;

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Li/c/b0/i/b;

    invoke-direct {v0, p0}, Li/c/b0/i/b;-><init>(Li/c/b0/i/a;)V

    return-object v0
.end method
