.class public Ln3/k/f/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ln3/k/f/n$a;
    }
.end annotation


# instance fields
.field public a:Ljava/lang/String;

.field public b:I


# direct methods
.method public constructor <init>(Ljava/lang/String;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Ln3/k/f/n;->a:Ljava/lang/String;

    .line 3
    iput p2, p0, Ln3/k/f/n;->b:I

    return-void
.end method


# virtual methods
.method public newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 3

    .line 1
    new-instance v0, Ln3/k/f/n$a;

    iget-object v1, p0, Ln3/k/f/n;->a:Ljava/lang/String;

    iget v2, p0, Ln3/k/f/n;->b:I

    invoke-direct {v0, p1, v1, v2}, Ln3/k/f/n$a;-><init>(Ljava/lang/Runnable;Ljava/lang/String;I)V

    return-object v0
.end method
