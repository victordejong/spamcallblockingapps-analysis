.class Lio/realm/z$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lio/realm/z;->b(Lio/realm/b0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic f:Ljava/io/File;

.field final synthetic g:Lio/realm/b0;

.field final synthetic h:Z

.field final synthetic i:Ljava/lang/String;


# direct methods
.method constructor <init>(Ljava/io/File;Lio/realm/b0;ZLjava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lio/realm/z$a;->f:Ljava/io/File;

    iput-object p2, p0, Lio/realm/z$a;->g:Lio/realm/b0;

    iput-boolean p3, p0, Lio/realm/z$a;->h:Z

    iput-object p4, p0, Lio/realm/z$a;->i:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lio/realm/z$a;->f:Ljava/io/File;

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lio/realm/z$a;->g:Lio/realm/b0;

    invoke-virtual {v0}, Lio/realm/b0;->c()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lio/realm/z$a;->f:Ljava/io/File;

    invoke-static {v0, v1}, Lio/realm/z;->a(Ljava/lang/String;Ljava/io/File;)V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lio/realm/z$a;->h:Z

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lio/realm/z$a;->g:Lio/realm/b0;

    .line 5
    invoke-virtual {v0}, Lio/realm/b0;->u()Z

    move-result v0

    .line 6
    invoke-static {v0}, Lio/realm/internal/i;->b(Z)Lio/realm/internal/i;

    move-result-object v0

    iget-object v1, p0, Lio/realm/z$a;->g:Lio/realm/b0;

    .line 7
    invoke-virtual {v0, v1}, Lio/realm/internal/i;->f(Lio/realm/b0;)Ljava/lang/String;

    move-result-object v0

    .line 8
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 9
    iget-object v0, p0, Lio/realm/z$a;->i:Ljava/lang/String;

    invoke-static {v0, v1}, Lio/realm/z;->a(Ljava/lang/String;Ljava/io/File;)V

    :cond_1
    return-void
.end method
