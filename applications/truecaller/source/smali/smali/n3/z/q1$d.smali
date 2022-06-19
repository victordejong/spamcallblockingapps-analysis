.class public abstract Ln3/z/q1$d;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/z/q1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "d"
.end annotation


# instance fields
.field public a:Ln3/z/r0;

.field public b:Ln3/z/r0;

.field public c:Ln3/z/r0;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Ln3/z/r0$c;->c:Ln3/z/r0$c;

    iput-object v0, p0, Ln3/z/q1$d;->a:Ln3/z/r0;

    .line 3
    iput-object v0, p0, Ln3/z/q1$d;->b:Ln3/z/r0;

    .line 4
    iput-object v0, p0, Ln3/z/q1$d;->c:Ln3/z/r0;

    return-void
.end method


# virtual methods
.method public abstract a(Ln3/z/t0;Ln3/z/r0;)V
.end method

.method public final b(Ln3/z/t0;Ln3/z/r0;)V
    .locals 2

    const-string v0, "type"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "state"

    invoke-static {p2, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p1}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    if-eqz v0, :cond_4

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v0, p0, Ln3/z/q1$d;->c:Ln3/z/r0;

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    iput-object p2, p0, Ln3/z/q1$d;->c:Ln3/z/r0;

    goto :goto_0

    .line 4
    :cond_2
    iget-object v0, p0, Ln3/z/q1$d;->b:Ln3/z/r0;

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3

    return-void

    .line 5
    :cond_3
    iput-object p2, p0, Ln3/z/q1$d;->b:Ln3/z/r0;

    goto :goto_0

    .line 6
    :cond_4
    iget-object v0, p0, Ln3/z/q1$d;->a:Ln3/z/r0;

    invoke-static {v0, p2}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    return-void

    .line 7
    :cond_5
    iput-object p2, p0, Ln3/z/q1$d;->a:Ln3/z/r0;

    .line 8
    :goto_0
    invoke-virtual {p0, p1, p2}, Ln3/z/q1$d;->a(Ln3/z/t0;Ln3/z/r0;)V

    return-void
.end method
