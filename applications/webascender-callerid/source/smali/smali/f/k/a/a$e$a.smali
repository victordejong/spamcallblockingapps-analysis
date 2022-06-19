.class Lf/k/a/a$e$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/Choreographer$FrameCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lf/k/a/a$e;-><init>(Lf/k/a/a$a;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lf/k/a/a$e;


# direct methods
.method constructor <init>(Lf/k/a/a$e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lf/k/a/a$e$a;->a:Lf/k/a/a$e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public doFrame(J)V
    .locals 0

    .line 1
    iget-object p1, p0, Lf/k/a/a$e$a;->a:Lf/k/a/a$e;

    iget-object p1, p1, Lf/k/a/a$c;->a:Lf/k/a/a$a;

    invoke-virtual {p1}, Lf/k/a/a$a;->a()V

    return-void
.end method
