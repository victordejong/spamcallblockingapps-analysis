.class public final synthetic Le/a/d0/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic a:Le/a/d0/f0;


# direct methods
.method public synthetic constructor <init>(Le/a/d0/f0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Le/a/d0/d;->a:Le/a/d0/f0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    iget-object v0, p0, Le/a/d0/d;->a:Le/a/d0/f0;

    .line 1
    iget-object v1, v0, Le/a/d0/f0;->C:Le/a/d0/v;

    if-eqz v1, :cond_0

    iget v2, v1, Le/a/d0/v;->i:I

    if-nez v2, :cond_0

    iget-boolean v2, v1, Le/a/d0/v;->j:Z

    if-nez v2, :cond_0

    const/4 v2, 0x3

    .line 2
    iput v2, v1, Le/a/d0/v;->i:I

    .line 3
    invoke-virtual {v0}, Le/a/d0/f0;->n()V

    :cond_0
    return-void
.end method
