.class public final Ln3/e/b/j1/p1$b;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/e/b/j1/p1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# instance fields
.field public final a:Ln3/e/b/j1/j1;

.field public b:Z

.field public c:Z


# direct methods
.method public constructor <init>(Ln3/e/b/j1/j1;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Ln3/e/b/j1/p1$b;->b:Z

    .line 3
    iput-boolean v0, p0, Ln3/e/b/j1/p1$b;->c:Z

    .line 4
    iput-object p1, p0, Ln3/e/b/j1/p1$b;->a:Ln3/e/b/j1/j1;

    return-void
.end method
