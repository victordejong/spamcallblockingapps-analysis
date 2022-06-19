.class public Lx3/y$a;
.super Lu3/j0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lx3/y;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "a"
.end annotation


# instance fields
.field public final b:Lu3/j0;

.field public final c:Lu3/c0;


# direct methods
.method public constructor <init>(Lu3/j0;Lu3/c0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lu3/j0;-><init>()V

    .line 2
    iput-object p1, p0, Lx3/y$a;->b:Lu3/j0;

    .line 3
    iput-object p2, p0, Lx3/y$a;->c:Lu3/c0;

    return-void
.end method


# virtual methods
.method public a()J
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx3/y$a;->b:Lu3/j0;

    invoke-virtual {v0}, Lu3/j0;->a()J

    move-result-wide v0

    return-wide v0
.end method

.method public b()Lu3/c0;
    .locals 1

    .line 1
    iget-object v0, p0, Lx3/y$a;->c:Lu3/c0;

    return-object v0
.end method

.method public c(Lv3/g;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lx3/y$a;->b:Lu3/j0;

    invoke-virtual {v0, p1}, Lu3/j0;->c(Lv3/g;)V

    return-void
.end method
