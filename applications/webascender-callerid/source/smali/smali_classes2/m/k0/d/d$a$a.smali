.class final Lm/k0/d/d$a$a;
.super Lkotlin/w/c/l;
.source "SourceFile"

# interfaces
.implements Lkotlin/w/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lm/k0/d/d$a;->f(I)Ln/b0;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x18
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/w/c/l;",
        "Lkotlin/w/b/l<",
        "Ljava/io/IOException;",
        "Lkotlin/r;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic f:Lm/k0/d/d$a;


# direct methods
.method constructor <init>(Lm/k0/d/d$a;I)V
    .locals 0

    iput-object p1, p0, Lm/k0/d/d$a$a;->f:Lm/k0/d/d$a;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/w/c/l;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/io/IOException;)V
    .locals 1

    const-string v0, "it"

    invoke-static {p1, v0}, Lkotlin/w/c/k;->g(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object p1, p0, Lm/k0/d/d$a$a;->f:Lm/k0/d/d$a;

    iget-object p1, p1, Lm/k0/d/d$a;->d:Lm/k0/d/d;

    monitor-enter p1

    .line 2
    :try_start_0
    iget-object v0, p0, Lm/k0/d/d$a$a;->f:Lm/k0/d/d$a;

    invoke-virtual {v0}, Lm/k0/d/d$a;->c()V

    .line 3
    sget-object v0, Lkotlin/r;->a:Lkotlin/r;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 4
    monitor-exit p1

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p1

    throw v0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/io/IOException;

    invoke-virtual {p0, p1}, Lm/k0/d/d$a$a;->a(Ljava/io/IOException;)V

    sget-object p1, Lkotlin/r;->a:Lkotlin/r;

    return-object p1
.end method
