.class public abstract Ln3/y/b/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/y/b/a/f0;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/y/b/a/a$b;,
        Ln3/y/b/a/a$a;
    }
.end annotation


# instance fields
.field public final a:Ln3/y/b/a/l0$c;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ln3/y/b/a/l0$c;

    invoke-direct {v0}, Ln3/y/b/a/l0$c;-><init>()V

    iput-object v0, p0, Ln3/y/b/a/a;->a:Ln3/y/b/a/l0$c;

    return-void
.end method
