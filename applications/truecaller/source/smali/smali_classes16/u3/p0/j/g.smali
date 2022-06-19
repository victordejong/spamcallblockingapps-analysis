.class public final Lu3/p0/j/g;
.super Lu3/p0/f/a;
.source "SourceFile"


# instance fields
.field public final synthetic e:Lu3/p0/j/f$d;

.field public final synthetic f:Ls1/z/c/c0;


# direct methods
.method public constructor <init>(Ljava/lang/String;ZLjava/lang/String;ZLu3/p0/j/f$d;ZLs1/z/c/c0;Lu3/p0/j/t;Ls1/z/c/b0;Ls1/z/c/c0;)V
    .locals 0

    iput-object p5, p0, Lu3/p0/j/g;->e:Lu3/p0/j/f$d;

    iput-object p7, p0, Lu3/p0/j/g;->f:Ls1/z/c/c0;

    .line 1
    invoke-direct {p0, p3, p4}, Lu3/p0/f/a;-><init>(Ljava/lang/String;Z)V

    return-void
.end method


# virtual methods
.method public a()J
    .locals 3

    .line 1
    iget-object v0, p0, Lu3/p0/j/g;->e:Lu3/p0/j/f$d;

    iget-object v0, v0, Lu3/p0/j/f$d;->b:Lu3/p0/j/f;

    .line 2
    iget-object v1, v0, Lu3/p0/j/f;->b:Lu3/p0/j/f$c;

    .line 3
    iget-object v2, p0, Lu3/p0/j/g;->f:Ls1/z/c/c0;

    iget-object v2, v2, Ls1/z/c/c0;->a:Ljava/lang/Object;

    check-cast v2, Lu3/p0/j/t;

    invoke-virtual {v1, v0, v2}, Lu3/p0/j/f$c;->a(Lu3/p0/j/f;Lu3/p0/j/t;)V

    const-wide/16 v0, -0x1

    return-wide v0
.end method
