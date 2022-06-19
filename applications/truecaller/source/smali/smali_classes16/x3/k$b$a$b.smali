.class public Lx3/k$b$a$b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lx3/k$b$a;->onFailure(Lx3/b;Ljava/lang/Throwable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Throwable;

.field public final synthetic b:Lx3/k$b$a;


# direct methods
.method public constructor <init>(Lx3/k$b$a;Ljava/lang/Throwable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lx3/k$b$a$b;->b:Lx3/k$b$a;

    iput-object p2, p0, Lx3/k$b$a$b;->a:Ljava/lang/Throwable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lx3/k$b$a$b;->b:Lx3/k$b$a;

    iget-object v1, v0, Lx3/k$b$a;->a:Lx3/d;

    iget-object v0, v0, Lx3/k$b$a;->b:Lx3/k$b;

    iget-object v2, p0, Lx3/k$b$a$b;->a:Ljava/lang/Throwable;

    invoke-interface {v1, v0, v2}, Lx3/d;->onFailure(Lx3/b;Ljava/lang/Throwable;)V

    return-void
.end method
