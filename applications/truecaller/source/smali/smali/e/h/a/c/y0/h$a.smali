.class public Le/h/a/c/y0/h$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/h/a/c/y0/h;->execute(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;

.field public final synthetic b:Le/h/a/c/y0/h;


# direct methods
.method public constructor <init>(Le/h/a/c/y0/h;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/h/a/c/y0/h$a;->b:Le/h/a/c/y0/h;

    iput-object p2, p0, Le/h/a/c/y0/h$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Le/h/a/c/y0/h$a;->b:Le/h/a/c/y0/h;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->getId()J

    move-result-wide v1

    .line 2
    iput-wide v1, v0, Le/h/a/c/y0/h;->a:J

    .line 3
    iget-object v0, p0, Le/h/a/c/y0/h$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
