.class public final synthetic Ln3/y/b/a/k;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final a:Ljava/util/concurrent/CopyOnWriteArrayList;

.field public final b:Ln3/y/b/a/a$b;


# direct methods
.method public constructor <init>(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/y/b/a/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iput-object p2, p0, Ln3/y/b/a/k;->b:Ln3/y/b/a/a$b;

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    iget-object v0, p0, Ln3/y/b/a/k;->a:Ljava/util/concurrent/CopyOnWriteArrayList;

    iget-object v1, p0, Ln3/y/b/a/k;->b:Ln3/y/b/a/a$b;

    .line 1
    invoke-static {v0, v1}, Ln3/y/b/a/t;->e(Ljava/util/concurrent/CopyOnWriteArrayList;Ln3/y/b/a/a$b;)V

    return-void
.end method
