.class public Ln3/b0/a/d$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Ln3/b0/a/d;->b(Ljava/util/List;Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/util/List;

.field public final synthetic b:Ljava/util/List;

.field public final synthetic c:I

.field public final synthetic d:Ljava/lang/Runnable;

.field public final synthetic e:Ln3/b0/a/d;


# direct methods
.method public constructor <init>(Ln3/b0/a/d;Ljava/util/List;Ljava/util/List;ILjava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/b0/a/d$a;->e:Ln3/b0/a/d;

    iput-object p2, p0, Ln3/b0/a/d$a;->a:Ljava/util/List;

    iput-object p3, p0, Ln3/b0/a/d$a;->b:Ljava/util/List;

    iput p4, p0, Ln3/b0/a/d$a;->c:I

    iput-object p5, p0, Ln3/b0/a/d$a;->d:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    new-instance v0, Ln3/b0/a/d$a$a;

    invoke-direct {v0, p0}, Ln3/b0/a/d$a$a;-><init>(Ln3/b0/a/d$a;)V

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1}, Ln3/b0/a/h;->a(Ln3/b0/a/h$b;Z)Ln3/b0/a/h$d;

    move-result-object v0

    .line 3
    iget-object v1, p0, Ln3/b0/a/d$a;->e:Ln3/b0/a/d;

    iget-object v1, v1, Ln3/b0/a/d;->c:Ljava/util/concurrent/Executor;

    new-instance v2, Ln3/b0/a/d$a$b;

    invoke-direct {v2, p0, v0}, Ln3/b0/a/d$a$b;-><init>(Ln3/b0/a/d$a;Ln3/b0/a/h$d;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return-void
.end method
