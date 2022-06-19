.class public Lp3/a/n1/g$g;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lp3/a/n1/t2$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lp3/a/n1/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "g"
.end annotation


# instance fields
.field public final a:Ljava/lang/Runnable;

.field public b:Z

.field public final synthetic c:Lp3/a/n1/g;


# direct methods
.method public constructor <init>(Lp3/a/n1/g;Ljava/lang/Runnable;Lp3/a/n1/g$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lp3/a/n1/g$g;->c:Lp3/a/n1/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lp3/a/n1/g$g;->b:Z

    .line 3
    iput-object p2, p0, Lp3/a/n1/g$g;->a:Ljava/lang/Runnable;

    return-void
.end method


# virtual methods
.method public next()Ljava/io/InputStream;
    .locals 1

    .line 1
    iget-boolean v0, p0, Lp3/a/n1/g$g;->b:Z

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lp3/a/n1/g$g;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lp3/a/n1/g$g;->b:Z

    .line 4
    :cond_0
    iget-object v0, p0, Lp3/a/n1/g$g;->c:Lp3/a/n1/g;

    .line 5
    iget-object v0, v0, Lp3/a/n1/g;->b:Lp3/a/n1/h;

    .line 6
    iget-object v0, v0, Lp3/a/n1/h;->c:Ljava/util/Queue;

    invoke-interface {v0}, Ljava/util/Queue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/InputStream;

    return-object v0
.end method
