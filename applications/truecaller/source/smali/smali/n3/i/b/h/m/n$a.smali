.class public Ln3/i/b/h/m/n$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/i/b/h/m/n;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Ln3/i/b/h/m/n;Ln3/i/b/h/d;Ln3/i/b/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p2, Ln3/i/b/h/d;->F:Ln3/i/b/h/c;

    invoke-virtual {p3, p1}, Ln3/i/b/d;->o(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p2, Ln3/i/b/h/d;->G:Ln3/i/b/h/c;

    invoke-virtual {p3, p1}, Ln3/i/b/d;->o(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p2, Ln3/i/b/h/d;->H:Ln3/i/b/h/c;

    invoke-virtual {p3, p1}, Ln3/i/b/d;->o(Ljava/lang/Object;)I

    .line 6
    iget-object p1, p2, Ln3/i/b/h/d;->I:Ln3/i/b/h/c;

    invoke-virtual {p3, p1}, Ln3/i/b/d;->o(Ljava/lang/Object;)I

    .line 7
    iget-object p1, p2, Ln3/i/b/h/d;->J:Ln3/i/b/h/c;

    invoke-virtual {p3, p1}, Ln3/i/b/d;->o(Ljava/lang/Object;)I

    return-void
.end method
