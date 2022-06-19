.class public abstract Ln3/y/b/a/q0/r/d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/q0/r/d$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/q0/p;


# direct methods
.method public constructor <init>(Ln3/y/b/a/q0/p;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/q0/r/d;->a:Ln3/y/b/a/q0/p;

    return-void
.end method


# virtual methods
.method public final a(Ln3/y/b/a/x0/m;J)Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Ln3/y/b/a/q0/r/d;->b(Ln3/y/b/a/x0/m;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, p1, p2, p3}, Ln3/y/b/a/q0/r/d;->c(Ln3/y/b/a/x0/m;J)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public abstract b(Ln3/y/b/a/x0/m;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation
.end method

.method public abstract c(Ln3/y/b/a/x0/m;J)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ln3/y/b/a/c0;
        }
    .end annotation
.end method
