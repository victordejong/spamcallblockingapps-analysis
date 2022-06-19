.class public final Ln3/y/b/a/t0/r$a;
.super Ln3/y/b/a/l0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ln3/y/b/a/t0/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final b:Ljava/lang/Object;


# direct methods
.method public constructor <init>(Ljava/lang/Object;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ln3/y/b/a/l0;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/y/b/a/t0/r$a;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)I
    .locals 1

    .line 1
    sget-object v0, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    if-ne p1, v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    :cond_0
    const/4 p1, -0x1

    :goto_0
    return p1
.end method

.method public g(ILn3/y/b/a/l0$b;Z)Ln3/y/b/a/l0$b;
    .locals 8

    const/4 p1, 0x0

    .line 1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    sget-object v2, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    const/4 v3, 0x0

    const-wide v4, -0x7fffffffffffffffL    # -4.9E-324

    const-wide/16 v6, 0x0

    move-object v0, p2

    .line 2
    invoke-virtual/range {v0 .. v7}, Ln3/y/b/a/l0$b;->f(Ljava/lang/Object;Ljava/lang/Object;IJJ)Ln3/y/b/a/l0$b;

    return-object p2
.end method

.method public i()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public l(I)Ljava/lang/Object;
    .locals 0

    .line 1
    sget-object p1, Ln3/y/b/a/t0/r$b;->d:Ljava/lang/Object;

    return-object p1
.end method

.method public n(ILn3/y/b/a/l0$c;J)Ln3/y/b/a/l0$c;
    .locals 18

    move-object/from16 v0, p2

    move-object/from16 v15, p0

    .line 1
    iget-object v1, v15, Ln3/y/b/a/t0/r$a;->b:Ljava/lang/Object;

    const/4 v2, 0x0

    const-wide v3, -0x7fffffffffffffffL    # -4.9E-324

    const-wide v5, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v7, 0x0

    const/4 v8, 0x1

    const-wide/16 v9, 0x0

    const-wide v11, -0x7fffffffffffffffL    # -4.9E-324

    const/4 v13, 0x0

    const/4 v14, 0x0

    const-wide/16 v16, 0x0

    move-wide/from16 v15, v16

    invoke-virtual/range {v0 .. v16}, Ln3/y/b/a/l0$c;->a(Ljava/lang/Object;Ljava/lang/Object;JJZZJJIIJ)Ln3/y/b/a/l0$c;

    return-object p2
.end method

.method public o()I
    .locals 1

    const/4 v0, 0x1

    return v0
.end method
