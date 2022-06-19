.class public Ln3/c0/z$c;
.super Ln3/c0/o$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/c0/z;-><init>(Ln3/c0/q;Ln3/c0/n;ZLjava/util/concurrent/Callable;[Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic b:Ln3/c0/z;


# direct methods
.method public constructor <init>(Ln3/c0/z;[Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/c0/z$c;->b:Ln3/c0/z;

    invoke-direct {p0, p2}, Ln3/c0/o$c;-><init>([Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/util/Set;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Set<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {}, Ln3/c/a/a/a;->d()Ln3/c/a/a/a;

    move-result-object p1

    iget-object v0, p0, Ln3/c0/z$c;->b:Ln3/c0/z;

    iget-object v0, v0, Ln3/c0/z;->u:Ljava/lang/Runnable;

    .line 2
    invoke-virtual {p1}, Ln3/c/a/a/a;->b()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {p1, v0}, Ln3/c/a/a/a;->c(Ljava/lang/Runnable;)V

    :goto_0
    return-void
.end method
