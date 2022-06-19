.class public final Ln3/y/b/a/t0/q0/d$c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/q0/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation


# instance fields
.field public a:Ln3/y/b/a/t0/p0/b;

.field public b:Z

.field public c:Landroid/net/Uri;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Ln3/y/b/a/t0/q0/d$c;->a:Ln3/y/b/a/t0/p0/b;

    const/4 v1, 0x0

    .line 3
    iput-boolean v1, p0, Ln3/y/b/a/t0/q0/d$c;->b:Z

    .line 4
    iput-object v0, p0, Ln3/y/b/a/t0/q0/d$c;->c:Landroid/net/Uri;

    return-void
.end method
