.class public final Ls1/a/a/a/v0/d/a/d0/n/j$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ls1/a/a/a/v0/d/a/d0/n/j;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Ls1/a/a/a/v0/f/e;

.field public final b:Ls1/a/a/a/v0/d/a/f0/g;


# direct methods
.method public constructor <init>(Ls1/a/a/a/v0/f/e;Ls1/a/a/a/v0/d/a/f0/g;)V
    .locals 1

    const-string v0, "name"

    invoke-static {p1, v0}, Ls1/z/c/l;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ls1/a/a/a/v0/d/a/d0/n/j$a;->a:Ls1/a/a/a/v0/f/e;

    iput-object p2, p0, Ls1/a/a/a/v0/d/a/d0/n/j$a;->b:Ls1/a/a/a/v0/d/a/f0/g;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 1

    .line 1
    instance-of v0, p1, Ls1/a/a/a/v0/d/a/d0/n/j$a;

    if-eqz v0, :cond_0

    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/j$a;->a:Ls1/a/a/a/v0/f/e;

    check-cast p1, Ls1/a/a/a/v0/d/a/d0/n/j$a;

    iget-object p1, p1, Ls1/a/a/a/v0/d/a/d0/n/j$a;->a:Ls1/a/a/a/v0/f/e;

    invoke-static {v0, p1}, Ls1/z/c/l;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method

.method public hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Ls1/a/a/a/v0/d/a/d0/n/j$a;->a:Ls1/a/a/a/v0/f/e;

    invoke-virtual {v0}, Ls1/a/a/a/v0/f/e;->hashCode()I

    move-result v0

    return v0
.end method
