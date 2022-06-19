.class Lf/f/b/d$b;
.super Lf/f/b/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lf/f/b/d;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# direct methods
.method public constructor <init>(Lf/f/b/d;Lf/f/b/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lf/f/b/b;-><init>()V

    .line 2
    new-instance p1, Lf/f/b/j;

    invoke-direct {p1, p0, p2}, Lf/f/b/j;-><init>(Lf/f/b/b;Lf/f/b/c;)V

    iput-object p1, p0, Lf/f/b/b;->e:Lf/f/b/b$a;

    return-void
.end method
