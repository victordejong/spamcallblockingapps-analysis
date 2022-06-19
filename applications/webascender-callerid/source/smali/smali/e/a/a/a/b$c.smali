.class Le/a/a/a/b$c;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Le/a/a/a/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "c"
.end annotation


# instance fields
.field final f:I

.field final g:Landroid/os/Bundle;

.field final synthetic h:Le/a/a/a/b;


# direct methods
.method constructor <init>(Le/a/a/a/b;ILandroid/os/Bundle;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/a/a/a/b$c;->h:Le/a/a/a/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput p2, p0, Le/a/a/a/b$c;->f:I

    .line 3
    iput-object p3, p0, Le/a/a/a/b$c;->g:Landroid/os/Bundle;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/a/a/a/b$c;->h:Le/a/a/a/b;

    iget v1, p0, Le/a/a/a/b$c;->f:I

    iget-object v2, p0, Le/a/a/a/b$c;->g:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Le/a/a/a/b;->a(ILandroid/os/Bundle;)V

    return-void
.end method
