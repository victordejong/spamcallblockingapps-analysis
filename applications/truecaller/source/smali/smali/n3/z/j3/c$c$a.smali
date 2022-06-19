.class public final Ln3/z/j3/c$c$a;
.super Ln3/z/j3/c$c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/j3/c$c;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/z/j3/c$c<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Lq3/a/w2/d0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w2/d0<",
            "Ln3/z/j3/c$c$b$c<",
            "TT;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lq3/a/w2/d0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lq3/a/w2/d0<",
            "-",
            "Ln3/z/j3/c$c$b$c<",
            "TT;>;>;)V"
        }
    .end annotation

    const-string v0, "channel"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ln3/z/j3/c$c;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ln3/z/j3/c$c$a;->a:Lq3/a/w2/d0;

    return-void
.end method
