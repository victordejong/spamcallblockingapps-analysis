.class public Ln3/p/a/a$d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/p/a/a$d;-><init>(Ln3/p/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ln3/p/a/a$d;


# direct methods
.method public constructor <init>(Ln3/p/a/a$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/p/a/a$d$a;->a:Ln3/p/a/a$d;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Ln3/p/a/a$d$a;->a:Ln3/p/a/a$d;

    iget-object p1, p1, Ln3/p/a/a$c;->a:Ln3/p/a/a$a;

    invoke-virtual {p1}, Ln3/p/a/a$a;->a()V

    return-void
.end method
