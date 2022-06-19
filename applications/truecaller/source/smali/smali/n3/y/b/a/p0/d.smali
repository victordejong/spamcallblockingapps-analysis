.class public final Ln3/y/b/a/p0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/p0/b;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T::",
        "Ln3/y/b/a/p0/e;",
        ">",
        "Ljava/lang/Object;",
        "Ln3/y/b/a/p0/b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/p0/b$a;


# direct methods
.method public constructor <init>(Ln3/y/b/a/p0/b$a;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/p0/d;->a:Ln3/y/b/a/p0/b$a;

    return-void
.end method


# virtual methods
.method public b()Ln3/y/b/a/p0/b$a;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/p0/d;->a:Ln3/y/b/a/p0/b$a;

    return-object v0
.end method

.method public c()Ln3/y/b/a/p0/e;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    const/4 v0, 0x0

    return-object v0
.end method

.method public d()V
    .locals 0

    return-void
.end method

.method public e()V
    .locals 0

    return-void
.end method

.method public getState()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
