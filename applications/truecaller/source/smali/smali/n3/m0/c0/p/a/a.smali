.class public Ln3/m0/c0/p/a/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Ln3/m0/c0/s/p;

.field public final synthetic b:Ln3/m0/c0/p/a/b;


# direct methods
.method public constructor <init>(Ln3/m0/c0/p/a/b;Ln3/m0/c0/s/p;)V
    .locals 0

    .line 1
    iput-object p1, p0, Ln3/m0/c0/p/a/a;->b:Ln3/m0/c0/p/a/b;

    iput-object p2, p0, Ln3/m0/c0/p/a/a;->a:Ln3/m0/c0/s/p;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .line 1
    invoke-static {}, Ln3/m0/p;->c()Ln3/m0/p;

    move-result-object v0

    sget-object v1, Ln3/m0/c0/p/a/b;->d:Ljava/lang/String;

    const/4 v2, 0x1

    new-array v3, v2, [Ljava/lang/Object;

    iget-object v4, p0, Ln3/m0/c0/p/a/a;->a:Ln3/m0/c0/s/p;

    iget-object v4, v4, Ln3/m0/c0/s/p;->a:Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v4, v3, v5

    const-string v4, "Scheduling work %s"

    invoke-static {v4, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    new-array v4, v5, [Ljava/lang/Throwable;

    invoke-virtual {v0, v1, v3, v4}, Ln3/m0/p;->a(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Throwable;)V

    .line 2
    iget-object v0, p0, Ln3/m0/c0/p/a/a;->b:Ln3/m0/c0/p/a/b;

    iget-object v0, v0, Ln3/m0/c0/p/a/b;->a:Ln3/m0/c0/p/a/c;

    new-array v1, v2, [Ln3/m0/c0/s/p;

    iget-object v2, p0, Ln3/m0/c0/p/a/a;->a:Ln3/m0/c0/s/p;

    aput-object v2, v1, v5

    invoke-virtual {v0, v1}, Ln3/m0/c0/p/a/c;->e([Ln3/m0/c0/s/p;)V

    return-void
.end method
