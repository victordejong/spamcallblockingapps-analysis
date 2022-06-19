.class public Le/n/d/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/n/d/h;


# direct methods
.method public constructor <init>(Le/n/d/h;)V
    .locals 0

    .line 1
    iput-object p1, p0, Le/n/d/f;->a:Le/n/d/h;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Le/n/d/f;->a:Le/n/d/h;

    const/4 v1, 0x0

    iput-boolean v1, v0, Le/n/d/h;->f:Z

    .line 2
    invoke-virtual {v0}, Le/n/d/h;->b()V

    return-void
.end method
