.class public final Ln3/z/j3/c$a$e;
.super Ls1/w/k/a/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/z/j3/c$a;->k(Ln3/z/j3/c$c;Ls1/w/d;)Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation runtime Ls1/w/k/a/e;
    c = "androidx.paging.multicast.ChannelManager$Actor"
    f = "ChannelManager.kt"
    l = {
        0x67,
        0x68,
        0x69
    }
    m = "handle"
.end annotation


# instance fields
.field public synthetic d:Ljava/lang/Object;

.field public e:I

.field public final synthetic f:Ln3/z/j3/c$a;


# direct methods
.method public constructor <init>(Ln3/z/j3/c$a;Ls1/w/d;)V
    .locals 0

    iput-object p1, p0, Ln3/z/j3/c$a$e;->f:Ln3/z/j3/c$a;

    invoke-direct {p0, p2}, Ls1/w/k/a/c;-><init>(Ls1/w/d;)V

    return-void
.end method


# virtual methods
.method public final s(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iput-object p1, p0, Ln3/z/j3/c$a$e;->d:Ljava/lang/Object;

    iget p1, p0, Ln3/z/j3/c$a$e;->e:I

    const/high16 v0, -0x80000000

    or-int/2addr p1, v0

    iput p1, p0, Ln3/z/j3/c$a$e;->e:I

    iget-object p1, p0, Ln3/z/j3/c$a$e;->f:Ln3/z/j3/c$a;

    const/4 v0, 0x0

    invoke-virtual {p1, v0, p0}, Ln3/z/j3/c$a;->k(Ln3/z/j3/c$c;Ls1/w/d;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method
