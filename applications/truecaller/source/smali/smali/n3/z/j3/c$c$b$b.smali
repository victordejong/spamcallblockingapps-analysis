.class public final Ln3/z/j3/c$c$b$b;
.super Ln3/z/j3/c$c$b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/j3/c$c$b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
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
.field public final a:Ln3/z/j3/i;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ln3/z/j3/i<",
            "TT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ln3/z/j3/i;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ln3/z/j3/i<",
            "TT;>;)V"
        }
    .end annotation

    const-string v0, "producer"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, v0}, Ln3/z/j3/c$c$b;-><init>(Ls1/z/c/f;)V

    iput-object p1, p0, Ln3/z/j3/c$c$b$b;->a:Ln3/z/j3/i;

    return-void
.end method
