.class public final Lp3/a/l$a;
.super Lp3/a/b$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/l;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# instance fields
.field public final a:Lp3/a/b$a;

.field public final b:Lp3/a/o0;


# direct methods
.method public constructor <init>(Lp3/a/b$a;Lp3/a/o0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lp3/a/b$a;-><init>()V

    .line 2
    iput-object p1, p0, Lp3/a/l$a;->a:Lp3/a/b$a;

    .line 3
    iput-object p2, p0, Lp3/a/l$a;->b:Lp3/a/o0;

    return-void
.end method


# virtual methods
.method public a(Lp3/a/o0;)V
    .locals 2

    const-string v0, "headers"

    .line 1
    invoke-static {p1, v0}, Ln3/g0/y;->checkNotNull1(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 2
    new-instance v0, Lp3/a/o0;

    invoke-direct {v0}, Lp3/a/o0;-><init>()V

    .line 3
    iget-object v1, p0, Lp3/a/l$a;->b:Lp3/a/o0;

    invoke-virtual {v0, v1}, Lp3/a/o0;->f(Lp3/a/o0;)V

    .line 4
    invoke-virtual {v0, p1}, Lp3/a/o0;->f(Lp3/a/o0;)V

    .line 5
    iget-object p1, p0, Lp3/a/l$a;->a:Lp3/a/b$a;

    invoke-virtual {p1, v0}, Lp3/a/b$a;->a(Lp3/a/o0;)V

    return-void
.end method
