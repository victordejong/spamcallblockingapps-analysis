.class public Ln3/c0/o$e;
.super Ln3/c0/o$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/c0/o;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "e"
.end annotation


# instance fields
.field public final b:Ln3/c0/o;

.field public final c:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Ln3/c0/o$c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/c0/o;Ln3/c0/o$c;)V
    .locals 1

    .line 1
    iget-object v0, p2, Ln3/c0/o$c;->a:[Ljava/lang/String;

    invoke-direct {p0, v0}, Ln3/c0/o$c;-><init>([Ljava/lang/String;)V

    .line 2
    iput-object p1, p0, Ln3/c0/o$e;->b:Ln3/c0/o;

    .line 3
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object p1, p0, Ln3/c0/o$e;->c:Ljava/lang/ref/WeakReference;

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Ln3/c0/o$e;->c:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ln3/c0/o$c;

    if-nez v0, :cond_0

    .line 2
    iget-object p1, p0, Ln3/c0/o$e;->b:Ln3/c0/o;

    invoke-virtual {p1, p0}, Ln3/c0/o;->d(Ln3/c0/o$c;)V

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1}, Ln3/c0/o$c;->a(Ljava/util/Set;)V

    :goto_0
    return-void
.end method
