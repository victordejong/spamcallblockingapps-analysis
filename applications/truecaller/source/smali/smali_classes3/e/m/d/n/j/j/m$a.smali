.class public Le/m/d/n/j/j/m$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/d/n/j/j/m;-><init>(Ljava/util/concurrent/Executor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Le/m/d/n/j/j/m;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/m/d/n/j/j/m$a;->a:Le/m/d/n/j/j/m;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/m$a;->a:Le/m/d/n/j/j/m;

    .line 2
    iget-object v0, v0, Le/m/d/n/j/j/m;->d:Ljava/lang/ThreadLocal;

    .line 3
    sget-object v1, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    return-void
.end method
