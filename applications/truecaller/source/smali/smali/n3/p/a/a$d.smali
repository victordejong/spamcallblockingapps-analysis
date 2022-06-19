.class public Ln3/p/a/a$d;
.super Ln3/p/a/a$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/p/a/a;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "d"
.end annotation


# instance fields
.field public final b:Landroid/view/Choreographer;

.field public final c:Landroid/view/Choreographer$FrameCallback;


# direct methods
.method public constructor <init>(Ln3/p/a/a$a;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/p/a/a$c;-><init>(Ln3/p/a/a$a;)V

    .line 2
    invoke-static {}, Landroid/view/Choreographer;->getInstance()Landroid/view/Choreographer;

    move-result-object p1

    iput-object p1, p0, Ln3/p/a/a$d;->b:Landroid/view/Choreographer;

    .line 3
    new-instance p1, Ln3/p/a/a$d$a;

    invoke-direct {p1, p0}, Ln3/p/a/a$d$a;-><init>(Ln3/p/a/a$d;)V

    iput-object p1, p0, Ln3/p/a/a$d;->c:Landroid/view/Choreographer$FrameCallback;

    return-void
.end method
