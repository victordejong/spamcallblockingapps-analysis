.class Le/a/a/a/b$b;
.super Le/a/a/a/a$a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "b"
.end annotation


# instance fields
.field final synthetic a:Le/a/a/a/b;


# direct methods
.method constructor <init>(Le/a/a/a/b;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/a/b$b;->a:Le/a/a/a/b;

    invoke-direct {p0}, Le/a/a/a/a$a;-><init>()V

    return-void
.end method


# virtual methods
.method public G2(ILandroid/os/Bundle;)V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/a/b$b;->a:Le/a/a/a/b;

    iget-object v1, v0, Le/a/a/a/b;->f:Landroid/os/Handler;

    if-eqz v1, :cond_0

    .line 2
    new-instance v2, Le/a/a/a/b$c;

    invoke-direct {v2, v0, p1, p2}, Le/a/a/a/b$c;-><init>(Le/a/a/a/b;ILandroid/os/Bundle;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 3
    :cond_0
    invoke-virtual {v0, p1, p2}, Le/a/a/a/b;->a(ILandroid/os/Bundle;)V

    :goto_0
    return-void
.end method
