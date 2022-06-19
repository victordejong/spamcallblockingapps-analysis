.class public Le/m/d/n/j/j/l0$a;
.super Le/m/d/n/j/j/j;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Le/m/d/n/j/j/l0;->newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic a:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Le/m/d/n/j/j/l0;Ljava/lang/Runnable;)V
    .locals 0

    .line 1
    iput-object p2, p0, Le/m/d/n/j/j/l0$a;->a:Ljava/lang/Runnable;

    invoke-direct {p0}, Le/m/d/n/j/j/j;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .locals 1

    .line 1
    iget-object v0, p0, Le/m/d/n/j/j/l0$a;->a:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    return-void
.end method
