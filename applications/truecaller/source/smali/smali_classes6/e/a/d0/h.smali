.class public final synthetic Le/a/d0/h;
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

    iput-object p1, p0, Le/a/d0/h;->a:Le/a/d0/f0;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    iget-object v0, p0, Le/a/d0/h;->a:Le/a/d0/f0;

    .line 1
    invoke-virtual {v0}, Le/a/d0/f0;->h()V

    return-void
.end method
