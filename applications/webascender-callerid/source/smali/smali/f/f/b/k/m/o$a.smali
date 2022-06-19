.class Lf/f/b/k/m/o$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/f/b/k/m/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "a"
.end annotation


# direct methods
.method public constructor <init>(Lf/f/b/k/m/o;Lf/f/b/k/e;Lf/f/b/d;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p2, Lf/f/b/k/e;->F:Lf/f/b/k/d;

    invoke-virtual {p3, p1}, Lf/f/b/d;->x(Ljava/lang/Object;)I

    .line 4
    iget-object p1, p2, Lf/f/b/k/e;->G:Lf/f/b/k/d;

    invoke-virtual {p3, p1}, Lf/f/b/d;->x(Ljava/lang/Object;)I

    .line 5
    iget-object p1, p2, Lf/f/b/k/e;->H:Lf/f/b/k/d;

    invoke-virtual {p3, p1}, Lf/f/b/d;->x(Ljava/lang/Object;)I

    .line 6
    iget-object p1, p2, Lf/f/b/k/e;->I:Lf/f/b/k/d;

    invoke-virtual {p3, p1}, Lf/f/b/d;->x(Ljava/lang/Object;)I

    .line 7
    iget-object p1, p2, Lf/f/b/k/e;->J:Lf/f/b/k/d;

    invoke-virtual {p3, p1}, Lf/f/b/d;->x(Ljava/lang/Object;)I

    return-void
.end method
