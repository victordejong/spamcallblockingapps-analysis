.class public final Ln3/y/b/a/t0/r$b;
.super Ln3/y/b/a/t0/o;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "b"
.end annotation


# static fields
.field public static final d:Ljava/lang/Object;


# instance fields
.field public final c:Ljava/lang/Object;


# direct methods
.method public static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ln3/y/b/a/l0;Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Ln3/y/b/a/t0/o;-><init>(Ln3/y/b/a/l0;)V

    .line 2
    iput-object p2, p0, Ln3/y/b/a/t0/r$b;->c:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 2

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/o;->b:Ln3/y/b/a/l0;

    sget-object v1, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    invoke-virtual {v1, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object p1, p0, Ln3/y/b/a/t0/r$b;->c:Ljava/lang/Object;

    :cond_0
    invoke-virtual {v0, p1}, Ln3/y/b/a/l0;->b(Ljava/lang/Object;)I

    move-result p1

    return p1
.end method

.method public g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/o;->b:Ln3/y/b/a/l0;

    invoke-virtual {v0, p1, p2, p3}, Ln3/y/b/a/l0;->g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;

    .line 2
    iget-object p1, p2, Ln3/y/b/a/l0$b;->b:Ljava/lang/Object;

    iget-object p3, p0, Ln3/y/b/a/t0/r$b;->c:Ljava/lang/Object;

    invoke-static {p1, p3}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    sget-object p1, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    iput-object p1, p2, Ln3/y/b/a/l0$b;->b:Ljava/lang/Object;

    :cond_0
    return-object p2
.end method

.method public l(I)Ljava/lang/Object;
    .locals 1

    .line 1
    iget-object v0, p0, Ln3/y/b/a/t0/o;->b:Ln3/y/b/a/l0;

    invoke-virtual {v0, p1}, Ln3/y/b/a/l0;->l(I)Ljava/lang/Object;

    move-result-object p1

    .line 2
    iget-object v0, p0, Ln3/y/b/a/t0/r$b;->c:Ljava/lang/Object;

    invoke-static {p1, v0}, Ln3/y/b/a/x0/x;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p1, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    :cond_0
    return-object p1
.end method
