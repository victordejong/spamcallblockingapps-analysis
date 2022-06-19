.class public final Ln3/z/j3/c$c$b$c;
.super Ln3/z/j3/c$c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/j3/c$c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "c"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ln3/z/j3/c$c$b<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public final a:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field public final b:Lq3/a/w;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lq3/a/w<",
            "Ls1/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/Object;Lq3/a/w;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;",
            "Lq3/a/w<",
            "Ls1/s;",
            ">;)V"
        }
    .end annotation

    const-string v0, "delivered"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ln3/z/j3/c$c$b;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ln3/z/j3/c$c$b$c;->a:Ljava/lang/Object;

    iput-object p2, p0, Ln3/z/j3/c$c$b$c;->b:Lq3/a/w;

    return-void
.end method
