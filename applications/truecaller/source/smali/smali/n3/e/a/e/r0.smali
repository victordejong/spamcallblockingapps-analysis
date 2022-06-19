.class public final synthetic Ln3/e/a/e/r0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ln3/h/a/d;


# instance fields
.field public final synthetic a:Ln3/e/a/e/e2;


# direct methods
.method public synthetic constructor <init>(Ln3/e/a/e/e2;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ln3/e/a/e/r0;->a:Ln3/e/a/e/e2;

    return-void
.end method


# virtual methods
.method public final a(Ln3/h/a/b;)Ljava/lang/Object;
    .locals 2

    iget-object v0, p0, Ln3/e/a/e/r0;->a:Ln3/e/a/e/e2;

    .line 1
    iput-object p1, v0, Ln3/e/a/e/e2;->r:Ln3/h/a/b;

    .line 2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "StartStreamingFuture[session="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, "]"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method
